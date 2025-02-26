#!/bin/bash

#PBS -q gpuvolta
#PBS -P p00
#PBS -l ncpus=48
#PBS -l ngpus=4
#PBS -l mem=128GB
#PBS -l walltime=35:00:00
#PBS -l storage=scratch/p00
#PBS -l jobfs=100GB

cd /scratch/um09/hl4138
module load python3/3.8.5 cuda/11.0.3
module list

source molformer-venv/bin/activate
cd molformer/finetune

./run_finetune_u0.sh
