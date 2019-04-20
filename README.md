# ScriptingProject: Phylomorphospace
Authors: Charlotte Benedict, Corinthia Black, Miles Horne, Matt Welc, Courtney Weyand
Auburn University; BIOL 7180 "Scripting for Biologists"

## Phylogenetics

### MAFFT Alignment

```#!/bin/bash```

Loading in the mafft module here

```module load mafft/7.305```
  
This aligns the files using maffts automatic settings and places the output in a new fasta file

```mafft --auto unedited_sequences.fasta > aligned_sequences.fasta```

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
