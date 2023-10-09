#!/bin/bash

Date=$(date +%F)
ScriptName=$0
logfile=$ScriptName$Date.log

for i in {1..10}
do
    echo $i
done

