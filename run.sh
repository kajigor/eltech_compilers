make
gcc -m32 -c runtime.c
RUNTIME=. ./compiler file.expr
./file
