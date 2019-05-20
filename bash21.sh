#!/bin/bash/
rm [0-9]*.txt && [a-z]*.png && test-*.*[!z]
echo "Flag is: $(ls | grep -o '[0-9a-zA-Z]\{28\}')"