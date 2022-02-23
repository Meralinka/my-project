#!/bin/bash

cat event_history.csv | grep -i "serdar" | grep -i "terminateinstance" | awk -F'"' '{print $16,$32,$48,$64}' | tee result.txt



# hocanın çözüm 

#   #!/bin/bash

if [[ ! -f $1  ]]
then
        echo "please type a file"
        exit
fi


cat $1 | grep serdar | grep Terminate | grep -Eo "i-[a-zA-Z0-9]{17}" | sort -u > result.txt