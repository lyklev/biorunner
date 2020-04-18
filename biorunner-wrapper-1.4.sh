#!/bin/bash

EXE=$(basename $0)

BIORUNNER_PATH=$(dirname $0)

exec singularity exec ${BIORUNNER_PATH}/biorunner-1.4.sif $EXE $@
