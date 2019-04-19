# ScriptingProject: Phylomorphospace
Authors: Charlotte Benedict, Corinthia Black, Miles Horne, Matt Welc, Courtney Weyand
Auburn University; BIOL 7180 "Scripting for Biologists"

## Phylogenetics

## MAFFT Alignment

#!/bin/bash

#loading in the mafft module here

module load mafft/7.305
  
#this aligns the files using maffts automatic settings and places the output in a new fasta file

mafft --auto unedited_sequences.fasta > aligned_sequences.fasta

---
## Shape Analyses

*Note* -- if you do not have the following R packages installed, un-comment the installation lines
-	phytools (https://cran.r-project.org/web/packages/phytools/index.html)
-	devtools (https://cran.r-project.org/web/packages/devtools/index.html)
-	vqv/ggbiplot (https://cran.r-project.org/web/packages/ggplot2/index.html)
-	ape (https://cran.r-project.org/web/packages/ape/index.html) 

All of the R code required for the shape analyses is in the file 
"Toothdata.Rmd".
This file is formatted for optimization in R studio, but it should run fine 
in "standard R". 
*what an r markdown file is

*put in chunks of code and explain them

