#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 4:00:00
#SBATCH -J htseq_analysis
#SBATCH --mail-type=ALL
#SBATCH --mail-user cristinadiazubieta@gmail.com

# Load modules
module load bioinfo-tools
module load samtools/1.9


#commands
bin=(1 2 3 6 8 9 14 17 18 19 20 21 22 23 24 25)

for i in "${bin[@]}"
do
    samtools flagstat bin_$i_mapped_pair37_sorted.bam > home/crisdu/analyses_done/6.1_bwa_results/37_bin$i.txt
    samtools flagstat bin_$i_mapped_pair39_sorted.bam > home/crisdu/analyses_done/6.1_bwa_results/39_bin$i.txt
done
