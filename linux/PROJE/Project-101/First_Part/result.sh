#!/bin/bash

cat event_history.csv | grep -i "serdar" | grep -i "terminateinstance" | awk -F'"' '{print $16,$32,$48,$64}' | tee result.txt