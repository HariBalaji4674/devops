#!/bin/bash

num1=10
num2=20
Date=$(date +%F)
ScriptName=$0
logfile=/tmp/$ScriptName$Date.log

validation(){
    if($1 -eq 0)
    then 
        echo "The ${num1} is Greater Than ${num2}
    else
        echo "The ${num2} is Greater Than ${num1}"
    fi
}

validation $? 