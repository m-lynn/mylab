#!/bin/bash
head flag
echo "Flag is: $(ls | grep -o '[0-9a-zA-Z]\{28\}')"
