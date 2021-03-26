CREATE TABLE BenchmarkResultEntity (
	"Id"	INTEGER,
	"CpuId"	INTEGERT NOT NULL,
	"FileName"	TEXT,
	"Benchmark"	TEXT NOT NULL,
	"Output"	TEXT,
	"Category"	TEXT,
	"SubCategory"	TEXT,
	"UnitsOfMeasure"	TEXT,
	"Value"	NUMERIC NOT NULL,
	"Value1"	NUMERIC,
	"Value2"	NUMERIC,
	"Value3"	NUMERIC,
	"Value4"	NUMERIC,
	"Value5"	NUMERIC,
	"Value6"	NUMERIC,
	"Value7"	NUMERIC,
	"Value8"	NUMERIC,
	"Value9"	NUMERIC,
	"CreateDateTime"	TEXT,
	PRIMARY KEY("Id" AUTOINCREMENT)
);

CREATE INDEX "BencharkModel" ON BenchmarkResultEntity (
	"Model"
);