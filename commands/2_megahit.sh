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
megahit -1 ~/DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz -2 ~/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz --kmin-1pass --k-min 65 --k-max 105 --k-step 10 -t 2 -o /home/crisdu/GA/analyses_done/2_megahit
megahit -1 ~/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz -2 ~/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz --kmin-1pass --k-min 65 --k-max 105 --k-step 10 -t 2 -o /home/crisdu/GA/analyses_done/2_megahit

