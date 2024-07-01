#NGS data coverage analysis
The shell script coverage.sh can be used to compute the depth of coverage at each position of human chromosomes achieved by a Low coverage WGS or whole exome sequencing project. A CRAM file of sample NA12878 will be downloaded by the script, which contains aligned reads from the sequencing process. The SAMtools will be installed next, and employed to index the CRAM file and calculate base-by-base coverage for the regions of interest. The regions of interest is defined by the Illumina Exome 2.5 Panel HG38 BED File that can be downloaded from https://support.illumina.com/downloads/Illumina-dna-prep-exome-20-bed-files.html. A python script was written to visualize the sequencing depth for the regions of interest on the human chromosomes. 

Below are the commands to run the coverage.sh script and generate the line graphs.
$ chmod +x coverage.sh
$ ./coverage.sh
