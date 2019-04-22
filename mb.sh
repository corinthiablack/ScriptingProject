#!/bin/sh
#
# Creates new directory and changes to it 
mkdir mb_output
cd mb_output
# load the MrBayes environment
source /opt/asn/etc/asn-bash-profiles-special/modules.sh
module load mrbayes
# Run my job
mb ../catfishes_tree.nex >log.txt

