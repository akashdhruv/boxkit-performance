#!/bin/bash

#BSUB -P ast136
#BSUB -W 00:05
#BSUB -J boxkit
#BSUB -o o%J.boxkit
#BSUB -e o%J.boxkit
#BSUB -nnodes 1

module restore boxkit
SITE=summit NTHREADS=12 python3 /ccs/home/adhruv/BoxKit/tests/cache/mean.py
