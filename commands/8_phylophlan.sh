#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 07:00:00
#SBATCH -J phylophlan_analysis
#SBATCH --mail-type=ALL
#SBATCH --mail-user cristinadiazubieta@gmail.com

# Load modules
module load bioinfo-tools
module load phylophlan/0.99
module load biopython
module load python/2.7.15
module load FastTree/2.1.10
module load muscle/3.8.1551
module load usearch/5.2.32

# set this to the directory where you want to store your phylophlan results
outdir = "/home/crisdu/analyses_done/8_phylo"
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

# symlinks to input files, NOT FINISHED!!
bin=(1 2 3 6 8 9 14 17 18 19 20 21 22 23 24 25)

for i in "${bin[@]}"
do
    ln -sf /home/crisdu/analyses_done/5_prokka/bin_$i/annotation_bin$i.faa $outdir/input/metagenome
done

# Your commands
cd $outdir
phylophlan.py -i -t metagenome --nproc 2

#usage: phylophlan.py [-h] [-i] [-u] [-t] [--tax_test TAX_TEST] [-c]
#                     [--cleanall] [--nproc N] [-v]
#                     [PROJECT NAME]


#PhyloPhlAn also implements taxonomic curation, estimation, and insertion operations.

