#!/bin/bash

PID=$$
HEAP_MEM=$(grep -E "^[0-9a-f-]* r" /proc/"$PID"/maps | grep heap | cut -d' ' -f 1)
MEM_START=$(echo $((0x$(echo "$HEAP_MEM" | cut -d"-" -f1))))
MEM_STOP=$(echo $((0x$(echo "$HEAP_MEM" | cut -d"-" -f2))))
MEM_SIZE=$(echo $((0x$MEM_STOP-0x$MEM_START)))
dd if=/proc/"${PID}"/mem of="/home/test.dd" ibs=1 skip="$MEM_START" count="$MEM_SIZE"

/bin/bash -c "sleep 6045d"
