#!/bin/bash

cat auth.log | grep -i invalid | awk '{print $9}' | grep -v "from" | grep -v "invalid" | sort -u



cat auth.log | grep -i invalid | awk '{print $9}' | grep -v "from" | grep -v "invalid" | wc -l
