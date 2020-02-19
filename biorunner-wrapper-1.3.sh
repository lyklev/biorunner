#!/bin/bash

EXE=$(basename $0)

exec singularity exec biorunner-1.3.sif $EXE $@
