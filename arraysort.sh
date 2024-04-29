${array[@]}
for (( i=0; i<5 ; i++))
do
echo "enter value"
read array[i]
done
max=${array[0]}
for(( i=0; i<${#array[@]}; i++))
do
  for(( j=0; j<i+1; j++))
  do
if (( ${array[i]} < ${array[j]}))
then
temp=${array[i]}
array[i]=${array[j]}
array[j]=$temp
fi
done
done
for (( i=0; i<5 ;i++))
do
echo "${array[i]}"
done
