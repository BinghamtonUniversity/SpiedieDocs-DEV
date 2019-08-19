#!/bin/bash
#
#SBATCH --job-name=MPI_TEST
#SBATCH --output=mpi_out.log
#
#SBATCH -N 2
#SBATCH -c 2
#SBATCH --partition=quick
#

module load mvapich2/gcc/64/2.3b

mpicc -o mpi_test mpi.c

srun ./mpi_test 
