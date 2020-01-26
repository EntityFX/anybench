#! /bin/sh

echo "Benchmarking dhrystone_armv7_clang"    
./dhrystone_armv7_clang n > dhrystone_armv7_clang.txt 
echo "Benchmarking dhrystone_armv8_clang"    
./dhrystone_armv8_clang n > dhrystone_armv8_clang.txt 

echo "Benchmarking whetstone_armv7_clang"    
./whetstone_armv7_clang n  > whetstone_armv7_clang.txt
echo "Benchmarking whetstone_armv8_clang"    
./whetstone_armv8_clang n  > whetstone_armv8_clang.txt

echo "Benchmarking linpack_armv7_clang"    
./linpack_armv7_clang n  &> linpack_armv7_clang.txt   
echo "Benchmarking linpack_armv8_clang"    
./linpack_armv8_clang n  &> linpack_armv8_clang.txt   

echo "Benchmarking memspeed_armv7_clang"    
./memspeed_armv7_clang n > memspeed_armv7_clang.txt
echo "Benchmarking memspeed_armv8_clang"    
./memspeed_armv8_clang n > memspeed_armv8_clang.txt

echo "Benchmarking lloops_armv7_clang"   
./lloops_armv7_clang  n      > lloops_armv7_clang.txt        
echo "Benchmarking lloops_armv8_clang"   
./lloops_armv8_clang  n      > lloops_armv8_clang.txt  