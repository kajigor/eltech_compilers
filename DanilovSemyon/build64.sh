SHOULD_BE=2010
OUTPUT=`echo "20 10" | ./sample`
if [[ $OUTPUT = $SHOULD_BE ]]
then
      exit 0;
else
      echo "wrong value $OUTPUT should be $SHOULD_BE"; exit 1
fi

