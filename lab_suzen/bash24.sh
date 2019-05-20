#!/bin/bash
cp -r ololo/ /home/suzen/Music/
cp -r azaza/ /home/suzen/Music/
echo "Flag is: $(ls | grep -o '[0-9a-zA-Z]\{28\}')"