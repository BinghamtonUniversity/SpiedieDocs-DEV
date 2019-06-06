--- 
title: Submitting Jobs using SRUN and SBATCH 
layout: default 
images: [] 
tags: [SRUN, SBATCH, Job Submission, interactive session]
description: Documentation for srun and sbatch commands 
---


***



### Table of Contents 

1. [Using srun](#srun)
2. [Using sbatch](#sbatch)
    1. [Writing a run script](#run-script)

## <a name="srun"></a> Using srun 

Both the srun and sbatch command have similar capabilities and set of parameters. srun is used to submit a job for execution in real time and blocks the terminal. You will not be able to issue other commands while the program executes and must have an open connection while the program runs. It is generally recommended to use srun for quick test runs and for simple workflows. 


#### Running simple program

To queue a quick test program use:

``` bash
srun -n=1 -c=1 <program run command>
``` 

here we have speciefied to allocate one node (-n=1) and one core (-c=1), and use defaults for other parameters. 

#### <a name="interactive-session"></a> Interactive Session

A common use case for srun is to open an interactive shell session on a cluster.   

To start a interaactive session run: 

```bash 
srun -n=1 --partition=<partition_name> --pty bash 
```

This will allow direct access to a single node in a specific partition defined by ***parition_name*** once it is available. 

For more information on partitions, [click here.](spiedie_partitions.html)


## <a name="sbatch"></a> Using sbatch

#### <a name="run-script"></a> Writing a run script 