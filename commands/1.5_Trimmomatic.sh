#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:30:00
#SBATCH -J Trim_RNA_untrimmed
#SBATCH --mail-type=ALL
#SBATCH --mail-user cristinadiazubieta@gmail.com
# Load modules
module load bioinfo-tools
module load trimmomatic

# Your commands
#first pair 37
trimmomatic PE -threads 2 -phred33 \
/proj/g2020008/4_Thrash_2017/RNA_untrimmed/SRR4342137.1.fastq.gz \
/proj/g2020008/4_Thrash_2017/RNA_untrimmed/SRR4342137.2.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_unpairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_pairedr.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342137_unpairedr.fastq.gz \
ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:30 MINLEN:50

#second pair 39
trimmomatic PE -threads 2 -phred33 \
/proj/g2020008/4_Thrash_2017/RNA_untrimmed/SRR4342139.1.fastq.gz \
/proj/g2020008/4_Thrash_2017/RNA_untrimmed/SRR4342139.2.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342139_pairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342139_unpairedf.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342139_pairedr.fastq.gz \
/home/crisdu/analyses_done/1.5_Trim/RNA_trimmed/SRR4342139_unpairedr.fastq.gz \
ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:30 MINLEN:50

#structure that follows
#PE [-version] [-threads <threads>] [-phred33|-phred64] [-trimlog <trimLogFile>] [-quiet] [-validatePairs] [-basein <inputBase> |
#<inputFile1> <inputFile2>] [-baseout <outputBase> | <outputFile1P> <outputFile1U> <outputFile2P> <outputFile2U>] <trimmer1>...
