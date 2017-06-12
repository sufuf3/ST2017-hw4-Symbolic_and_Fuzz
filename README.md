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
```
                    american fuzzy lop 2.42b (triangle_fuzz)

listlq
process timing listqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqwq
overall results listqqqqqk
x
       run time : 0 days, 0 hrs, 10 min, 44 sec      listx# cycles done : 8964   listx
x#  last new path : none yet (odd, check syntax!)      listx  total paths : 1      listx
xllast uniq crash : none seen yet                      istxiuniq crashes : 0      stx
xs last uniq hang : none seen yet                      Trianglext  uniq hangs : 0      Trianglex
tq cycle progress Triangleqqqqqqqqqqqqqqqqqqqqwq 
map coverage Triangleqvqqqqqqqqqqqqqqqqqqqqqqqu
x
 now processing : 0 (0.00%)         Trianglex*   map density : 0.00% / 0.00%         Trianglex
x*paths timed out : 0 (0.00%)         TrianglexTcount coverage : 1.00 bits/tuple       rianglex
tqrstage progress iangleqqqqqqqqqqqqqqqqqqqqnqifindings in depth angleqqqqqqqqqqqqqqqqqqqqu
xa now trying : havoc                 nglexnfavored paths : 1 (100.00%)            glex
xgstage execs : 165/256 (64.45%)      lexl new edges on : 1 (100.00%)            problemsx
xetotal execs : 2.30M                 problemsx total crashes : 0 (0 unique)           problemsx
xp exec speed : 2765/sec              roblemsxr total tmouts : 1558 (3 unique)        oblemsx
tqofuzzing strategy yields blemsqqqqqqqqqqqvqqqqqqqqqqqqqqqwqbpath geometry lemsqqqqqqqqu
xl  bit flips : 0/32, 0/31, 0/29                      emsxe   levels : 1          msx
xm byte flips : 0/4, 0/3, 0/1                         symbolicxs  pending : 0          symbolicx
x*arithmetics : 0/224, 0/0, 0/0                       symbolicx* pend fav : 0          symbolicx
x  known ints : 0/26, 0/82, 0/44                      symbolicx 
own finds : 0          symbolicx
x  dictionary : 0/0, 0/0, 0/0                         symbolicx- imported : n/a        symbolicx
x       havoc : 0/2.30M, 0/0                          symbolicx[stability : 100.00%    symbolicx
xx       trim : 100.00%/22, 0.00%                     symbolictqqqqqqqqqqqqqqqqqqqqqqqqj
^Cqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqj]         [cpu000:142%]

+++ Testing aborted by user +++
[+] We're done here. Have a nice day!
```

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
