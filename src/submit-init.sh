#!/bin/bash 
#SBATCH --partition=skylake
#SBATCH -o %j.out 
#SBATCH -e %j.err
#SBATCH --time=10:00:00

. ~/miniconda3/etc/profile.d/conda.sh
conda activate r-41

Rscript src/init-speed.R -m GT

Rscript src/init-speed.R -m noGT
