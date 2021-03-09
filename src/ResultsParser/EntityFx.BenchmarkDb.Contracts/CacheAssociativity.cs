namespace EntityFx.BenchmarkDb.Contracts
{
    public enum CacheAssociativity
    {
        DirectMapped = 0,
        FullyAssociative = 1,
        TwoWayAssociative = 2,
        TwoWaySkewedAssociative = 3,
        FourWayAssociative = 4,
        EightWayAssociative = 8,
        TwelveWayAssociative = 12
    }
}