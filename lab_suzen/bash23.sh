#!/bin/bash
mv nginx*.log nginx*.log.back
mv *.* /home/suzen/destination
echo "Flag is: $(ls | grep -o '[0-9a-zA-Z]\{28\}')"