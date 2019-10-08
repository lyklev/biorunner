#!/bin/bash

EXE=$(basename $0)

exec biorunner.sif $EXE $@
