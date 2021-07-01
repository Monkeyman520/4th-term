#!/bin/bash
ls -l $1
cd $1
for file in `ls`
do
    cp $file $2/$file-$(date +'%Y.%m.%d.%H:%M')
done


#/bin/bash
if (( $1 >=10 )) && (( $1<=20 )) && (($2 >=10 ))\
&& (( $2<=20 )) && (( $3 >=10 )) &&(( $3<= 20))
then
    echo "($1+$2)*$3 =$[($1+$2)*$3]"
else
    echo "Incorrect input"
fi


#!/bin/bash
for ((i=1;i<=$1;i++));
do
    for ((j=1;j<=$i;j++));
    do
        let r=i*j
        echo -en "${j}*${i}=${r}\t"
    done
    echo
done


#!/bin/bash
echo "$1 * $2 = $[$1*$2]"
