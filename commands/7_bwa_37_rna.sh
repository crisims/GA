#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 07:00:00
#SBATCH -J bwa_analysis
#SBATCH --mail-type=ALL
#SBATCH --mail-user cristinadiazubieta@gmail.com

# Load modules
module load bioinfo-tools
module load bwa

# Your commands
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_1.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_1_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_2.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_2_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_3.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_3_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_4.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_4_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_5.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_5_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_6.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_6_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_7.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_7_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_8.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_8_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_9.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_9_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_10.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_10_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_11.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_11_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_12.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_12_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_13.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_13_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_14.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_14_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_15.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_15_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_16.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_16_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_17.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_17_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_18.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_18_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_19.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_19_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_20.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_20_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_21.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_21_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_22.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_22_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_23.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_23_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_24.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_24_mapped_pair37.sam
bwa mem -P -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_25.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > bin_25_mapped_pair37.sam

#-P In the paired-end mode, perform SW to rescue missing hits only but do not try to find hits that fit a proper pair.
