#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J metaquast_analysis
#SBATCH --mail-type=ALL
#SBATCH --mail-user cristinadiazubieta@gmail.com

# Load modules
module load bioinfo-tools
module load quast

# Your commands
metaquast.py /home/crisdu/analyses_done/2_megahit/results_pair1/final.contigs.fa \
-o /home/crisdu/analyses_done/2.5_metaq -t 2 \
-1 /proj/g2020008/4_Thrash_2017/DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz \
-2 /proj/g2020008/4_Thrash_2017/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz
metaquast.py /home/crisdu/analyses_done/2_megahit/results_pair2/final.contigs.fa \
-o /home/crisdu/analyses_done/2.5_metaq -t 2 \
-1 /proj/g2020008/4_Thrash_2017/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz \
-2 /proj/g2020008/4_Thrash_2017/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz
