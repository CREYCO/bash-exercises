# convert Fahrenheit to Celsius
# celsius = (fahrenheit - 32) / 1.8

read -p "Enter degree fahrenheit temperature: " fahrenheit
celsius=`echo "scale=4; ($fahrenheit - 32) / 1.8" | bc`
echo "$fahrenheit degree fahrenheit is equal to $celsius degree celsius"

# convert Celsius to Fahrenheit
# fahrenheit = (celsius * 1.8) + 32

read -p "Enter degree celsius temperature: " celsius
fahrenheit=`echo "scale=4; $celsius*1.8 + 32" | bc`
echo "$celsius degree celsius is equal to $fahrenheit degree fahrenheit"


