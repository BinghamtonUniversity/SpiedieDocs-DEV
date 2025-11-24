---
title: Singularity Commands
layout: default
images: []
description: Run Singularity on Spiedie
tags: [Singularity, Apptainer, containers, docs] 
---

***

### Table of Contents
1. [Accessing container shell](#shell)
2. [Running shell a command with Container image](#exec)
3. [Running batch script with Container image](#run)
4. [External resources](#extern)

#### <a name="shell"></a> Acessing container shell 

To access the shell environment on your Apptainer image run the command: 

```bash 
apptainer shell image_name.simg
```

This will start an interactive session with the container environment. You can run scripts while in the session as the same user. 

You can make use of the interactive session capabilities of Spiedie to run your programs in this way. [Click here for more information.](../docs/submitting_jobs.html#interactive-session)

#### <a name="exec"></a> Running shell a command with Container image

You can execute commands as you would on a shell script using Apptainer. 

```bash
apptainer exec image_name.simg shell_command
```

Apptainer can be combined with SLURM seamlessly by issuing Apptainer commands with srun and sbatch. [Click here for more information on running jobs. ](../docs/submitting_jobs.html)  

#### <a name="run"></a> Running batch script with Container image

You can also run scripts using the Apptainer image, by running: 

```bash
apptainer run image_name.simg run_script.sh
```

#### <a name="extern"></a> External resources

<a href="https://apptainer.org/docs/user/latest/" target="_blank">
For more advanced features of Apptainer framework, consult the Apptainer reference guide	
</a>
