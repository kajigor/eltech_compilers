g++ -lstdc++ -c -m32 helpers.cpp
make all
./Driver
g++ -lstdc++ -m32 -o compiled helpers.o asmcode.s
