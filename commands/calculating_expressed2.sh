#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 4:00:00
#SBATCH -J htseq_analysis
#SBATCH --mail-type=ALL
#SBATCH --mail-user cristinadiazubieta@gmail.com

bin=(1 2 3 6 8 9 14 17 18 19 20 21 22 23 24 25)

for i in "${bin[@]}"
do
    echo "##############################"
    echo "37 Bin ${i}"
    python3 calculating_expressed2.py /home/crisdu/analyses_done/5_prokka/bin_$i/annotation_bin$i.gff /home/crisdu/analyses_done/7.1_htseq/bin_$i.out
done

for i in "${bin[@]}"
do
    echo "##############################"
    echo "39 Bin ${i}"
    python3 calculating_expressed2.py /home/crisdu/analyses_done/5_prokka/bin_$i/annotation_bin$i.gff /home/crisdu/analyses_done/7.1_htseq/bin_$i.out
done
