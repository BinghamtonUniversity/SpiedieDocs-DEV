#!/bin.bash
#SBATCH --job-name=SINGULARITY_GPU_TEST
#SBATCH --output=tf_gpu_output.log
#
#SBATCH --partition-gpucompute
#SBATCH --ntasks=1

module load singularity/3.1.1
module load cuda10.0/toolkit/10.0.130
export SINGULARITY_BINDPATH=
singulariy run  spiedie_tf_gpu.simg python3.6 tf_gpu.py