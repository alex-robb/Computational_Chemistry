#!/bin/bash
#SBATCH --ntasks=32
#SBATCH --mem=38000MB
#SBATCH --time=48:00:00
#SBATCH --mail-user=<insert email address here or delete line 5 and 6>
#SBATCH --mail-type=all

module load gcc/13.3.0
module load qchem/6.2.0

export QCSCRATCH=/scratch1/<insert usc-username>  # this needs to be replaced with your own path

cd $SLURM_SUBMIT_DIR
hostname
qchem -nt 16 -save $1.inp $1.out
# Uncomment if you need scratch files for NO, NDO, or NTO:
# cp -R "$TMPDIR" "$SLURM_SUBMIT_DIR"
