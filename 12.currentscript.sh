#!/bin/bash

course="deops from current script"

echo "before calling current script , course name is $course"
echo "before calling current script PID , $$ "

source ./13.otherscript.sh

echo "after calling current script , course name is $course"
echo "after calling current script PID : $$"
