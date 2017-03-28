gcc -c -m32 runtime.c
make all && RUNTIME=. ./compiler file.expr
SHOULD_BE="> > > < 489"
OUTPUT=`echo "2 3 4" | ./file`
if [[ $OUTPUT = $SHOULD_BE ]]; 
    then
		echo "OK";
        exit 0;
    else 
        echo "wrong value $OUTPUT should be $SHOULD_BE"; exit 1;
fi
