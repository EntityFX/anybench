CREATE TABLE "CpuEntity" (
	"Id"	INTEGER,
	"Model"	TEXT NOT NULL,
	"Manufacturer"	TEXT NOT NULL,
	"Category"	TEXT,
	"Cores"	INTEGER,
    "Threads"	INTEGER,
    "MicroArchitecture" TEXT,
    "InstructionSet" TEXT,
    "ClockInMhz" NUMERIC,
    "BusInMhz" NUMERIC,
    "Multiplier" NUMERIC,

    "CacheL1DCacheAssociativity" INTEGER,
    "CacheL1DSizeKBytes" INTEGER,
    "CacheL1DLineSizeInBytes" INTEGER,
    "CacheL1DIsShared" INTEGER,
    "CacheL1DDetails" TEXT,

    "CacheL1ICacheAssociativity" INTEGER,
    "CacheL1ISizeKBytes" INTEGER,
    "CacheL1ILineSizeInBytes" INTEGER,
    "CacheL1IIsShared" INTEGER,
    "CacheL1IDetails" TEXT,

    "CacheL2CacheAssociativity" INTEGER,
    "CacheL2SizeKBytes" INTEGER,
    "CacheL2LineSizeInBytes" INTEGER,
    "CacheL2IsShared" INTEGER,
    "CacheL2Details" TEXT,

    "CacheL3CacheAssociativity" INTEGER,
    "CacheL3SizeKBytes" INTEGER,
    "CacheL3LineSizeInBytes" INTEGER,
    "CacheL3IsShared" INTEGER,
    "CacheL3Details" TEXT,

    "CacheL4CacheAssociativity" INTEGER,
    "CacheL4SizeKBytes" INTEGER,
    "CacheL4LineSizeInBytes" INTEGER,
    "CacheL4IsShared" INTEGER,
    "CacheL4Details" TEXT,

    "MemoryControllers" INTEGER,
    "MemoryChannels" INTEGER,
    "MemoryBandwidthInMbPerSec" NUMERIC,
    "MemoryMaxMemorySizeInMb" NUMERIC,
    "MemoryMemoryType" INTEGER,
    "MemoryDetails" TEXT,
    "MemoryEccOnly" INTEGER,

    "CrystalHeightMm" NUMERIC,
    "CrystalWidthMm" NUMERIC,
    "CrystalArea" NUMERIC,

    "PackageHeightMm" NUMERIC,
    "PackageWidthMm" NUMERIC,
    "PackageArea" NUMERIC,

    "CreateDateTime" TEXT,
	PRIMARY KEY("Id" AUTOINCREMENT)
);