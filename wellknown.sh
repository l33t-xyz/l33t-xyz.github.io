#!/bin/bash

for f in `ls .well-known/`
do
    echo '---' > $f
    echo 'layout: none' >> $f
    echo "permalink: ./well-known/${f}" >> $f
    echo '---' >> $f
    cat .well-known/$f >> $f
done
