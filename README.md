# ScriptingProject
Charlotte Benedict, Corinthia Black, Miles Horne, Matt Welc, Courtney Weyand

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
-	phytools
-	devtools
-	vqv/ggbiplot
-	ape



