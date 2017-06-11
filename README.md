# ST2017-hw4-Symbolic_and_Fuzz  
## Get KLEE Docker Image and create  
1. docker pull klee/klee  
2. docker run -ti --name=<container_name> klee/klee  

## Use KLEE  
1. git clone https://github.com/sufuf3/ST2017-hw2-coverage.git ST2017-hw4-Symbolic_and_Fuzz  
2. cd ST2017-hw4-Symbolic_and_Fuzz/[hw]  
3. modify \*.cpp  
4. clang -I /home/klee/klee_src/include/ -emit-llvm -c -g triangle.cpp `#Compile to LLVM bitcode`  
5. klee triangle.bc `#Run KLEE`  
6. ktest-tool --write-ints klee-last/<test_id.ktest> `#KLEE-generated test cases`  


## list  

**Triangle problems**  
 - [x] symbolic testing: klee  
 - [ ] fuzz testing  
  
**NextDate problems**      
 - [ ] symbolic testing: klee  
 - [ ] fuzz testing  
  
**Commission problems**    
 - [ ] symbolic testing: klee  
 - [ ] fuzz testing  
