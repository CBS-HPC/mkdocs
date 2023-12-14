#!/bin/bash
# shellcheck disable=SC2206
# THIS FILE IS GENERATED BY AUTOMATION SCRIPT! PLEASE REFER TO ORIGINAL SCRIPT!
# THIS FILE IS MODIFIED AUTOMATICALLY FROM TEMPLATE AND SHOULD BE RUNNABLE!

#SBATCH --job-name=SlurmTest_0525-1213
#SBATCH --output=SlurmTest_0525-1213.log

### This script works for any number of nodes, Ray will find and manage all resources
#SBATCH --nodes=3
#SBATCH --exclusive
### Give all resources to a single Ray task, ray can manage the resources internally
#SBATCH --ntasks-per-node=1
##SBATCH --gpus-per-task=${NUM_GPUS_PER_NODE} #De-activated by KGP 230317

# Load modules or your own conda environment here
# module load pytorch/v1.4.0-gpu
# conda activate ${CONDA_ENV}


# ===== DO NOT CHANGE THINGS HERE UNLESS YOU KNOW WHAT YOU ARE DOING =====

nodes=$(scontrol show hostnames "$SLURM_JOB_NODELIST") # Getting the node names
nodes_array=($nodes)

for ((i = 0; i <= SLURM_JOB_NUM_NODES-1; i++)); do
  node_i=${nodes_array[$i]}
  hostnames[$i]=$(srun -w "$node_i" hostname)  
done

echo $hostnames > hostnames.txt

# ===== Call your code below =====
echo "RUNNING CODE: Rscript --vanilla /work/SLURM_scripts/230330_tidyModel-RandomForrest2.r"
Rscript --vanilla /work/SLURM_scripts/230330_tidyModel-RandomForrest2.r 8 1 ${LIBS}
