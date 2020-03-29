#!/bin/bash
source /opt/intel/parallel_studio_xe_2020.0.088/bin/psxevars.sh
rm -rf /home/rds/dataracebench/micro-benchmarks/*
rm -rf /home/rds/dataracebench/results/*
mv /tmp/rds/* /home/rds/dataracebench/micro-benchmarks/.
cd /home/rds/dataracebench
scripts/test-harness.sh -d 32 -x inspector
