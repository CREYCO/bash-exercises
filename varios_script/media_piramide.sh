#Bash Shell Script to print half pyramid using *
rows=4
for((i=1; i<=rows; i++))
do
  for((j=1; j<=i; j++))
  do
    echo -n "* "
  done
  echo
done


#Bash Shell Script to print half pyramid using *
rows=4
for((i=1; i<=rows; i++))
do
  for((j=1; j<=i; j++))
  do
    echo -n "* "
  done
  echo
done

#Bash Shell Script to print inverted half pyramid using *
rows=5
for((i=rows; i>=1; i--))
do
  for((j=1; j<=i; j++))
  do
    echo -n "* "
  done
  echo
done

#Bash Shell Script to print inverted half pyramid using numbers
number=1
rows=5
for((i=rows; i>=1; i--))
do
  for((j=1; j<=i; j++))
  do
    echo -n "$number "
    number=$((number + 1))
  done
  number=1
  echo
done

#Bash Shell Script to print full pyramid using numbers
rows=5
number=1
for((i=1; i<=rows; i++))
do
  for((j=1; j<=rows - i; j++))
  do
    echo -n "  "
  done
  number=$i
  k=1
  for((j=1; j<=2*i - 1; j++))
  do
    if [ $j -lt $i ];
    then
      echo -n "$number "
      number=$((number + 1))
    elif [ $j -eq $i ];
    then
      echo -n "$number "
      number=$((number - 1))
    else
      echo -n "$number "
      number=$((number - 1))
    fi
  done
  echo

#Bash Shell Script to print Floyd's Triangle
number=1
rows=4
for((i=1; i<=rows; i++))
do
  for((j=1; j<=i; j++))
  do
    echo -n "$number "
    number=$((number + 1))
  done
  echo
done  

