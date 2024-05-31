!/bin/bash

disk_usage=$(df -k --output=used / | tail -n1)    ## setting the disk usage value

threshold=19000000    ## equal to 19 Gigabyte

if [ "$disk_usage" -gt "$threshold" ]; then
  echo "your disk usage exceeded the threshold!" | ssmtp asem.student.321@gmail.com
fi

                                                                          
