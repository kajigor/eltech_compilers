cp *.ml Build/
cp runtime.c Build/
cp Makefile Build/
cd Build
gcc -m32 -c runtime.c -o runtime.o
RUNTIME=. ./compiler file.expr
make all
./Main
g++ -lstdc++ -m32 -o ../application runtime.o main.s

cd ../