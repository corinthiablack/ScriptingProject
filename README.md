# ScriptingProject: Phylomorphospace
Authors: Charlotte Benedict, Corinthia Black, Miles Horne, Matt Welc, Courtney Weyand

Auburn University; BIOL 7180 "Scripting for Biologists"

## Phylogenetics

### MAFFT Alignment

```#!/bin/bash```

Load the MAFFT module here

```module load mafft/7.305```
  
This will align the files using MAFFT automatic settings and creates an output fasta file

```mafft --auto unedited_sequences.fasta > aligned_sequences.fasta```

### MrBayes

```#!/bin/sh```

This creates new directory and changes to it 

```mkdir mb_output```
```cd mb_output```

Load the MrBayes environment here

```source /opt/asn/etc/asn-bash-profiles-special/modules.sh```
```module load mrbayes```

Run my job

```mb ../catfishes_practice.nex >log.txt```

---
## Shape Analyses

We will conduct shape analyses using the R statistical software package. The following packages are required 
(follow links for detailed documentation)
-	[phytools](https://cran.r-project.org/web/packages/phytools/index.html)
-	[devtools](https://cran.r-project.org/web/packages/devtools/index.html)
-	[vqv/ggbiplot](https://github.com/vqv/ggbiplot) ***This package must be downloaded from github.com, 
as it is not on the official R site.
-	[ape](https://cran.r-project.org/web/packages/ape/index.html) 

*Note* -- if you do not have the listed R packages installed, un-comment the installation lines in 
Toothdata.Rmd

All of the R code required for the shape analyses is in the file 
"Toothdata.Rmd".
This file is formatted for optimization in R studio, but it should run fine 
in "standard R". 
*what an r markdown file is

*put in chunks of code and explain them*
Format `code` inline with backticks

Blocks of code can be done by indenting:

    print("Hello Word")

Or by surrounding the line with triple backticks:

```
print("Hello World")
```

```python
# Note that markdown *syntax* is **ignored** in here
for i in range(10):
    s = "Hello World " + str(i)
    print(s)
```
