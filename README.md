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
```
KLEE: output directory is "/home/klee/ST2017-hw4-Symbolic_and_Fuzz/triangle/klee-out-1"  
KLEE: Using STP solver backend  
  
KLEE: done: total instructions = 135  
KLEE: done: completed paths = 9  
KLEE: done: generated tests = 9  
```
6. ktest-tool --write-ints klee-last/<test_id.ktest> `#KLEE-generated test cases`  
```
ktest file : 'klee-last/test000001.ktest'
args       : ['triangle.bc']
num objects: 3
object    0: name: b'a'
object    0: size: 4
object    0: data: 0
object    1: name: b'b'
object    1: size: 4
object    1: data: 0
object    2: name: b'c'
object    2: size: 4
object    2: data: 0
```


## list  

**Triangle problems**  
 - [x] symbolic testing: klee  
 - [ ] fuzz testing  
  
**NextDate problems**      
 - [x] symbolic testing: klee  
 - [ ] fuzz testing  
  
**Commission problems**    
 - [ ] symbolic testing: klee  
 - [ ] fuzz testing  
