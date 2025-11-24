---
title: Spiedie Partitions
layout: default 
images: []
nav_order: 8
tags : [partitions, features, memory management]
description: Learn about the different specialized partitions set up on Spiedie and best practices to improve Spiedie usage.  
--- 

***

### Table of Contents 
1. [Partitions](#partitions)
2. [Features](#features)

***

## <a name="partitions"></a> Partitions

The nodes on Spiedie are partitioned into 4 distinct sets depending on the resources available. Exact nodes corresponding to each partition can be seen on the [Nodes and Properties](../HPC-Operations/nodes.md) SpiedieDoc.

#### Standard 

For typical calculations. Jobs have a maximum runtime of 2 days, but jobs may be preempted after 1 hour of wallclock time if other researchers need them for higher priority partitions. If your job is preempted, it will be cancelled and it will re-enter queue with the same jobID. Architectures are mixed

#### Standard.2.0

A group of newer nodes that operates identically to the Standard partition.

#### normal

The default partition for Spiedie. Queue times will usually be longer, but maximum job time is 122 hours (5 days, 2 hours). Jobs will not be preempted in this partition. Aerchitectures are mixed.
 
#### normal.2.0

A group of newer nodes that operates identically to the normal partition.

#### highmem16/32

These nodes have, on average, double the memory of typical nodes. They are to be used exclusively for high-memory jobs. Maximum job time is 122 hours (5 days, 2 hours), and jobs cannot be preempted.

#### GPU 

Spiedie has access to an assortment of state-of-the-art GPUs. Please contact the cluster administrator, Phil Valenta, for access to these partitions. 

***

## <a name="features"></a>Features

Spiedie also has specific feature flags that users can use to quickly choose nodes that may fit their needs. Below are all the available features combinations users can request. 

E5v4

E5v3

E5v2

Scalable
