#include <chrono>
#include <cmath>
#include <cstring>
#include <ctime>
#include <fstream>
#include <iostream>


#define likely(x)       __builtin_expect((x), 1)
#define unlikely(x)     __builtin_expect((x), 0)

const float default_benchmark_render_time = 400.0f;
const int play_frequency_hz = 48000;
const float inverted_play_frequency = (1.0f / play_frequency_hz);
const int max_samples = 8;

inline float clampf(float v, float minv, float maxv)
{
  if (unlikely(v < minv))
    return minv;
  else if (unlikely(v > maxv))
    return maxv;
  return v;
}

inline float lerpf(float a, float b, float t)
{
  return (b - a) * t + a;
}

inline float sign(float x)
{
  return x > 0.0f ? 1.0f : -1.0f;
}

inline float sqr(float x)
{
  return x * x;
}


//////////////////////////////////////////////////////////////////////////////////////////////////


static float samples[max_samples] = {0, 1000, 10000, 23000, 32000, -2000, -32000, -16000};

inline float get_sample(float pos)
{
  float p = (pos * max_samples);
  unsigned i0 = unsigned(p) & (max_samples - 1);
  unsigned i1 = (i0 + 1) & (max_samples - 1);
  return lerpf(samples[i0], samples[i1], p - i0) * (1.0f / 32768.0f);
}

//////////////////////////////////////////////////////////////////////////////////////////////////

struct Granula
{
  float t;
  float speed;
  float envTime;
  float amp;
};


template<int MAX_GRANULAS> struct GSynth
{
  Granula granulas[MAX_GRANULAS];

  unsigned int seed;
  float toneFreq;
  float timeAdvance;
  float amp;
  float phaseRandom;
  float speedRandom;
  float bias;
  float envAdvanceMul;
  float shutterAdvance;
  float shutterPos;
  float shutterDepth;
  float prevVal;

  GSynth()
  {
    reset();
  }

  void reset()
  {
    memset(this, 0, sizeof(*this));

    for (int i = 0; i < MAX_GRANULAS; i++)
    {
      granulas[i].t = 0.0f;
      granulas[i].speed = 1.0f;
      granulas[i].amp = 0.0f;
      granulas[i].envTime = 1.0f - i * (1.0f / MAX_GRANULAS);
      nextEnv(granulas[i], i, 0.0f);
    }

    seed = 12345;
  }

  float rand01()
  {
    seed = seed * 2014013u + 2531011u;
    return float((seed >> 16) & 0x7FFF) * (1.0f / 32768.0f);
  }

  float granulaEnv(float x)
  {
    return fabsf(1.0f - fabsf(1.0f - x * 2.0f));
  }

  void nextEnv(Granula & g, int granula_index, float reference_t)
  {
    g.envTime = g.envTime - int(g.envTime);
    g.t = rand01() * phaseRandom + reference_t;
    g.t = g.t - int(g.t);
    g.speed = 1.0f + (rand01() - 0.5f) * speedRandom;
    g.amp = 1.0f;
    if ((granula_index & 1) == 0)
    {
      g.speed *= 2.0f;
      g.amp = -g.amp;
    }
  }

  float hat01(float x)
  {
    x = x * 2.0f - 1.0f;
    x = 1.0f - x * x;
    return x * x;
  }

  void setParams(float base_freq, int tone_offset, float volume, float gr_size, float speed_rnd, float shutter_freq, float shutter_depth)
  {
    float freqMult = float(pow(2.0f, tone_offset / 12.0f));
    toneFreq = base_freq * freqMult;
    timeAdvance = inverted_play_frequency * toneFreq;
    amp = volume;
    phaseRandom = 0.3f;
    speedRandom = 0.01f; //lerpf(0.09f, 0.01f, 1.0f - (1.0f - phys_speed) * (1.0f - phys_speed));
    envAdvanceMul = 1.0f / (gr_size + 0.001f);
    if (speed_rnd < 0.1f)
      speedRandom *= speed_rnd * 10.0f;
    else
      speedRandom = lerpf(speedRandom, speed_rnd, speed_rnd - 0.1f);
    shutterDepth = shutter_depth;
    shutterAdvance = inverted_play_frequency * shutter_freq * 2.0f;
  }

  void fillBuffer(float * buf, int count)
  {
    float envAdvance = inverted_play_frequency * envAdvanceMul;
    float phaseStep = 0.5f;

    #pragma loop count (256)
    for (int smp = 0; smp < count; smp++)
    {
      float sum = 0.0f;
      float envSum = 0.00001f;

      for (int i = 0; i < MAX_GRANULAS; i++)
      {
        Granula & g = granulas[i];

        float t = g.t; // [0..1)
        float v = 0.0f;
        v += get_sample(t);

        float env = granulaEnv(g.envTime);
        envSum += env;
        sum += g.amp * env * v;

        g.envTime += envAdvance;
        if (unlikely(g.envTime >= 1.0f))
          nextEnv(g, i, granulas[i == 0 ? MAX_GRANULAS - 1 : i - 1].t);

        g.t += g.speed * timeAdvance;

        if (unlikely(g.t >= 1.0f))
          g.t -= int(g.t);
      }

      //sum /= envSum;
      sum *= (1.0f / MAX_GRANULAS);
      bias = lerpf(bias, sum, 0.0001f);
      sum -= bias;

      shutterPos += shutterAdvance;
      if (unlikely(shutterPos >= 2.0f))
        shutterPos -= int(shutterPos);
      float sh = sqr(sqr(1.0f - fabsf(1.0f - shutterPos) * shutterDepth));
      sum = lerpf(prevVal, sum, sh);
      prevVal = sum;

      buf[smp] += sum * amp;
    }
  }
};

//////////////////////////////////////////////////////////////////////////////////////////

volatile float _tmp = 0.0f;

void warmup()
{
  float seconds = 1.0f;
  double hz = 48000.0;
  int N = (int(hz * seconds) | 255) + 1;

  float * samples = new float[N];
  memset(samples, 0, sizeof(samples[0]) * N);

  const int TONES = 2;
  static GSynth<16> synth[TONES];
  synth[0].setParams(40.2f, 0, 0.81, 0.11f, 0.01f, 2.01f, 0.11f);
  synth[1].setParams(90.4f, 0, 0.151, 0.051f, 0.01f, 10.01f, 0.91f);

  int step = 256;
  float baseFreq = 0.5;
  int sampleIndex = 0;
  for (int i = 0; i < N; i += step)
    for (int t = 0; t < TONES; t++)
      synth[t].fillBuffer(samples + i, step);

  _tmp = samples[123];
  delete[] samples;
}


template <typename Word>
std::ostream& write_word(std::ostream& outs, Word value, unsigned size = sizeof(Word))
{
  for (; size; --size, value >>= 8)
    outs.put(static_cast<char>(value & 0xFF));
  return outs;
}

volatile float global_freq[3] = {40, 60, 90};

void fill_samples(float * samples, int N, float seconds)
{

  memset(samples, 0, sizeof(samples[0]) * N);

  const int TONES = 3;
  GSynth<16> synth[TONES];
  synth[0].setParams(global_freq[0], 0, 0.8, 0.1f, 0.0f, 2.0f, 0.1f);
  synth[1].setParams(global_freq[1], 0, 0.5, 0.1f, 0.0f, 4.2f, 0.1f);
  synth[2].setParams(global_freq[2], 3, 0.15, 0.05f, 0.0f, 10.0f, 0.9f);

  auto start = std::chrono::high_resolution_clock::now();

  int step = 256;
  float baseFreq = 0.5;
  int sampleIndex = 0;
  for (int i = 0; i < N; i += step)
    for (int t = 0; t < TONES; t++)
      synth[t].fillBuffer(samples + i, step);


  auto stop = std::chrono::high_resolution_clock::now();

  std::chrono::duration<double> time = stop - start;
  double score = seconds / time.count();

  std::cout<<"g_synth_length_seconds="<<seconds<<std::endl;
  std::cout<<"g_synth_time="<<time.count()<<std::endl;
  std::cout<<"g_synth_score="<<score<<std::endl;
}

void render_to_file(const char *file_name, float seconds)
{
  warmup();
  std::ofstream f(file_name, std::ios::binary);

  int channels = 1;
  int freq = play_frequency_hz;

  f << "RIFF----WAVEfmt ";
  write_word(f, 16, 4 );
  write_word(f, 1, 2 );
  write_word(f, channels, 2);
  write_word(f, freq, 4);
  write_word(f, freq * 2 * channels, 4);
  write_word(f, 2 * channels, 2 );
  write_word(f, 16, 2 );

  size_t data_chunk_pos = f.tellp();
  f << "data----";

  double hz = freq;
  int N = (int(hz * seconds) | 255) + 1;

  float *samples = new float[N];
  fill_samples(samples, N, seconds);

  for (int n = 0; n < N; n++)
  {
    float value = clampf(samples[n], -1.0f, 1.0f) * 32760;
    write_word(f, (int)(value), 2);
    if (channels > 1)
      write_word(f, (int)(value), 2);
  }

  delete[] samples;

  size_t file_length = f.tellp();

  f.seekp( data_chunk_pos + 4 );
  write_word( f, file_length - data_chunk_pos - 8, 4 );

  f.seekp( 0 + 4 );
  write_word( f, file_length - 8, 4 ); 
}

void render_to_memory(float seconds)
{
  warmup();

  int freq = play_frequency_hz;

  double hz = freq;
  int N = (int(hz * seconds) | 255) + 1;

  float *samples = new float[N];
  fill_samples(samples, N, seconds);

  delete[] samples;
}

int main(int argc, char * argv[])
{
  float seconds = default_benchmark_render_time;
  if (argc >= 2) {
    seconds = std::stof(argv[1]);
  }
  if (argc == 3) {
      render_to_file(argv[2], seconds);
      return 0;
  }
  render_to_memory(seconds);
  return 0;
}
