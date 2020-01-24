#! /bin/sh
echo "Benchmarking dhrystone_arm_armv6"
./dhrystone_arm_armv6 n  > dhrystone_arm_armv6-8c_ffast.txt  
echo "Benchmarking dhrystone_arm_armv7"    
./dhrystone_arm_armv7 n > dhrystone_arm_armv7.txt 
echo "Benchmarking dhrystone_arm_armv7_neon"    
./dhrystone_arm_armv7_neon n > dhrystone_arm_armv7_neon.txt 
echo "Benchmarking dhrystone_arm_armv8_neon"    
./dhrystone_arm_armv8_neon n > dhrystone_arm_armv8_neon.txt 

echo "Benchmarking whetstone_arm_armv6"    
./whetstone_arm_armv6 n  > whetstone_arm_armv6.txt
echo "Benchmarking whetstone_arm_armv7"    
./whetstone_arm_armv7 n  > whetstone_arm_armv7.txt
echo "Benchmarking whetstone_arm_armv7_neon"    
./whetstone_arm_armv7_neon n  > whetstone_arm_armv7_neon.txt
echo "Benchmarking whetstone_arm_armv8_neon"    
./whetstone_arm_armv8_neon n  > whetstone_arm_armv8_neon.txt

echo "Benchmarking linpack_arm_armv6"    
./linpack_arm_armv6 n &> linpack_arm_armv6.txt
echo "Benchmarking linpack_arm_armv7"    
./linpack_arm_armv7 n  &> linpack_arm_armv7.txt   
echo "Benchmarking linpack_arm_armv7_neon"    
./linpack_arm_armv7_neon n  &> linpack_arm_armv7_neon.txt   

echo "Benchmarking memspeed_arm_armv6"    
./memspeed_arm_armv6 n  > memspeed_arm_armv6.txt
echo "Benchmarking memspeed_arm_armv7"    
./memspeed_arm_armv7 n > memspeed_arm_armv7.txt
echo "Benchmarking memspeed_arm_armv7_neon"    
./memspeed_arm_armv7_neon n > memspeed_arm_armv7_neon.txt

echo "Benchmarking lloops_arm_armv6"  
./lloops_arm_armv6 n > lloops_arm_armv6.txt  
echo "Benchmarking lloops_arm_armv7"   
./lloops_arm_armv7  n      > lloops_arm_armv7_neon.txt        
echo "Benchmarking lloops_arm_armv7_neon"   
./lloops_arm_armv7_neon  n      > lloops_arm_armv7_neon.txt  