# Spiedie Docs
[Master Documentation for using the Spiedie Cluster](https://binghamtonuniversity.github.io/SpiedieDocs/)


Here is a brief guide to using and updating SpiedieDocs!

In its current form, the Spiediedocs is set up to allow for easy addition and editing of content! This is done through programming of the navigation bar (largely through changes to toc.html).

# In Broad Strokes

## To Add Content

To add a new page to the SpiedieDocs, it's as easy as placing the new .md file into the "/docs/docs/" directory inside the sub-directory that is labelled under the sub-directory you want the new SpiedieDoc to appear under in the sidebar. Some differences exist now, which must be mentioned here:

1. It is now required (or suggested at the very least) to list the "nav_order" and "nav_exclude" tags in the file frontmatter. Here is an example of a new header:

```bash
--- 
title: Conda on Spiedie (intermediate)
layout: default 
images: []
nav_order: 21
nav_exclude: false
tags: [Conda, GPUCompute, Tensorflow, Tensorflow-GPU]
description: How to activate Conda on Spiedie and install new packages
---
```
these tags assist the toc.html, found inside the  _includes directory, sort and order the files as they appear on the sidebar. "nav_order" should compare all items in the <u>sub-directory</u> to each other and make sure they appear in that given order in the navigation bar. "nav_exclude" can be set to false for all items that you want listed in the navigation bar, but pages that are still being written or pages that are not meant to be navigated to intentionally (such as 404 pages, index.html landing pages, etc.).

You will need to put assets and images in the "/docs/assets/" folder as before, then reference to them as needed.

## To Rearrange Content

To add a subsection to Spiediedocs, just create a new directory within the "/docs/docs/" folder! You can then move or create .md files into that folder to have them listed under the new sub-item. 

In its current form, SpiedieDocs only allows for 1 sub-directory deep, but adding another layer is possible by relatively straightforward changes to the toc.html and directory structure.

# Behind the Scenes

Like with most Jekyll-built sites:
- the "/docs/_includes" directory houses scripts and object actions that are called as needed by other includes and layouts.
- the "/docs/_layouts" section lists the basic format that webpages will appear in. For now, the default.html is the only substantial webpage formatting that is available to be called in frontmatter. But additional types, such as blog posts or wiki pages, can be added as necessary.
- "/docs/_sass" lists style sheets and objects.
- "/docs/assets" houses assets references in the SPiediedocs
- Remaining files in "/docs/", apart from index.html, are there to assist website functioning.

# Known Problems

1. The search bar doesn't work for the current version of SpiedieDocs-DEV!
2. Since moving over, some links to other SpiedieDocs pages might be dead.
3. Some content is outdated
4. From trials and testing, some useless and unreferenced includes and html files might exist in the "/docs" directory.