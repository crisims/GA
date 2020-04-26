#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J prokka_analysis
#SBATCH --mail-type=ALL
#SBATCH --mail-user cristinadiazubieta@gmail.com

# Load modules
module load bioinfo-tools
module load prokka/1.12-12547ca

# Your commands

prokka --metagenome --prefix annotation_bin1 --outdir /home/crisdu/analyses_done/5_prokka/bin_1 /home/crisdu/analyses_done/3_metabat/3_metabat_1.fa
prokka --metagenome --prefix annotation_bin2 --outdir /home/crisdu/analyses_done/5_prokka/bin_2 /home/crisdu/analyses_done/3_metabat/3_metabat_2.fa
prokka --metagenome --prefix annotation_bin3 --outdir /home/crisdu/analyses_done/5_prokka/bin_3 /home/crisdu/analyses_done/3_metabat/3_metabat_3.fa
prokka --metagenome --kingdom Archaea --prefix annotation_bin4 --outdir /home/crisdu/analyses_done/5_prokka/bin_4 /home/crisdu/analyses_done/3_metabat/3_metabat_4.fa
prokka --metagenome --prefix annotation_bin5 --outdir /home/crisdu/analyses_done/5_prokka/bin_5 /home/crisdu/analyses_done/3_metabat/3_metabat_5.fa
prokka --metagenome --prefix annotation_bin6 --outdir /home/crisdu/analyses_done/5_prokka/bin_6 /home/crisdu/analyses_done/3_metabat/3_metabat_6.fa
prokka --metagenome --prefix annotation_bin7 --outdir /home/crisdu/analyses_done/5_prokka/bin_7 /home/crisdu/analyses_done/3_metabat/3_metabat_7.fa
prokka --metagenome --kingdom Archaea --prefix annotation_bin8 --outdir /home/crisdu/analyses_done/5_prokka/bin_8 /home/crisdu/analyses_done/3_metabat/3_metabat_8.fa
prokka --metagenome --prefix annotation_bin9 --outdir /home/crisdu/analyses_done/5_prokka/bin_9 /home/crisdu/analyses_done/3_metabat/3_metabat_9.fa
prokka --metagenome --prefix annotation_bin10 --outdir /home/crisdu/analyses_done/5_prokka/bin_10 /home/crisdu/analyses_done/3_metabat/3_metabat_10.fa
prokka --metagenome --kingdom Archaea --prefix annotation_bin11 --outdir /home/crisdu/analyses_done/5_prokka/bin_11 /home/crisdu/analyses_done/3_metabat/3_metabat_11.fa
prokka --metagenome --prefix annotation_bin12 --outdir /home/crisdu/analyses_done/5_prokka/bin_12 /home/crisdu/analyses_done/3_metabat/3_metabat_12.fa
prokka --metagenome --prefix annotation_bin13 --outdir /home/crisdu/analyses_done/5_prokka/bin_13 /home/crisdu/analyses_done/3_metabat/3_metabat_13.fa
prokka --metagenome --prefix annotation_bin14 --outdir /home/crisdu/analyses_done/5_prokka/bin_14 /home/crisdu/analyses_done/3_metabat/3_metabat_14.fa
prokka --metagenome --prefix annotation_bin15 --outdir /home/crisdu/analyses_done/5_prokka/bin_15 /home/crisdu/analyses_done/3_metabat/3_metabat_15.fa
prokka --metagenome --kingdom Archaea --prefix annotation_bin16 --outdir /home/crisdu/analyses_done/5_prokka/bin_16 /home/crisdu/analyses_done/3_metabat/3_metabat_16.fa
prokka --metagenome --prefix annotation_bin17 --outdir /home/crisdu/analyses_done/5_prokka/bin_17 /home/crisdu/analyses_done/3_metabat/3_metabat_17.fa
prokka --metagenome --prefix annotation_bin18 --outdir /home/crisdu/analyses_done/5_prokka/bin_18 /home/crisdu/analyses_done/3_metabat/3_metabat_18.fa
prokka --metagenome --prefix annotation_bin19 --outdir /home/crisdu/analyses_done/5_prokka/bin_19 /home/crisdu/analyses_done/3_metabat/3_metabat_19.fa
prokka --metagenome --prefix annotation_bin20 --outdir /home/crisdu/analyses_done/5_prokka/bin_20 /home/crisdu/analyses_done/3_metabat/3_metabat_20.fa
prokka --metagenome --kingdom Archaea --prefix annotation_bin21 --outdir /home/crisdu/analyses_done/5_prokka/bin_21 /home/crisdu/analyses_done/3_metabat/3_metabat_21.fa
prokka --metagenome --prefix annotation_bin22 --outdir /home/crisdu/analyses_done/5_prokka/bin_22 /home/crisdu/analyses_done/3_metabat/3_metabat_22.fa
prokka --metagenome --prefix annotation_bin23 --outdir /home/crisdu/analyses_done/5_prokka/bin_23 /home/crisdu/analyses_done/3_metabat/3_metabat_23.fa
prokka --metagenome --prefix annotation_bin24 --outdir /home/crisdu/analyses_done/5_prokka/bin_24 /home/crisdu/analyses_done/3_metabat/3_metabat_24.fa
prokka --metagenome --prefix annotation_bin25 --outdir /home/crisdu/analyses_done/5_prokka/bin_25 /home/crisdu/analyses_done/3_metabat/3_metabat_25.fa


#SOME MIGHT BE ARCHAEA in that case write --kingdom Archaea
