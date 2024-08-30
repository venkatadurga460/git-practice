#!/bin/bash

echo "all variable passed though the script :: $@"
echo "number varaible passed through the script:: $#"
echo "script name :: $0"
echo "current directory of current :: $PWD"
echo "home dirctory of current user :: $HOME"
echo "PID of executing now :: $$"
sleep 100 &
echo "PID of last executing command :: $!"
