#!/bin/bash

# ./deploy.sh hello

# Wipe temp files
rm network.txt
rm client.txt

# Redirect docker0 tcp packets to file
sudo tcpdump -i docker0 >> network.txt &
sleep 5

# Invoke the function 100 times
for i in {1..100}
do 
    echo "$i"
    http 127.0.0.1:1338 >> client.txt
done

sleep 5

# Stop the background tcpdump process
ps -ef | grep 'root' | grep 'tcpdump' | awk '{print $2}' | xargs sudo kill

# Concat the files together
rm unsorted.txt
cat network.txt | grep 'HTTP/1.1' >> unsorted.txt
cat client.txt | grep 'Function' >> unsorted.txt
rm client.txt network.txt

# Filter out lines that don't start with a timestamp

# Sort by timestamp
rm sorted.txt
rm sorted_all.txt
cat unsorted.txt | sort >> sorted_all.txt
cat sorted_all.txt | awk '{print $1}' >> sorted.txt

# Compute Averages
rm sorted.csv
while read -r ONE; do
    read -r TWO
    read -r THREE
    read -r FOUR
    echo "$ONE, $TWO, $THREE, $FOUR" >> sorted.csv
done < sorted.txt
