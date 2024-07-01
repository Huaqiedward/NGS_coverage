#!/bin/bash
# Install wget
conda install -c anaconda wget
echo "wget installed."
# Download the CRAM file
wget ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/data_collections/1000_genomes_project/data/CEU/NA12878/exome_alignment/NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.cram
echo "The CRAM file has been downloaded."
# Install samtools
conda install -c bioconda samtools
echo "samtools installed."
# Index the CRAM file
samtools index NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.cram
echo "The CRAM file indexed."
# Calculate detailed base-by-base coverage
samtools depth -b hg38_Twist_ILMN_Exome_2.5_Panel_annotated.BED NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.cram > depth.txt
echo "Coverage calculated."
# Visualize the coverage information on each human chromosome using a Python script
python plot_coverage.py
echo "Graphs plotted. Done!"