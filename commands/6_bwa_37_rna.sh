#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 3:00:00
#SBATCH -J bwa_analysis_37
#SBATCH --mail-type=ALL
#SBATCH --mail-user cristinadiazubieta@gmail.com

# Load modules
module load bioinfo-tools
module load bwa
module load samtools/1.9

# Your commands
#BIN1
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_1.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_1.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_1_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_1_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_1_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_1_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_1_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_1_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_1_mapped_pair37.bam

#BIN2
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_2.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_2.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_2_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_2_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_2_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_2_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_2_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_2_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_2_mapped_pair37.bam

#BIN3
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_3.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_3.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_3_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_3_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_3_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_3_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_3_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_3_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_3_mapped_pair37.bam

#BIN4
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_4.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_4.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_4_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_4_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_4_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_4_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_4_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_4_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_4_mapped_pair37.bam

#BIN5
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_5.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_5.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_5_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_5_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_5_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_5_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_5_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_5_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_5_mapped_pair37.bam

#BIN6
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_6.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_6.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_6_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_6_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_6_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_6_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_6_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_6_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_6_mapped_pair37.bam

#BIN7
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_7.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_7.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_7_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_7_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_7_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_7_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_7_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_7_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_7_mapped_pair37.bam

#BIN8
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_8.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_8.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_8_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_8_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_8_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_8_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_8_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_8_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_8_mapped_pair37.bam

#BIN9
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_9.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_9.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_9_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_9_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_9_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_9_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_9_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_9_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_9_mapped_pair37.bam

#BIN10
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_10.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_10.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_10_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_10_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_10_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_10_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_10_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_10_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_10_mapped_pair37.bam

#BIN11
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_11.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_11.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_11_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_11_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_11_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_11_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_11_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_11_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_11_mapped_pair37.bam

#BIN12
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_12.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_12.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_12_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_12_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_12_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_12_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_12_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_12_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_12_mapped_pair37.bam

#BIN13
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_13.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_13.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_13_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_13_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_13_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_13_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_13_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_13_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_13_mapped_pair37.bam

#BIN14
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_14.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_14.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_14_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_14_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_14_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_14_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_14_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_14_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_14_mapped_pair37.bam

#BIN15
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_15.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_15.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_15_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_15_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_15_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_15_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_15_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_15_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_15_mapped_pair37.bam

#BIN16
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_16.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_16.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_16_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_16_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_16_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_16_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_16_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_16_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_16_mapped_pair37.bam

#BIN17
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_17.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_17.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_17_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_17_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_17_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_17_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_17_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_17_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_17_mapped_pair37.bam

#BIN18
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_18.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_18.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_18_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_18_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_18_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_18_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_18_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_18_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_18_mapped_pair37.bam

#BIN19
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_19.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_19.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_19_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_19_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_19_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_19_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_19_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_19_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_19_mapped_pair37.bam

#BIN20
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_20.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_20.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_20_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_20_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_20_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_20_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_20_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_20_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_20_mapped_pair37.bam

#BIN21
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_21.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_21.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_21_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_21_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_21_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_21_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_21_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_21_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_21_mapped_pair37.bam

#BIN22
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_22.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_22.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_22_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_22_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_22_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_22_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_22_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_22_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_22_mapped_pair37.bam

#BIN23
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_23.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_23.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_23_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_23_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_23_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_23_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_23_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_23_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_23_mapped_pair37.bam

#BIN24
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_24.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_24.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_24_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_24_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_24_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_24_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_24_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_24_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_24_mapped_pair37.bam

#BIN25
bwa index /home/crisdu/analyses_done/3_metabat/3_metabat_25.fa
bwa mem -t 2 /home/crisdu/analyses_done/3_metabat/3_metabat_25.fa /home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz > /home/crisdu/analyses_done/6_bwa/bin_25_mapped_pair37.sam
samtools view -S -b /home/crisdu/analyses_done/6_bwa/bin_25_mapped_pair37.sam > /home/crisdu/analyses_done/6_bwa/bin_25_mapped_pair37.bam
samtools sort /home/crisdu/analyses_done/6_bwa/bin_25_mapped_pair37.bam > /home/crisdu/analyses_done/6_bwa/bin_25_mapped_pair37_sorted.bam
rm /home/crisdu/analyses_done/6_bwa/bin_25_mapped_pair37.sam
rm /home/crisdu/analyses_done/6_bwa/bin_25_mapped_pair37.bam
