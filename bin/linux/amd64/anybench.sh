#! /bin/sh
echo "Benchmarking dhrystone_amd64_fast"
./dhrystone_amd64_fast n  > dhrystone_amd64_fast-8c_ffast.txt  
echo "Benchmarking dhrystone_amd64"    
./dhrystone_amd64 n > dhrystone_amd64.txt 

echo "Benchmarking whetstone_amd64_fast"    
./whetstone_amd64_fast n  > whetstone_amd64_fast.txt
echo "Benchmarking whetstone_amd64"    
./whetstone_amd64 n  > whetstone_amd64.txt

echo "Benchmarking linpack_amd64_fast"    
./linpack_amd64_fast n &> linpack_amd64_fast.txt
echo "Benchmarking linpack_amd64"    
./linpack_amd64 n  &> linpack_amd64.txt   

echo "Benchmarking memspeed_amd64_fast"    
./memspeed_amd64_fast n  > memspeed_amd64_fast.txt
echo "Benchmarking memspeed_amd64"    
./memspeed_amd64 n > memspeed_amd64.txt

echo "Benchmarking lloops_amd64_fast"  
./lloops_amd64_fast n > lloops_amd64_fast.txt  
echo "Benchmarking lloops_amd64"   
./lloops_amd64  n      > lloops_amd64.txt        
