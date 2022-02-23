#!/bin/bash

cat auth.log | grep -i invalid | awk '{print $9}' | grep -v "from" | grep -v "invalid" | sort -u



cat auth.log | grep -i invalid | awk '{print $9}' | grep -v "from" | grep -v "invalid" | wc -l



# hocanın çözüm 

#!/bin/bash

grep "Invalid user" auth.log | cut -d' ' -f8 | uniq -c > invalid_user.sh

grep "Invalid user" auth.log | cut -d' ' -f9 | uniq -c >> invalid_user.sh

cat invalid_user.sh | grep -v "from" | grep -v "user" > new_invalid_user.txt

