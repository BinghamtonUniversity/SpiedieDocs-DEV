#!/bin/bash
#SBATCH --job-name=OMP_TEST
#SBATCH --output=omp_output.log
#
# Number of cores
#SBATCH --cpus-per-task=4
#SBATCH -N 1
#SBATCH --partition=standard

# Clear the environment from any previously loaded modules
module purge > /dev/null 2>&1

# Set OMP_NUM_THREADS to the same value as -c
# with a fallback in case it isn't set.
# SLURM_CPUS_PER_TASK is set to the value of -c, but only if -c is explicitly set
if [ -n "$SLURM_CPUS_PER_TASK" ]; then
  omp_threads=$SLURM_CPUS_PER_TASK
else
  omp_threads=1
fi
export OMP_NUM_THREADS=$omp_threads

module load gcc

gcc -o spiedie_omp open_mp.c -fopenmp

./spiedie_omp