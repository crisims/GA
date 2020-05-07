#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 4:00:00
#SBATCH -J bwa_analysis_37
#SBATCH --mail-type=ALL
#SBATCH --mail-user cristinadiazubieta@gmail.com

# Load modules
module load bioinfo-tools
module load htseq/0.9.1

#This script takes one or more alignment files in SAM/BAM format and a feature file in GFF format and calculates for each feature the number of reads mapping to it
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_1_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_1_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_1/annotation_bin1.gff > /home/crisdu/analyses_done/7_htseq/bin_1.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_2_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_2_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_2/annotation_bin2.gff > /home/crisdu/analyses_done/7_htseq/bin_2.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_3_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_3_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_3/annotation_bin3.gff > /home/crisdu/analyses_done/7_htseq/bin_3.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_4_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_4_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_4/annotation_bin4.gff > /home/crisdu/analyses_done/7_htseq/bin_4.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_5_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_5_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_5/annotation_bin5.gff > /home/crisdu/analyses_done/7_htseq/bin_5.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_6_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_6_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_6/annotation_bin6.gff > /home/crisdu/analyses_done/7_htseq/bin_6.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_7_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_7_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_7/annotation_bin7.gff > /home/crisdu/analyses_done/7_htseq/bin_7.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_8_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_8_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_8/annotation_bin8.gff > /home/crisdu/analyses_done/7_htseq/bin_8.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_9_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_9_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_9/annotation_bin9.gff > /home/crisdu/analyses_done/7_htseq/bin_9.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_10_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_10_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_10/annotation_bin10.gff > /home/crisdu/analyses_done/7_htseq/bin_10.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_11_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_11_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_11/annotation_bin11.gff > /home/crisdu/analyses_done/7_htseq/bin_11.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_12_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_12_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_12/annotation_bin12.gff > /home/crisdu/analyses_done/7_htseq/bin_12.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_13_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_13_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_13/annotation_bin13.gff > /home/crisdu/analyses_done/7_htseq/bin_13.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_14_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_14_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_14/annotation_bin14.gff > /home/crisdu/analyses_done/7_htseq/bin_14.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_15_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_15_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_15/annotation_bin15.gff > /home/crisdu/analyses_done/7_htseq/bin_15.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_16_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_16_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_16/annotation_bin16.gff > /home/crisdu/analyses_done/7_htseq/bin_16.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_17_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_17_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_17/annotation_bin17.gff > /home/crisdu/analyses_done/7_htseq/bin_17.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_18_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_18_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_18/annotation_bin18.gff > /home/crisdu/analyses_done/7_htseq/bin_18.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_19_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_19_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_19/annotation_bin19.gff > /home/crisdu/analyses_done/7_htseq/bin_19.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_20_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_20_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_20/annotation_bin20.gff > /home/crisdu/analyses_done/7_htseq/bin_20.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_21_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_21_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_21/annotation_bin21.gff > /home/crisdu/analyses_done/7_htseq/bin_21.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_22_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_22_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_22/annotation_bin22.gff > /home/crisdu/analyses_done/7_htseq/bin_22.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_23_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_23_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_23/annotation_bin23.gff > /home/crisdu/analyses_done/7_htseq/bin_23.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_24_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_24_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_24/annotation_bin24.gff > /home/crisdu/analyses_done/7_htseq/bin_24.out
htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_25_mapped_pair37_sorted.bam /home/crisdu/analyses_done/6_bwa/bin_25_mapped_pair39_sorted.bam /home/crisdu/analyses_done/5_prokka/bin_25/annotation_bin25.gff > /home/crisdu/analyses_done/7_htseq/bin_25.out


# -f {sam,bam}, --format {sam,bam} type of <alignment_file> data, either 'sam' or 'bam' (default: sam)

# -r {pos,name}, --order {pos,name} 'pos' or 'name'. Sorting order of <alignment_file> (default: name).

# -t FEATURETYPE, --type FEATURETYPE

# -i IDATTR, --idattr IDATTR GFF attribute to be used as feature ID (default, suitable for Ensembl GTF files: gene_id)
