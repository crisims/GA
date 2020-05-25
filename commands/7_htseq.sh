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
module load htseq/0.9.1

#This script takes one or more alignment files in SAM/BAM format and a feature file in GFF format and calculates for each feature the number of reads mapping to it
#only taking the bins with less than 11.11% of contamination
bin=(1 2 3 6 8 9 14 17 18 19 20 21 22 23 24 25)

for i in "${bin[@]}"
do
    htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_1_mapped_pair37_sorted.bam <(sed '/##FASTA/,$d' /home/crisdu/analyses_done/5_prokka/bin_$i/annotation_bin$i.gff) > /home/crisdu/analyses_done/7.1_htseq/37_bin_$i.out
    htseq-count -f bam -r pos -t CDS -i ID -s no /home/crisdu/analyses_done/6_bwa/bin_1_mapped_pair39_sorted.bam <(sed '/##FASTA/,$d' /home/crisdu/analyses_done/5_prokka/bin_$i/annotation_bin$i.gff) > /home/crisdu/analyses_done/7.1_htseq/39_bin_$i.out
done

# -f {sam,bam}, --format {sam,bam} type of <alignment_file> data, either 'sam' or 'bam' (default: sam)

# -r {pos,name}, --order {pos,name} 'pos' or 'name'. Sorting order of <alignment_file> (default: name).

# -t FEATURETYPE, --type FEATURETYPE

# -i IDATTR, --idattr IDATTR GFF attribute to be used as feature ID (default, suitable for Ensembl GTF files: gene_id)
