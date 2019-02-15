
#!/bin/bash

addition () {
        echo "The result of adding " + $x + " and " + $y + " is:"
        result=$(($x + $y))
        echo $result
}

subtraction () {
        echo "The result of subtracting " + $x + " and " + $y + " is:"
        result=$(($x-$y))
        echo $result
}

multiplication () {
        echo "The result of multiply " + $x + " and " + $y + " is:"
        result=$(($x*$y))
        echo $result
}

division () {
        echo "The result of dividing " + $1 + " and " + $2 + " is:"
        result=$(($x/$y))
        echo $result
}

while true
do 
echo "Chose action and enter two integers"
echo "1. addition"
echo "2. subtraction"
echo "3. multiplication"
echo "4. division"
echo "5. exit"

read choice x y

case $choice in
"1"*) addition $x $y  ;;
"2"*) subtraction $x $y ;;
"3"*) multiplication $x $y ;;
"4"*) division $x $y ;;
"5"*) exit 1 ;;
esac

done

