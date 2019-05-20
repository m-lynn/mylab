#!/bin/bash
cd John
rm Desktop -r
rm Documents -r
rm file1 file2 file3
cd ../suzen
ls
echo "Flag is: $(ls | grep -o '[0-9a-zA-Z]\{28\}')"