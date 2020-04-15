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
module load megahit/1.1.2

# Your commands
megahit -1 /proj/g2020008/4_Thrash_2017/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz -2 /proj/g2020008/4_Thrash_2017/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz --kmin-1pass --k-min 65 --k-max 105 --k-step 10 -t 2 -o /home/crisdu/GA/analyses_done/2_megahit/results_pair2
