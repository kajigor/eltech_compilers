cp Main.ml Build/
cp func.cpp Build/
cd Build
g++ -lstdc++ -c -m32 func.cpp -o func.o
make all
./Main
g++ -lstdc++ -m32 -o ../application func.o main.s

cd ../