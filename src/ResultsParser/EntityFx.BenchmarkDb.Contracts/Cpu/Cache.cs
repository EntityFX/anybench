using System.Collections.Generic;

namespace EntityFx.BenchmarkDb.Contracts
{
    public class Cache
    {
        public CacheItem L1Data { get; set; }

        public CacheItem L1Instruction { get; set; }

        public CacheItem L2 { get; set; }

        public CacheItem L3 { get; set; }

        public CacheItem L4 { get; set; }

        public IEnumerable<CacheItem> OtherCacheItems { get; set; }
    }
}