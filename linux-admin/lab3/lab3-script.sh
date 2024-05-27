#!/bin/bash

for i in {0..255}
do

ping -c 1  172.16.17.$i

if [ $? -eq 0  ] ; then
	echo 'server 172.16.17.$i is up and running'

else  
	echo 'server 172.16.17.$i is unreachable'
fi

done

