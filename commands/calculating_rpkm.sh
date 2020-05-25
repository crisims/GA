#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 4:00:00
#SBATCH -J htseq_analysis
#SBATCH --mail-type=ALL
#SBATCH --mail-user cristinadiazubieta@gmail.com

#Commands, only bins with a low level of contamination. FIRST ANALYSIS
bin=(1 2 3 6 8 9 14 17 18 19 20 21 22 23 24 25)

for i in "${bin[@]}"
do
 python calculating_rpkm.py /home/crisdu/analyses_done/5_prokka/bin_$i/annotation_bin$i.gff /home/crisdu/analyses_done/7_htseq/bin_$i.out /home/crisdu/analyses_done/python_analyses/first_analysis/rpkm_bin$i
done

