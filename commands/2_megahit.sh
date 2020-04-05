#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 07:00:00
#SBATCH -J megahit_analysis
#SBATCH --mail-type=ALL
#SBATCH --mail-user cristinadiazubieta@gmail.com
# Load modules
module load bioinfo-tools
module load megahit

# Your commands
megahit –kmin-1pass -t 2 -o /home/crisdu/GA/analyses_done/2_megahit/DNA_trimmed_megahit /home/crisdu/4_Thrash_2017/DNA_trimmed/*.fastq.gz
megahit –kmin-1pass -t 2 -o /home/crisdu/GA/analyses_done/2_megahit/RNA_untrimmed_megahit /home/crisdu/4_Thrash_2017/RNA_untrimmed/*.fastq.gz

