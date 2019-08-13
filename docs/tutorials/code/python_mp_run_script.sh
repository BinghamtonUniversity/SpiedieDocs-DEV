#!/bin/bash
#SBATCH -job-name=python_MP_TEST
#SBATCH --output=PMPT_output.log
#
#SBATCH --partition=standard
#SBATCH --ntasks=4

python3 python_multi_processing.py
