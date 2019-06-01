#!/bin/bash
mkdir -P Documents/projects/lab19/using/simple/bash/commands
cd -P Documents/projects/lab19/using/simple/bash/commands
sleep 60
ls
echo "Flag is: $(ls | grep -o '[0-9a-zA-Z]\{28\}')"
