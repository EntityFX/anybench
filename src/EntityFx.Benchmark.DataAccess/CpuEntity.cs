using EntityFx.BenchmarkDb.Contracts;
using System;

namespace EntityFx.Benchmark.DataAccess
{
    internal class CpuEntity
    {
        public int Id { get; set; }

        public string Manufacturer { get; set; }

        public string Model { get; set; }

        public string Category { get; set; }

        public string InstructionSet { get; set; }

        public string MicroArchitecture { get; set; }

        public decimal ClockInMhz { get; set; }

        public decimal BusInMhz { get; set; }

        public decimal Multiplier { get; set; }

        public uint Cores { get; set; }

        public uint Threads { get; set; }


        public uint CacheL1ISizeKBytes { get; set; }

        public CacheAssociativity CacheL1ICacheAssociativity { get; set; }

        public uint CacheL1ILineSizeInBytes { get; set; }

        public bool CacheL1IIsShared { get; set; }

        public string CacheL1IDetails { get; set; }


        public uint CacheL1DSizeKBytes { get; set; }

        public CacheAssociativity CacheL1DCacheAssociativity { get; set; }

        public uint CacheL1DLineSizeInBytes { get; set; }

        public bool CacheL1DIsShared { get; set; }

        public string CacheL1DDetails { get; set; }


        public uint CacheL2SizeKBytes { get; set; }

        public CacheAssociativity CacheL2CacheAssociativity { get; set; }

        public uint CacheL2LineSizeInBytes { get; set; }

        public bool CacheL2IsShared { get; set; }

        public string CacheL2Details { get; set; }


        public uint CacheL3SizeKBytes { get; set; }

        public CacheAssociativity CacheL3CacheAssociativity { get; set; }

        public uint CacheL3LineSizeInBytes { get; set; }

        public bool CacheL3IsShared { get; set; }

        public string CacheL3Details { get; set; }


        public uint MemoryControllers { get; set; }

        public uint MemoryChannels { get; set; }

        public decimal MemoryBandwidthInMbPerSec { get; set; }

        public decimal MemoryMaxMemorySizeInMb { get; set; }

        public MemoryType MemoryMemoryType { get; set; }

        public string MemoryDetails { get; set; }

        public bool MemoryEccOnly { get; set; }


        public decimal PackageWidthMm { get; set; }

        public decimal PackageHeightMm { get; set; }

        public decimal PackageArea { get; set; }


        public decimal CrystalWidthMm { get; set; }
                       
        public decimal CrystalHeightMm { get; set; }
                       
        public decimal CrystalArea { get; set; }


        public DateTime CreateDateTime { get; set; }
    }
}