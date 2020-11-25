var Constants = {

        RESOLUTION_DEFAULT : 2.0,  /*secs*/
        RANDOM_SEED : 101010,

        // default: small (cache-contained) problem sizes
        //
        FFT_SIZE : 1024,  // must be a power of two
        SOR_SIZE : 100, // NxN grid
        SPARSE_SIZE_M : 1000,
        SPARSE_SIZE_nz : 5000,
        LU_SIZE : 100,

        // large (out-of-cache) problem sizes
        //
        LG_FFT_SIZE : 1048576,  // must be a power of two
        LG_SOR_SIZE : 1000, // NxN grid
        LG_SPARSE_SIZE_M : 100000,
        LG_SPARSE_SIZE_nz : 1000000,
        LG_LU_SIZE : 1000,

        // tiny problem sizes (used to mainly to preload network classes 
        //                     for applet, so that network download times
        //                     are factored out of benchmark.)
        //
        TINY_FFT_SIZE : 16,  // must be a power of two
        TINY_SOR_SIZE : 10, // NxN grid
        TINY_SPARSE_SIZE_M : 10,
        TINY_SPARSE_SIZE_N : 10,
        TINY_SPARSE_SIZE_nz : 50,
        TINY_LU_SIZE : 10,

    };
	
var LU = /** @class */ (function () {
	var LU_ = null;
	var pivot_ = null;
	function LU(A) {
		var M = A.length;
		var N = A[0].length;

		//if ( LU_ == null || LU_.length != M || LU_[0].length != N)
		LU_ = new Array(M);

		this.insert_copy(LU_, A);

		//if (pivot_.length != M)
		pivot_ = new Array(M);

		this.factor(LU_, pivot_);
	}

	LU.num_flops = function(N)
	{
		// rougly 2/3*N^3

		var Nd = N;

		return (2.0 * Nd * Nd * Nd / 3.0);
	};

	LU.new_copy = function(x)
	{
		var N = x.length;
		var T = new Array(N);
		for (var i = 0; i < N; i++)
			T[i] = x[i];
		return T;
	};

	LU.new_copy_mx = function(A)
	{
		var M = A.length;
		var N = A[0].length;

		var T = new Array(M);

		for (var i = 0; i < M; i++)
		{
			var Ti = T[i];
			var Ai = A[i];
			for (var j = 0; j < N; j++)
				Ti[j] = Ai[j];
		}

		return T;
	};

	LU.insert_copy = function(B, A)
	{
		var M = A.length;
		var N = A[0].length;

		var remainder = N & 3;       // N mod 4;

		for (var i = 0; i < M; i++)
		{
			var Bi = B[i];
			var Ai = A[i];
			for (var j = 0; j < remainder; j++)
				Bi[j] = Ai[j];
			for (var j = remainder; j < N; j += 4)
			{
				Bi[j] = Ai[j];
				Bi[j + 1] = Ai[j + 1];
				Bi[j + 2] = Ai[j + 2];
				Bi[j + 3] = Ai[j + 3];
			}
		}

	};
	
	LU.getLU = function()
	{
		return this.new_copy_mx(LU_);
	};
	/**
		Returns a <em>copy</em> of the pivot vector.
		@return the pivot vector used in obtaining the
		LU factorzation.  Subsequent solutions must
		permute the right-hand side by this vector.
	*/
	LU.getPivot = function()
	{
		return this.new_copy(pivot_);
	};


	/**
		Solve a linear system, with pre-computed factorization.
		@param b (in) the right-hand side.
		@return solution vector.
	*/
	LU.solve_mx = function(b)
	{
		var x = this.new_copy(b);

		this.solve(LU_, pivot_, x);
		return x;
	};


	/**
		LU factorization (in place).
		@param A (in/out) On input, the matrix to be factored.
			On output, the compact LU factorization.
		@param pivit (out) The pivot vector records the
			reordering of the rows of A during factorization.
			
		@return 0, if OK, nozero value, othewise.
*/
	LU.factor = function(A, pivot)
	{

		var N = A.length;
		var M = A[0].length;

		var minMN = Math.min(M, N);

		for (var j = 0; j < minMN; j++)
		{
			// find pivot in column j and  test for singularity.

			var jp = j;

			var t = Math.abs(A[j][j]);
			for (var i = j + 1; i < M; i++)
			{
				var ab = Math.abs(A[i][j]);
				if (ab > t)
				{
					jp = i;
					t = ab;
				}
			}

			pivot[j] = jp;

			// jp now has the index of maximum element 
			// of column j, below the diagonal

			if (A[jp][j] == 0)
				return 1;       // factorization failed because of zero pivot


			if (jp != j)
			{
				// swap rows j and jp
				var tA = A[j];
				A[j] = A[jp];
				A[jp] = tA;
			}

			if (j < M - 1)                // compute elements j+1:M of jth column
			{
				// note A(j,j), was A(jp,p) previously which was
				// guarranteed not to be zero (Label #1)
				//
				var recp = 1.0 / A[j][j];

				for (var k = j + 1; k < M; k++)
					A[k][j] *= recp;
			}


			if (j < minMN - 1)
			{
				// rank-1 update to trailing submatrix:   E = E - x*y;
				//
				// E is the region A(j+1:M, j+1:N)
				// x is the column vector A(j+1:M,j)
				// y is row vector A(j,j+1:N)


				for (var ii = j + 1; ii < M; ii++)
				{
					var Aii = A[ii];
					var Aj = A[j];
					var AiiJ = Aii[j];
					for (var jj = j + 1; jj < N; jj++)
						Aii[jj] -= AiiJ * Aj[jj];

				}
			}
		}

		return 0;
	}


	/**
		Solve a linear system, using a prefactored matrix
			in LU form.
		@param LU (in) the factored matrix in LU form. 
		@param pivot (in) the pivot vector which lists
			the reordering used during the factorization
			stage.
		@param b    (in/out) On input, the right-hand side.
					On output, the solution vector.
	*/
	LU.solve = function(LU, pvt, b)
	{
		var M = LU.length;
		var N = LU[0].length;
		var ii = 0;

		for (var i = 0; i < M; i++)
		{
			var ip = pvt[i];
			var sum = b[ip];

			b[ip] = b[i];
			if (ii == 0)
				for (var j = ii; j < i; j++)
					sum -= LU[i][j] * b[j];
			else
				if (sum == 0.0)
				ii = i;
			b[i] = sum;
		}

		for (var i = N - 1; i >= 0; i--)
		{
			var sum = b[i];
			for (var j = i + 1; j < N; j++)
				sum -= LU[i][j] * b[j];
			b[i] = sum / LU[i][i];
		}
	};

	return LU;
}());

var SparseCompRow = /** @class */ (function () {
	function SparseCompRow() {
	}	

	/* multiple iterations used to make kernel have roughly
		same granulairty as other Scimark kernels. */

	SparseCompRow.num_flops = function(N, nz, num_iterations)
	{
		/* Note that if nz does not divide N evenly, then the
		   actual number of nonzeros used is adjusted slightly.
		*/
		var actual_nz = (nz / N) * N;
		return (actual_nz) * 2.0 * (num_iterations);
	};


	/* computes  a matrix-vector multiply with a sparse matrix
		held in compress-row format.  If the size of the matrix
		in MxN with nz nonzeros, then the val[] is the nz nonzeros,
		with its ith entry in column col[i].  The integer vector row[]
		is of size M+1 and row[i] points to the begining of the
		ith row in col[].  
	*/

	SparseCompRow.matmult = function(y, val, row,
		col, x, NUM_ITERATIONS)
	{
		var M = row.length - 1;

		for (var reps = 0; reps < NUM_ITERATIONS; reps++)
		{
			for (var r = 0; r < M; r++)
			{
				var sum = 0.0;
				var rowR = row[r];
				var rowRp1 = row[r + 1];
				for (var i = rowR; i < rowRp1; i++)
					sum += x[col[i]] * val[i];
				y[r] = sum;
			}
		}
	};
	return SparseCompRow;
}());
	
var MonteCarlo = /** @class */ (function () {
	function MonteCarlo() {
	}

	MonteCarlo.num_flops = function(Num_samples)
	{
		// 3 flops in x^2+y^2 and 1 flop in random routine

		return (Num_samples) * 4.0;

	}



	MonteCarlo.integrate = function(Num_samples)
	{
		var under_curve = 0;
		for (var count = 0; count < Num_samples; count++)
		{
			var x = Math.random();
			var y = Math.random();

			if (x * x + y * y <= 1.0)
				under_curve++;

		}

		return (under_curve / Num_samples) * 4.0;
	}


	return MonteCarlo;
}());
		
var SOR = /** @class */ (function () {
	function SOR() {
	}

	SOR.num_flops = function(M, N, num_iterations)
	{
		var Md = M;
		var Nd = N;
		var num_iterD = num_iterations;

		return (Md - 1) * (Nd - 1) * num_iterD * 6.0;
	};

	SOR.execute = function(omega, G, num_iterations)
	{
		var M = G.length;
		var N = G[0].length;

		var omega_over_four = omega * 0.25;
		var one_minus_omega = 1.0 - omega;

		// update interior points
		//
		var Mm1 = M - 1;
		var Nm1 = N - 1;
		for (var p = 0; p < num_iterations; p++)
		{
			for (var i = 1; i < Mm1; i++)
			{
				var Gi = G[i];
				var Gim1 = G[i - 1];
				var Gip1 = G[i + 1];
				for (var j = 1; j < Nm1; j++)
					Gi[j] = omega_over_four * (Gim1[j] + Gip1[j] + Gi[j - 1]
								+ Gi[j + 1]) + one_minus_omega * Gi[j];
			}
		}
	};
	
	return SOR;
}());
	
var FFT = /** @class */ (function () {
	function FFT() {
	}
	
	/* ______________________________________________________________________ */

	FFT.log2 = function(n)
	{
		var log = 0;
		for (var k = 1; k < n; k *= 2, log++) ;
		if (n != (1 << log))
			throw new Error("FFT: Data length is not a power of 2!: " + n);
		return log;
	}

	FFT.transform_internal = function(data, direction)
	{
		if (data.length == 0) return;
		var n = data.length / 2;
		if (n == 1) return;         // Identity operation!
		var logn = this.log2(n);

		/* bit reverse the input data for decimation in time algorithm */
		this.bitreverse(data);

		/* apply fft recursion */
		/* this loop executed log2(N) times */
		for (var bit = 0, dual = 1; bit < logn; bit++, dual *= 2)
		{
			var w_real = 1.0;
			var w_imag = 0.0;

			var theta = 2.0 * direction * Math.PI / (2.0 * dual);
			var s = Math.sin(theta);
			var t = Math.sin(theta / 2.0);
			var s2 = 2.0 * t * t;

			/* a = 0 */
			for (var b = 0; b < n; b += 2 * dual)
			{
				var i = 2 * b;
				var j = 2 * (b + dual);

				var wd_real = data[j];
				var wd_imag = data[j + 1];

				data[j] = data[i] - wd_real;
				data[j + 1] = data[i + 1] - wd_imag;
				data[i] += wd_real;
				data[i + 1] += wd_imag;
			}

			/* a = 1 .. (dual-1) */
			for (var a = 1; a < dual; a++)
			{
				/* trignometric recurrence for w-> exp(i theta) w */
				{
					var tmp_real = w_real - s * w_imag - s2 * w_real;
					var tmp_imag = w_imag + s * w_real - s2 * w_imag;
					w_real = tmp_real;
					w_imag = tmp_imag;
				}
				for (var b = 0; b < n; b += 2 * dual)
				{
					var i = 2 * (b + a);
					var j = 2 * (b + a + dual);

					var z1_real = data[j];
					var z1_imag = data[j + 1];

					var wd_real = w_real * z1_real - w_imag * z1_imag;
					var wd_imag = w_real * z1_imag + w_imag * z1_real;

					data[j] = data[i] - wd_real;
					data[j + 1] = data[i + 1] - wd_imag;
					data[i] += wd_real;
					data[i + 1] += wd_imag;
				}
			}
		}
	}


	FFT.bitreverse  = function(data)
	{
		/* This is the Goldrader bit-reversal algorithm */
		var n = data.length / 2;
		var nm1 = n - 1;
		var i = 0;
		var j = 0;
		for (; i < nm1; i++)
		{

			//int ii = 2*i;
			var ii = i << 1;

			//int jj = 2*j;
			var jj = j << 1;

			//int k = n / 2 ;
			var k = n >> 1;

			if (i < j)
			{
				var tmp_real = data[ii];
				var tmp_imag = data[ii + 1];
				data[ii] = data[jj];
				data[ii + 1] = data[jj + 1];
				data[jj] = tmp_real;
				data[jj + 1] = tmp_imag;
			}

			while (k <= j)
			{
				//j = j - k ;
				j -= k;

				//k = k / 2 ; 
				k >>= 1;
			}
			j += k;
		}
	}

    FFT.num_flops = function(N)
	{
		var Nd = N;
		var logN = this.log2(N);

		return (5.0 * Nd - 2) * logN + 2 * (Nd + 1);
	};


        /** Compute Fast Fourier Transform of (complex) data, in place.*/
    FFT.transform = function(data) {
		this.transform_internal(data, -1);
	};

        /** Compute Inverse Fast Fourier Transform of (complex) data, in place.*/
	FFT.inverse = function(data) {
		this.transform_internal(data, +1);
		// Normalize
		var nd = data.length;
		var n = nd / 2;
		var norm = 1 / (n);
		for (var i = 0; i < nd; i++)
			data[i] *= norm;
	};

        /** Accuracy check on FFT of data. Make a copy of data, Compute the FFT, then
          * the inverse and compare to the original.  Returns the rms difference.*/
	FFT.test = function(data) {
		var nd = data.length;
		// Make duplicate for comparison
		//var copy = new Array(nd);
		var copy = data.slice();
		//Array.Copy(data, 0, copy, 0, nd);
		// Transform & invert
		this.transform(data);
		this.inverse(data);
		// Compute RMS difference.
		var diff = 0.0;
		for (var i = 0; i < nd; i++)
		{
			var d = data[i] - copy[i];
			diff += d * d;
		}
		return Math.sqrt(diff / nd);
	};

        /** Make a random array of n (complex) elements. */
	FFT.makeRandom = function(n) {
		var nd = 2 * n;
		var data = new Array(nd);
		for (var i = 0; i < nd; i++)
			data[i] = Math.random();
		return data;
	};  
	
    return FFT;
}());

var Scimark2 = /** @class */ (function () {
        var output = null;

        function Scimark2(writer, prvarToConsole) {
			output = writer || new Writer();
            output.UseConsole = (prvarToConsole === undefined) ? true : prvarToConsole;;
        }
		
		function measureFFT(N, mintime)
        {
            // initialize FFT data as complex (N real/img pairs)

            var x = RandomVector(2 * N);
            var oldx = NewVectorCopy(x);
            var cycles = 1;
			var elapsed = 0;
			var startTime = 0;
            while (true)
            {
                startTime = getTime();
                for (var i = 0; i < cycles; i++)
                {
                    FFT.transform(x);   // forward transform
                    FFT.inverse(x);     // backward transform
                }
                elapsed = getTime() - startTime;
                if (elapsed >= mintime)
                    break;

                cycles *= 2;
            }
            // approx Mflops

            var EPS = 1.0e-10;
            if (FFT.test(x) / N > EPS)
                return 0.0;

            return FFT.num_flops(N) * cycles / elapsed * 1.0e-6;
        }


        function measureSOR(N, min_time)
        {
            var G = RandomMatrix(N, N);

			var elapsed = 0;
			var startTime = 0;
            var cycles = 1;
            while (true)
            {
                startTime = getTime();
                SOR.execute(1.25, G, cycles);
                elapsed = getTime() - startTime;
                if (elapsed >= min_time)
                    break;

                cycles *= 2;
            }
            // approx Mflops
            return SOR.num_flops(N, N, cycles) / elapsed * 1.0e-6;
        }

        function measureMonteCarlo(min_time)
        {
			var elapsed = 0;
			var startTime = 0;

            var cycles = 1;
            while (true)
            {
                startTime = getTime();
                MonteCarlo.integrate(cycles);
                elapsed = getTime() - startTime;
                if (elapsed >= min_time)
                    break;

                cycles *= 2;
            }
            // approx Mflops
            return MonteCarlo.num_flops(cycles) / elapsed * 1.0e-6;
        }


        function measureSparseMatmult(N, nz, min_time)
        {
            // initialize vector multipliers and storage for result
            // y = A*y;

            var x = RandomVector(N);
            var y = new Array(N);

            // initialize square sparse matrix
            //
            // for this test, we create a sparse matrix wit M/nz nonzeros
            // per row, with spaced-out evenly between the begining of the
            // row to the main diagonal.  Thus, the resulting pattern looks
            // like
            //             +-----------------+
            //             +*                +
            //             +***              +
            //             +* * *            +
            //             +** *  *          +
            //             +**  *   *        +
            //             +* *   *   *      +
            //             +*  *   *    *    +
            //             +*   *    *    *  + 
            //             +-----------------+
            //
            // (as best reproducible with integer artihmetic)
            // Note that the first nr rows will have elements past
            // the diagonal.

            var nr = nz / N;        // average number of nonzeros per row
            var anz = nr * N;   // _actual_ number of nonzeros


            var val = RandomVector(anz);
            var col = new Array(anz);
            var row = new Array(N + 1);

            row[0] = 0;
            for (var r = 0; r < N; r++)
            {
                // initialize elements for row r

                var rowr = row[r];
                row[r + 1] = rowr + nr;
                var step = Math.floor(r / nr);
                if (step < 1) step = 1;   // take at least unit steps


                for (var i = 0; i < nr; i++)
                    col[rowr + i] = i * step;

            }

			var elapsed = 0;
			var startTime = 0;

            var cycles = 1;
            while (true)
            {
                startTime = getTime();
                SparseCompRow.matmult(y, val, row, col, x, cycles);
                elapsed = getTime() - startTime;
                if (elapsed >= min_time)
                    break;

                cycles *= 2;
            }
            // approx Mflops
            return SparseCompRow.num_flops(N, nz, cycles) / elapsed * 1.0e-6;
        }


        function measureLU(N, min_time)
        {
            // compute approx Mlfops, or O if LU yields large errors

            var A = RandomMatrix(N, N);
            var lu = new Array(N);
            for(var i = 0; i < N; i++)
            {
                lu[i] = new Array(N);
            }

            var pivot = new Array(N);

			var elapsed = 0;
			var startTime = 0;

            var cycles = 1;
            while (true)
            {
                startTime = getTime();
                for (var i = 0; i < cycles; i++)
                {
                    CopyMatrix(lu, A);
                    LU.factor(lu, pivot);
                }
                elapsed = getTime() - startTime;
                if (elapsed >= min_time)
                    break;

                cycles *= 2;
            }


            // verify that LU is correct
            var b = RandomVector(N);
            var x = NewVectorCopy(b);

            LU.solve(lu, pivot, x);

            var EPS = 1.0e-12;
            if (normabs(b, matvec(A, x)) / N > EPS)
                return 0.0;
			
			elapsed = getTime() - startTime;

            // else return approx Mflops
            //
            return LU.num_flops(N) * cycles / elapsed * 1.0e-6;
        }


        function NewVectorCopy(x)
        {
            var N = x.length;

            var y = new Array(N);
            for (var i = 0; i < N; i++)
                y[i] = x[i];

            return y;
        }

        function CopyVector(B, A)
        {
            var N = A.length;

            for (var i = 0; i < N; i++)
                B[i] = A[i];
        }


        function normabs(x, y)
        {
            var N = x.length;
            var sum = 0.0;

            for (var i = 0; i < N; i++)
                sum += Math.abs(x[i] - y[i]);

            return sum;
        }

        function CopyMatrix(B, A)
        {
            var M = A.length;
            var N = A[0].length;

            var remainder = N & 3;       // N mod 4;

            for (var i = 0; i < M; i++)
            {
                var Bi = B[i];
                var Ai = A[i];
                for (var j = 0; j < remainder; j++)
                    Bi[j] = Ai[j];
                for (var j = remainder; j < N; j += 4)
                {
                    Bi[j] = Ai[j];
                    Bi[j + 1] = Ai[j + 1];
                    Bi[j + 2] = Ai[j + 2];
                    Bi[j + 3] = Ai[j + 3];
                }
            }
        }

        function RandomMatrix(M, N)
        {
            var A = new Array(M);

            for (var i = 0; i < N; i++)
            {
                A[i] = new Array(N);
                for (var j = 0; j < N; j++)
                    A[i][j] = Math.random();
            }
            return A;
        }

        function RandomVector(N)
        {
            var A = new Array(N);

            for (var i = 0; i < N; i++)
                A[i] = Math.random();
            return A;
        }

        function matvec(A, x)
        {
            var N = x.length;
            var y = new Array(N);

            matvec_mx(A, x, y);

            return y;
        }

        function matvec_mx(A, x, y)
        {
            var M = A.length;
            var N = A[0].length;

            for (var i = 0; i < M; i++)
            {
                var sum = 0.0;
                var Ai = A[i];
                for (var j = 0; j < N; j++)
                    sum += Ai[j] * x[j];

                y[i] = sum;
            }
        }

        Scimark2.prototype.bench = function(min_time, isLarge) {
            // default to the (small) cache-contained version
			min_time = min_time || Constants.RESOLUTION_DEFAULT;
			isLarge = isLarge || false;
            var FFT_size = Constants.FFT_SIZE;
            var SOR_size = Constants.SOR_SIZE;
            var Sparse_size_M = Constants.SPARSE_SIZE_M;
            var Sparse_size_nz = Constants.SPARSE_SIZE_nz;
            var LU_size = Constants.LU_SIZE;

            // look for runtime options

            var current_arg = 0;
            if (isLarge)
            {
                FFT_size = Constants.LG_FFT_SIZE;
                SOR_size = Constants.LG_SOR_SIZE;
                Sparse_size_M = Constants.LG_SPARSE_SIZE_M;
                Sparse_size_nz = Constants.LG_SPARSE_SIZE_nz;
                LU_size = Constants.LG_LU_SIZE;

                current_arg++;
            }


            // run the benchmark

            var res = new Array(6);

            res[1] = measureFFT(FFT_size, min_time);
            res[2] = measureSOR(SOR_size, min_time);
            res[3] = measureMonteCarlo(min_time);
            res[4] = measureSparseMatmult(Sparse_size_M,
                        Sparse_size_nz, min_time);
            res[5] = measureLU(LU_size, min_time);


            res[0] = (res[1] + res[2] + res[3] + res[4] + res[5]) / 5;


            // prvar out results

            output.writeLine();
            output.write("SciMark 2.0a");
            output.writeLine();
            output.write("Composite Score:%17.2f".$(res[0]));
			output.writeLine();
            output.write("FFT             Mflops:%10.2f    (N=%d)".$(res[1], FFT_size));
            if (res[1] == 0.0)
                output.write(" ERROR, INVALID NUMERICAL RESULT!");

			output.writeLine();
			
            output.write("SOR             Mflops:%10.2f    (%d x %d)".$(res[2], SOR_size, SOR_size));
			output.writeLine();
            output.write("Monte Carlo     Mflops:%10.2f".$(res[3]));
			output.writeLine();
            output.write("Sparse matmult  Mflops:%10.2f    (N=%d, nz=%d)".$(res[4], Sparse_size_M, Sparse_size_nz));
			output.writeLine();
            output.write("LU              Mflops:%10.2f    (%dx%d): ".$(res[5], LU_size, LU_size));
            if (res[5] == 0.0)
                output.write(" ERROR, INVALID NUMERICAL RESULT!");

			output.writeLine();
            return {
                CompositeScore : res[0],
                FFT : res[1],
                SOR : res[2],
                MonteCarlo : res[3],
                SparseMathmult : res[4],
                LU : res[5],
                Output : ""
            };
        }

    return Scimark2;
}());