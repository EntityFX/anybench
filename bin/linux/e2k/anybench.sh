#!/bin/bash
echo "Benchmarking dhrystone_e2k_elbrus-8c_ffast"
./dhrystone_e2k_elbrus-8c_ffast n  > dhrystone_e2k_elbrus-8c_ffast.txt  
echo "Benchmarking dhrystone_e2k_elbrus-8c"    
./dhrystone_e2k_elbrus-8c n > dhrystone_e2k_elbrus-8c.txt 
echo "Benchmarking dhrystone_e2k_elbrus-v4"    
./dhrystone_e2k_elbrus-v4 n   > dhrystone_e2k_elbrus-v4.txt  
echo "Benchmarking dhrystone_e2k_elbrus-v3"    
./dhrystone_e2k_elbrus-v3 n  > dhrystone_e2k_elbrus-v3.txt 
echo "Benchmarking dhrystone_e2k_elbrus-v5"    
./dhrystone_e2k_elbrus-v5 n  > dhrystone_e2k_elbrus-v5.txt 


echo "Benchmarking whetstone_e2k_elbrus-8c_ffast"    
./whetstone_e2k_elbrus-8c_ffast n  > whetstone_e2k_elbrus-8c_ffast.txt
echo "Benchmarking whetstone_e2k_elbrus-8c"    
./whetstone_e2k_elbrus-8c n  > whetstone_e2k_elbrus-8c.txt
echo "Benchmarking whetstone_e2k_elbrus-v4"    
./whetstone_e2k_elbrus-v4 n  > whetstone_e2k_elbrus-v4.txt
echo "Benchmarking whetstone_e2k_elbrus-v3"    
./whetstone_e2k_elbrus-v3 n  > whetstone_e2k_elbrus-v3.txt
echo "Benchmarking whetstone_e2k_elbrus-v5"    
./whetstone_e2k_elbrus-v5 n  > whetstone_e2k_elbrus-v5.txt 

echo "Benchmarking linpack_e2k_elbrus-8c_ffast"    
./linpack_e2k_elbrus-8c_ffast n &> linpack_e2k_elbrus-8c_ffast.txt
echo "Benchmarking linpack_e2k_elbrus-8c"    
./linpack_e2k_elbrus-8c n  &> linpack_e2k_elbrus-8c.txt   
echo "Benchmarking linpack_e2k_elbrus-v4"    
./linpack_e2k_elbrus-v4 n &> linpack_e2k_elbrus-v4.txt 
echo "Benchmarking linpack_e2k_elbrus-v3"    
./linpack_e2k_elbrus-v3 n &> linpack_e2k_elbrus-v3.txt 
echo "Benchmarking linpack_e2k_elbrus-v5"    
./linpack_e2k_elbrus-v5 n  > linpack_e2k_elbrus-v5.txt 

echo "Benchmarking memspeed_e2k_elbrus-8c_ffast"    
./memspeed_e2k_elbrus-8c_ffast n  > memspeed_e2k_elbrus-8c_ffast.txt
echo "Benchmarking memspeed_e2k_elbrus-8c"    
./memspeed_e2k_elbrus-8c n > memspeed_e2k_elbrus-8c.txt
echo "Benchmarking memspeed_e2k_elbrus-v4"    
./memspeed_e2k_elbrus-v4 n > memspeed_e2k_elbrus-v4.txt
echo "Benchmarking memspeed_e2k_elbrus-v3"   
./memspeed_e2k_elbrus-v3 n > memspeed_e2k_elbrus-v3.txt
echo "Benchmarking memspeed_e2k_elbrus-v5"    
./memspeed_e2k_elbrus-v5 n  > memspeed_e2k_elbrus-v5.txt 

echo "Benchmarking lloops_e2k_elbrus-8c_ffast"  
./lloops_e2k_elbrus-8c_ffast n > lloops_e2k_elbrus-8c_ffast.txt  
echo "Benchmarking lloops_e2k_elbrus-8c"   
./lloops_e2k_elbrus-8c  n      > lloops_e2k_elbrus-8c.txt        
echo "Benchmarking lloops_e2k_elbrus-v4"  
./lloops_e2k_elbrus-v4 n     > lloops_e2k_elbrus-v4.txt      
echo "Benchmarking lloops_e2k_elbrus-v3" 
./lloops_e2k_elbrus-v3  n > lloops_e2k_elbrus-v3.txt
echo "Benchmarking lloops_e2k_elbrus-v5"    
./lloops_e2k_elbrus-v5 n  > lloops_e2k_elbrus-v5.txt 

#echo "Benchmarking busspeed_e2k_elbrus-v4" 
#./busspeed_e2k_elbrus-v4 n > busspeed_e2k_elbrus-v4.txt
#echo "Benchmarking busspeed_e2k_elbrus-v3"
#./busspeed_e2k_elbrus-v3 n > busspeed_e2k_elbrus-v3.txt


echo "Benchmarking whetstone_mp_e2k_elbrus-v4" 
./whetstone_mp_e2k_elbrus-8c_ffast > whetstone_mp_e2k_elbrus-8c_ffast.txt
echo "Benchmarking whetstone_mp_e2k_elbrus-v3"
./whetstone_mp_e2k_elbrus-8c > whetstone_mp_e2k_elbrus-8c.txt
echo "Benchmarking whetstone_mp_e2k_elbrus-v4" 
./whetstone_mp_e2k_elbrus-v4 > whetstone_mp_e2k_elbrus-v4.txt
echo "Benchmarking whetstone_mp_e2k_elbrus-v3"
./whetstone_mp_e2k_elbrus-v3 > whetstone_mp_e2k_elbrus-v3.txt
echo "Benchmarking whetstone_mp_e2k_elbrus-v5"    
./whetstone_mp_e2k_elbrus-v5 n  > whetstone_mp_e2k_elbrus-v5.txt 

echo "Benchmarking mpmflops_mp_e2k_elbrus-v4" 
./mpmflops_mp_e2k_elbrus-8c_ffast > mpmflops_mp_e2k_elbrus-8c_ffast.txt
echo "Benchmarking mpmflops_mp_e2k_elbrus-v3"
./mpmflops_mp_e2k_elbrus-8c > mpmflops_mp_e2k_elbrus-8c.txt
echo "Benchmarking mpmflops_mp_e2k_elbrus-v4" 
./mpmflops_mp_e2k_elbrus-v4 > mpmflops_mp_e2k_elbrus-v4.txt
echo "Benchmarking mpmflops_mp_e2k_elbrus-v3"
./mpmflops_mp_e2k_elbrus-v3 > mpmflops_mp_e2k_elbrus-v3.txt
echo "Benchmarking mpmflops_mp_e2k_elbrus-v5"    
./mpmflops_mp_e2k_elbrus-v5 n  > mpmflops_mp_e2k_elbrus-v5.txt 