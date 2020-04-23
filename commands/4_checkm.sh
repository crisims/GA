#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 04:00:00
#SBATCH -J checkm_analysis
#SBATCH --mail-type=ALL
#SBATCH --mail-user cristinadiazubieta@gmail.com

# Load modules
module load bioinfo-tools
module load CheckM/1.0.12

# Your commands

checkm lineage_wf -t 4 -x fa --reduced_tree /home/crisdu/analyses_done/3_metabat/ \
/home/crisdu/analyses_done/4_checkm/
