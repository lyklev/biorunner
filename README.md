# Biorunner: a collection of bioinformatics tools

## Introduction

Biorunner is a way to quickly install a controlled set of tools widely used
in Life Sciences and Bioinformatics. For researchers, installing all tools
manually can be challanging; with this collection, you have one chorerent
set of all tools, with known versions, in a single image file.

Although developed for use on high-performance compute clusters in
supercomputing centres, you can install the tools on a local workstation
or even on your own computer, to have exactly the same environment locally
as on the supercomputing centre.

Biorunner uses *Singularity* [1] for packaging all applications in a single
image, and also needs it where running the applications. Installing
Biorunner involves putting the image your PATH environment, adding a wrapper
script that runs commands inside a Singularity container, and symbolic
links for all commands availble in the Biorunner image, pointing to the
wrapper script.


## Installing a pre-built image

## Rebuilding an image

For building your own image, you need, on the system where you are building
the image:

  * *singularity*; version 3 or later
  * root access
  * at least 5 Gigabytes of free disk space
  * a good network connection

Now, become root; as root

  1. first, set the environment variable SINGULARITY_TMPDIR to a path
     where you have at least 5 GB of free disk space.

     If you do not set this variable, singularity will use ''/var/tmp''.

     To set it to, for example, a directory called "/scratch", do
"""
    export SINGULARITY_TMPDIR=/scratch
"""

  2. Do
"""
    singularity build biorunner-2019b.sif biorunner.def
"""

That is it! This may take a while, but after the build, you have a container
image file "biorunner-2019b.sif". See INSTALLATION for further installation
instructions.

## Applications offered through Biorunner

Thefollowing applications are exposed through Biorunner:

### From Ubuntu

* bowtie2
* samtools
* ncbi-blast2
* minimap
* miniasm
* fastqc
* poretools
* clustal Omega
* clustal x
* SPAdes

### Through custom builds

* Deepbinner
* Nanopolish
* trimAl
* Filtlong
* Racon
* minimap2
* Pilon
* Unicycler
* Mauve
* PhyML
* Centrifuge
* Hmmer
* Prokka (v1.14.6)
* nanopack

 
