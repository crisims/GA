#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J Fastqc_analysis
#SBATCH --mail-type=ALL
#SBATCH --mail-user cristinadiazubieta@gmail.com

# Load modules
module load bioinfo-tools
module load FastQC/0.11.8

# Your commands
fastqc -f fastq -t 2 -o /home/crisdu/analyses_done/1_Fastqc/RNA_trimmed_fastqc /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/*.fastq.gz
