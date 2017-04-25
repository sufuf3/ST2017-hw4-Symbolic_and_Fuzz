# ST2017-hw2-coverage  
## Set the Google test on Ubuntu  
1. cd ~/  
2. wget https://github.com/google/googletest/archive/release-1.8.0.tar.gz  
3. tar zxvf release-1.8.0.tar.gz  
4. mkdir ~/ST2017-hw2-coverage  
5. cd ~/ST2017-hw2-coverage  
6. cp -r ~/googletest-release-1.8.0/googletest ~/ST2017-hw2-coverage/gtest  
7. cd ~/ST2017-hw2-coverage/gtest/make  
8. make  
9. mv gtest_main.a libgtest.a  

## Add hw floder
1. mkdir ~/ST2017-hw2-coverage/[hw]
2. cd ~/ST2017-hw2-coverage/[hw]
3. Add files
4. g++ -ftest-coverage -fprofile-arcs triangle.cpp test.cpp -I ../gtest/include -L ../gtest/make -lgtest -lpthread -o test
5. ./test
```
[==========] Running 3 tests from 1 test case.
[----------] Global test environment set-up.
[----------] 3 tests from TriangleTest
[ RUN      ] TriangleTest.CodeCoverageC0
[       OK ] TriangleTest.CodeCoverageC0 (0 ms)
[ RUN      ] TriangleTest.CodeCoverageC1
[       OK ] TriangleTest.CodeCoverageC1 (0 ms)
[ RUN      ] TriangleTest.CodeCoverageC2
[       OK ] TriangleTest.CodeCoverageC2 (0 ms)
[----------] 3 tests from TriangleTest (0 ms total)

[----------] Global test environment tear-down
[==========] 3 tests from 1 test case ran. (0 ms total)
[  PASSED  ] 3 tests.
```
6. gcov triangle.cpp
```
File 'triangle.cpp'
Lines executed:100.00% of 10
Creating 'triangle.cpp.gcov'
```
7. cat triangle.cpp.gcov


## list

**Triangle problems**  
 - [x] C0, C1, C2
 - [x] MCDC 

**NextDate problems**    
 - [ ] C0, C1, C2
 - [ ] MCDC 

**Commission problems**    
 - [ ] C0, C1, C2
 - [ ] MCDC 
