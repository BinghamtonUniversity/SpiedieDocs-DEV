---
title: Loading and Managing Environments
layout: default 
images: []
nav_order: 13
tags: [Conda, Singularity, Apptainer, Modules, Workflow]
description: Identifying which environment solution works best for your workload on Spiedie. 
---

***

### Table of Contents

1. [Solutions available on Spiedie](#avail_app_solutions)
2. [When to use Modules](#module_uses)
3. [When to use Singularity](#apptainer_uses)
4. [When to use Conda](#conda_uses)


***

### <a name="avail_app_solutions"></a> Solution available on Spiedie

Spiedie provides different approaches to load third pirty programs and libraries. 

We have a choice between using 
- [Modules](spiedie_modules.html)
- [Singularity/Apptainer containers](../singularity/)
- [Conda](spiedie_conda.html)

Depending on your workload dependencies, one of the above solutions should allow you to run effective programs on Spiedie.

Here are a few suggestions to help you choose the best solutions. 

***

### <a name="module_uses"></a> When to Use the Modules

***

##### Using a pre-installed scientific software like VASP, Wien2k, or Gaussian without modification? Use Modules if available.


- For third-party scientific software which require little to no modification, if it is available as a module, use it. 
- The system admin has already properly installed and configured the software to run on Spiedie. Simply loading the module 
is the quickest and most efficient solution. More on loading modules can be read the [ Modules on Spiedie](spiedie_modules.md) SpiedieDoc.

***


### <a name="apptainer_uses"></a> When to Apptainer

***

##### Need reproducibility? Multiple users working on same project? Use Apptainer. 

- Apptainer, formerly known as Singularity, is a container framework that is specifically created for HPC workloads and natively supports GPUs, Infiniband, and MPI etc. 

- The Singularity Image Format (SIF) is a single executable file that can be cryptographically verified, giving you  100% reproducibility for your projects 
and experiments, Since Apptainer has drop-in compatibility with nearly environment, the SIF can be shared freely across users and platforms for ease 
of use and collaboration. 

***

##### Need exact versions and every specific environment? Use Apptainer.

- The Apptainer base image is also immutable. So the version of each package and library get 'locked in' once you have generated your image. This is very useful if your packages and/or libraries require older or deprecated versioning when compiled.

More information on how and when to use Apptainer can be found in the [Apptainer set of SpiedieDocs](../Apptainer)

***

### <a name="conda_uses"></a>When to Use Conda

***



##### Latest supported library and packages? Use Conda. 

- Conda package and environment manager makes is simple to install the latest packages and set up your libraries and environment paths. Conda installs 
all the dependencies required for the package automatically making installing third-packages easier. 

***


##### Writing a quick test program and need unavailable packages? Use Conda. 

- Conda simplifies creating virtual environments and makes creating isolated environments much simpler. The turnaround time for creating a conda environment with all 
desired packages versus building from source or building a new container is much lower. Conda evnironments are available for reuse and can be quickly updated and modified. 


***


##### Want to use Intel Math Kernel Library (MKL) accelerated Python and packages? Use Conda

- If you would like to use the MKL accelerated version of Python, Numpy, Scipy and other available packages, it is recommended to use Conda, rather than building each package and python from source. 

More information on Conda use on spiedie, refer to the [Conda on Spiedie](spiedie_conda.md) SpiedieDoc.
