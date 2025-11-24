---
title: Compiling Code
layout: default
images: []
nav_order: 7
nav_exclude: false
tags: [GCC, CLANG, CMAKE, ICC, Intel Compilers]
description: Available compilers on spiedie for optimized compilations.
---

***

**As a preamble: Some very good tips and tricks for compiling can be found [here](https://hpc.ncsu.edu/Documents/Compilers.php#tips), courtesy of North Carolina State University**

### Table of Contents 

1. [GNU](#gcc)
2. [ICC](#intel)
	- [Runtime Libraries](#intel_libs)
3. [NVCC](#nvidia)
	- [Runtime Libraries](#nvidia_libs)

##### <a name="gcc"></a>
The open source gnu compilers are available as a module and can be loaded with: 

```bash
module load gnu14
```

##### <a name="intel"></a> ICC

Spiedie also provides users with the Intel Parallel Studio Compilers suite to take advantage of the improved performance on the Xeon-Phi architecture available. 

You can load the Intel compiler from the modules using: 

```bash
module load intel
```

This loads the following libraries:
- Intel Math Kernel LIbrary (Intel MKL&copy;)
- Intel Data Analytics Acceleration Library (Intel DAAL&copy;)
- Intel Integrated Performance Primitives
- Intel MPI library
- Intel Thread Building Block Library (Intel TBB&copy;)

<a href="https://software.intel.com/en-us/node/685016" target="_blank">Click here for the summary of the toolset</a>

The world of intel compilers is expansive, so if you wish to compile with Intel, time examining module versions on Spiedie is time well spent.

##### <a name="nvidia"></a> NVCC

The GPU compute nodes fully support CUDA accelerated applications and libraries. 

The CUDA toolkit and runtime libraries are also available as modules on spiedie. 

***Note: Multiple version of the CUDA toolkit is available, namely CUDA 11.8 and CUDA 12.4***


You can find all the available CUDA versions by running:

```bash
module avail | grep cuda
```

You can load the nvcc compiler using:
```bash
module load cuda/(version)
```

<a href="https://developer.nvidia.com/gpu-accelerated-libraries" target="_blank"> Click here to learn more about NVidia's GPU accelerated libraries</a>