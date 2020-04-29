#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 07:00:00
#SBATCH -J phylophlan_analysis
#SBATCH --mail-type=ALL
#SBATCH --mail-user cristinadiazubieta@gmail.com

# Load modules
module load bioinfo-tools
module load  phylophlan/0.99
module load  python/2.7.11
module load  biopython/1.68-py3
module load  FastTree/2.1.10
module load  muscle/3.8.1551
module load  usearch/5.2.32

# set this to the directory where you want to store your phylophlan results
outdir="/home/crisdu/analyses_done/6_phylo"
# create the directories that phylophlan looks for:
# when you run phylophlan you specify a project name, which it looks for in the "input" directory
# in this case the project name is "metagenome"
# this is also where you should put symlinks to your input files
mkdir -p $outdir/input/metagenome
mkdir -p $outdir/output
mkdir -p $outdir/data/ppaalns
# symlink phylophlan data files
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/data/*.bz2 $outdir/data/
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/data/ppaalns/*.bz2 $outdir/data/ppaalns/
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/data/ppafull.tax.txt $outdir/data/
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/taxcuration/ $outdir/taxcuration

ln -sf /home/crisdu/analyses_done/5_prokka/bin_1/annotation_bin1.faa $outdir/input/metagenome
ln -sf /home/crisdu/analyses_done/5_prokka/bin_2/annotation_bin2.faa $outdir/input/metagenome
ln -sf /home/crisdu/analyses_done/5_prokka/bin_3/annotation_bin3.faa $outdir/input/metagenome
ln -sf /home/crisdu/analyses_done/5_prokka/bin_4/annotation_bin4.faa $outdir/input/metagenome

# Your commands

cd $outdir/output/
phylophlan.py -i -t $outdir/input/metagenome --nproc 4

#usage: phylophlan.py [-h] [-i] [-u] [-t] [--tax_test TAX_TEST] [-c]
#                     [--cleanall] [--nproc N] [-v]
#                     [PROJECT NAME]


#PhyloPhlAn also implements taxonomic curation, estimation, and insertion operations.
