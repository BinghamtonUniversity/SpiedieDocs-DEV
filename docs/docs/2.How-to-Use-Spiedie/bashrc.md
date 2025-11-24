---
title: Bashrc Aliasing
layout: default
nav_order: 5
nav_exclude: false
tags: [Linux, Aliases, Intermediate]
description: Introduction and guide to using aliases from your .bashrc file
---

## Short guide on .bashrc

the ".bashrc" file in your home directory stores information that is used when starting up a session (the leading "." marks files that won't appear when `ls` is run). For this reason, it is important that you <u>carefully review</u> anything you may delete from the .bashrc file.

Any aliases you would like to make permanent can be inserted in your .bashrc file. Then, to ensure that this version of the .bashrc file applies to all future sessions as well, you must run

```plaintext
source ~/.bashrc
```

This will also rerun the .bashrc, leading to module reset and an exiting of any environments. This alias is now permanent. 
