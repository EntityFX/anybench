using System;
using Dapper.Contrib.Extensions;

namespace EntityFx.Benchmark.DataAccess
{
    public class CpuRepository : SqliteRepositoryBase, ICpuRepository
    {
        public void Create(BenchmarkDb.Contracts.Cpu cpu)
        {
            try
            {
                var model = MapModel(cpu);
                model.CreateDateTime = DateTime.Now;
                var id = Connection.Insert<CpuEntity>(model);
            }
            catch (Exception ex)
            {
                return;
            }
        }

        public void Delete(int id)
        {
            throw new NotImplementedException();
        }

        private CpuEntity MapModel(BenchmarkDb.Contracts.Cpu cpu)
        {
            return new CpuEntity()
            {
                Model = cpu.Model,
                Manufacturer = cpu.Manufacturer,
                Cores = cpu.Specs?.Cores,
                Threads = cpu.Specs?.Threads,
                Category = cpu.Category,
                MicroArchitecture = cpu.Specs?.MicroArchitecture,
                InstructionSet = cpu.Specs?.InstructionSet,
                ClockInMhz = cpu.Specs?.ClockInMhz,
                BusInMhz = cpu.Specs?.BusInMhz,
                Multiplier = cpu.Specs?.Multiplier,

                CacheL1DCacheAssociativity = cpu?.Cache?.L1Data?.CacheAssociativity,
                CacheL1DSizeKBytes = cpu?.Cache?.L1Data?.SizeKBytes,
                CacheL1DLineSizeInBytes = cpu?.Cache?.L1Data?.LineSizeInBytes,
                CacheL1DIsShared = cpu?.Cache?.L1Data?.IsShared,
                CacheL1DDetails = cpu?.Cache?.L1Data?.Details,

                CacheL1ICacheAssociativity = cpu?.Cache?.L1Instruction?.CacheAssociativity,
                CacheL1ISizeKBytes = cpu?.Cache?.L1Instruction?.SizeKBytes,
                CacheL1ILineSizeInBytes = cpu?.Cache?.L1Instruction?.LineSizeInBytes,
                CacheL1IIsShared = cpu?.Cache?.L1Instruction?.IsShared,
                CacheL1IDetails = cpu?.Cache?.L1Instruction?.Details,

                CacheL2CacheAssociativity = cpu?.Cache?.L2?.CacheAssociativity,
                CacheL2SizeKBytes = cpu?.Cache?.L2?.SizeKBytes,
                CacheL2LineSizeInBytes = cpu?.Cache?.L2?.LineSizeInBytes,
                CacheL2IsShared = cpu?.Cache?.L2?.IsShared,
                CacheL2Details = cpu?.Cache?.L2?.Details,

                CacheL3CacheAssociativity = cpu?.Cache?.L3?.CacheAssociativity,
                CacheL3SizeKBytes = cpu?.Cache?.L3?.SizeKBytes,
                CacheL3LineSizeInBytes = cpu?.Cache?.L3?.LineSizeInBytes,
                CacheL3IsShared = cpu?.Cache?.L3?.IsShared,
                CacheL3Details = cpu?.Cache?.L3?.Details,

                CacheL4CacheAssociativity = cpu?.Cache?.L4?.CacheAssociativity,
                CacheL4SizeKBytes = cpu?.Cache?.L4?.SizeKBytes,
                CacheL4LineSizeInBytes = cpu?.Cache?.L4?.LineSizeInBytes,
                CacheL4IsShared = cpu?.Cache?.L4?.IsShared,
                CacheL4Details = cpu?.Cache?.L4?.Details,

                MemoryControllers = cpu?.MemorySpecs?.Controllers,
                MemoryChannels = cpu?.MemorySpecs?.Channels,
                MemoryBandwidthInMbPerSec = cpu?.MemorySpecs?.BandwidthInMbPerSec,
                MemoryMaxMemorySizeInMb = cpu?.MemorySpecs?.MaxMemorySizeInMb,
                MemoryMemoryType = cpu?.MemorySpecs?.MemoryType,
                MemoryDetails = cpu?.MemorySpecs?.Details,
                MemoryEccOnly = cpu?.MemorySpecs?.EccOnly,

                CrystalHeightMm = cpu?.Crystal?.HeightMm,
                CrystalWidthMm = cpu?.Crystal?.WidthMm,
                CrystalArea = cpu?.Crystal?.Area,

                PackageHeightMm = cpu?.Package?.HeightMm,
                PackageWidthMm = cpu?.Package?.WidthMm,
                PackageArea = cpu?.Package?.Area,

            };
        }

    }
}