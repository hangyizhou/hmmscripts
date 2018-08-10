#!/bin/bash

cwd=`pwd`

for i in $(cat notransferreddirs.txt); do
    echo $i
    cd $i
    rm transfer_job0001.pbs.*
    qsub ~/hmmsort/transfer_job0001.pbs
    cd $cwd
done

    