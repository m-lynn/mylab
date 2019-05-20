#!/bin/bash
cat flag | grep "FLAG"
echo "Flag is: $(ls | grep -o '[0-9a-zA-Z]\{28\}')"