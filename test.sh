SHOULD_BE=201
OUTPUT=`echo "20 10" | ./compiled`
if [[ $OUTPUT = $SHOULD_BE ]]; 
    then
        exit 0;
    else 
        echo "wrong value $OUTPUT should be $SHOULD_BE"; exit 1;
fi
