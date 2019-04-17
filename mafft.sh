#!/bin/bash

#loading in the mafft module here
module load mafft/7.305
#this aligns the files using maffts automatic settings and places the output in a new fasta file
mafft --auto unedited_sequences.fasta > aligned_sequences.fasta

