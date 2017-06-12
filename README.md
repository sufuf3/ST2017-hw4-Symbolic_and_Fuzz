# ST2017-hw4-Symbolic_and_Fuzz  

## Table of contents  
- [ST2017-hw4-Symbolic_and_Fuzz](#st2017-hw4-symbolic-and-fuzz)  
  * [Get KLEE Docker Image and create](#get-klee-docker-image-and-create)  
  * [Use KLEE](#use-klee)  
  * [Install AFL](#install-afl)  
  * [Use AFL](#use-afl)  
  * [list](#list)  

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
KLEE: output directory is "/home/klee/ST2017-hw4-Symbolic_and_Fuzz/triangle/klee-out-0"  
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
7. clang -I /home/klee/klee_src/include/ -emit-llvm -c -g nextdate.cpp . 
8. klee nextdate.bc . 
```
KLEE: output directory is "/home/klee/ST2017-hw4-Symbolic_and_Fuzz/nextdate/klee-out-0"
KLEE: Using STP solver backend

KLEE: done: total instructions = 392
KLEE: done: completed paths = 18
KLEE: done: generated tests = 18
```
9. ktest-tool --write-ints test000001.ktest . 
```
ktest file : 'test000001.ktest'
args       : ['nextdate.bc']
num objects: 3
object    0: name: b'yy'
object    0: size: 4
object    0: data: 0
object    1: name: b'mm'
object    1: size: 4
object    1: data: 0
object    2: name: b'dd'
object    2: size: 4
object    2: data: 0
```
10. clang -I /home/klee/klee_src/include/ -emit-llvm -c -g commission.cpp . 
11. klee commission.bc . 
```
KLEE: output directory is "/home/klee/ST2017-hw4-Symbolic_and_Fuzz/commission/klee-out-0"
KLEE: Using STP solver backend
KLEE: WARNING ONCE: silently concretizing (reason: floating point) expression (Add w32 (Add w32 (Mul w32 45
                            (ReadLSB w32 0 lock))
                   (Mul w32 30
                            (ReadLSB w32 0 stock)))
          (Mul w32 25
                   (ReadLSB w32 0 barrel))) to value 100 (/home/klee/ST2017-hw4-Symbolic_and_Fuzz/commission/commission.cpp:16)

KLEE: done: total instructions = 70
KLEE: done: completed paths = 2
KLEE: done: generated tests = 2
```
12. ktest-tool --write-ints klee-last/test000001.ktest . 
```
ktest file : 'klee-last/test000001.ktest'
args       : ['commission.bc']
num objects: 3
object    0: name: b'lock'
object    0: size: 4
object    0: data: 0
object    1: name: b'stock'
object    1: size: 4
object    1: data: 0
object    2: name: b'barrel'
object    2: size: 4
object    2: data: 0
```

## Install AFL  
1. wget http://lcamtuf.coredump.cx/afl/releases/afl-latest.tgz  
2. tar zxvf afl-latest.tgz  
3. cd afl-2.42b/  
4. make  
5. sudo make install  
6. echo core > sudo /proc/sys/kernel/core_pattern `#root`    
## Use AFL  
1. cd ~/ST2017-hw4-Symbolic_and_Fuzz/triangle  
2. afl-gcc triangle.cpp -o triangle_fuzz  
```
afl-cc 2.42b by <lcamtuf@google.com>
afl-as 2.42b by <lcamtuf@google.com>
[+] Instrumented 13 locations (64-bit, non-hardened mode, ratio 100%).
```
3.  afl-fuzz -i afl_in -o afl_out ./triangle_fuzz  
![](https://i.imgur.com/UncBuTU.png)

## list  

**Triangle problems**  
 - [x] symbolic testing: klee  
 - [x] fuzz testing: AFL  
  
**NextDate problems**      
 - [x] symbolic testing: klee  
 - [ ] fuzz testing: AFL  
  
**Commission problems**    
 - [x] symbolic testing: klee  
 - [ ] fuzz testing: AFL  
