# простой тест, те же значения что и в Driver.ml
# данные передаются в программу с помощью echo и пайпы
# то же самое что запустить и ввести два числа через энтер
SHOULD_BE=201
OUTPUT=`echo "20 10" | ./compiled`
if [[ $OUTPUT = $SHOULD_BE ]]; 
    then
		echo "OK";
        exit 0;
    else 
        echo "wrong value $OUTPUT should be $SHOULD_BE"; exit 1;
fi
