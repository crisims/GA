#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J metabat_analysis
#SBATCH --mail-type=ALL
#SBATCH --mail-user cristinadiazubieta@gmail.com

# Load modules
module load bioinfo-tools
module load MetaBat/2.12.1
# Your commands

metabat2 -i /home/crisdu/analyses_done/2_megahit/concatenated_contigs.fa -o /home/crisdu/analyses_done/3_metabat -t 2

#metabat output files will have a dot in their name, change the dot before running CheckM!!
