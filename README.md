# ScriptingProject: Phylomorphospace
Authors: Charlotte Benedict, Corinthia Black, Miles Horne, Matt Welc, Courtney Weyand

Auburn University; BIOL 7180 "Scripting for Biologists"

## Phylogenetics
We will conduct phylogenetic analyses using MrBayes through the ASC. The following modules are required
(follow links for detailed documentation)
-       [MAFFT] (https://mafft.cbrc.jp/alignment/software/)
-       [PartitionFinder] (http://www.robertlanfear.com/partitionfinder/tutorial/) ***This package is not found on the ASC. You are not required to run this analysis. The file you need is found on GitHub. 
-       [MrBayes] (http://nbisweden.github.io/MrBayes/)

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
-       [phytools](https://cran.r-project.org/web/packages/phytools/index.html)
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

### Morphospace
Create data frame from morphological data:
```r
Teeth=read.delim("ToothMeasurements.txt", sep="\t", header = TRUE, row.names = 1)
```

Run your PCA (Principal Component Analysis) of the morphological data and save it to be used in the next steps:
```r
tooth.pca=prcomp(Teeth, center = TRUE, scale. = TRUE)
tooth.pca$names=row.names(Teeth)
summary(tooth.pca)
pca=tooth.pca$x
pca.1.2=pca[,c(1,2)]
```

Create plot of PC1 x PC2 (the first two PCs typically capture the vast majority of the variation in shape):
```r
g=ggbiplot(tooth.pca, obs.scale = 1, var.scale = 1, circle = TRUE) + geom_text(aes(label=tooth.pca$names),hjust=0, vjust=0, size=1.5)
g=g+ylim(-4,4)
g=g+xlim(-4,8)
g=g+theme_classic()
print(g)
```
![PCA](https://github.com/corinthiablack/ScriptingProject/blob/master/pictures/CatfishPCA.jpg "It should look a little something like this.")

### Phylomorphospace
```r
# Read nexus phylogeny
tree=read.nexus("catfishes_tree.txt")
# Save one copy of the tree as a phylo type
tree=tree$con_50_majrule
# Root tree to outgroup
tree=root(tree, "KY858079_1_Vandellia_sp_1", resolve.root = TRUE)
# Create list of species names to trim the tree
species=row.names(Teeth)
# Trim the tree to match the list of species and tip labels
trimmed.tree=drop.tip(tree,tree$tip.label[-match(species, tree$tip.label)])
```

```r
# Find the phylosignal: K>1 = convergence of morphology, K<1 = morphology changes with phylogeny (divergence)
phylosig(trimmed.tree, pca.1.2, method="K", test = TRUE)
# Generate phylomorphospace from trimmed tree and pca coords 
phylomorphospace(trimmed.tree, pca.1.2, label = c("horizontal"), node.size=c(.5,1), xlim=c(-13,8))

```
