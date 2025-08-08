---
title: Modules on Spiedie
layout: default 
images: [] 
nav_order: 7
nav_exclude: false
tags: [Operations, Modules, Advanced]
description: Basic how-to guide on modules as they function on Spiedie.
---

***
### Table of Contents
 1. [What are Modules](#what_are_modules)
 2. [Loading Modules](#how_to_load)
 3. [Using Modules to Compile](#compile_with_modules)
 4. [Viewing Available Modules](#module_list)


## What Are Modules? <a name="what_are_modules"></a>
***
Spiedie manages most of its software, packages, and programs through the use of what are known as "modules." Modules can be loaded into your terminal session to add paths and enable software in your current session, and modules may automatically load other modules necessary to run the piece of software in the module. When you log onto Spiedie, a few default modules are loaded automatically. At any time, you may view the modules active in your session by running the following command:

```bash
module list
```

## Viewing and Loading Modules <a name="how_to_load"></a>
***

To view a compact list of the most commonly-invoked modules available on Spiedie, run

``` bash 
module avail 
```

A complete list of all available modules on Spiedie can be viewed by running

``` bash 
module spider 
```

and can also be seen in the ["Module List" Doc](../Spiedie-Info/modulelist.md) Simple modules listed by the `module avail` command can simply be loaded or unloaded by running

``` bash 
module load module_name
```

and

``` bash 
module unload module_name
```

where `module_name` should be replaced with your chosen module. However, many modules you can find listed by the `module spider` command may require other modules to be loaded before the chosen module can be loaded. To see the requisite modules, you can run

``` bash 
module spider module_name
```

and then load those modules before ultimately loading the original module. 


When necessary, all modules in your session (including those loaded by default) can be removed by running

```bash
module purge
```

Many other advanced options of loading, initializing, and creating module profiles and checking methods are possible! You can view these options by running the 

```bash
module help
```
command. 

A few examples for useful but more hands-on possibilities for modules: you can easily create module bundles that can be loaded via the `module save` and `module restore` commands, or add to the modules loaded upon login by adding a few lines to your [.bashrc profile](../How-to-Use-Spiedie/aliases.md)

***
#### Important Note
It is important to note that scripts and batched slurm jobs **do not** draw from modules in your current session. So any scripts or runscripts will have to load any needed modules within them, while command-line scripts and command-line slurm jobs (run using the `srun` command) will not require separate loading instances.
###
***

## Using Modules to Compile <a name="how_to_load"></a>
***

Many of the modules [available on Spiedie](../Spiedie-Info/modulelist.md) are compilers and commonly-used libraries, since many programs and packages users may need could be absent on Spiedie. Best practices and a guide to compiling on Spiedie can be read in the ["Compiling Source Code on Spiedie" Doc](../How-to-Use-Spiedie/compilers.md).
