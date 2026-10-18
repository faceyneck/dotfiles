#/bin/bash

#Some basic script from NetworkChuck

echo "What is your name?"
read name

echo "What is your age?"
read age
echo "Hello, $name, you are $age years old."

echo "Calculating"
sleep 1
echo ".........."
sleep 1
echo "****......"
sleep 1
echo "******...."
sleep 1
echo "********.."
sleep 1
echo "**********"
getrich=$((( $RANDOM %15 + $age )))
echo "You will become wealthy as fuck at age $getrich"
