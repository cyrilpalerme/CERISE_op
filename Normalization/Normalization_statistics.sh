#!/bin/bash -f
#$ -N Normalization_CERISE
#$ -l h_rt=24:00:00
#$ -S /bin/bash
#$ -pe shmem-1 1
#$ -l h_rss=30G,mem_free=30G,h_data=30G
#$ -q research-r8.q
#$ -t 1-1
##$ -j y
#$ -m ba
#$ -o /home/cyrilp/Documents/OUT/OUT_$JOB_NAME.$JOB_ID_$TASK_ID
#$ -e /home/cyrilp/Documents/ERR/ERR_$JOB_NAME.$JOB_ID_$TASK_ID
##$ -R y
##$ -r y

source /modules/rhel8/conda/install/etc/profile.d/conda.sh
conda activate production-08-2023

python3 "/lustre/storeB/users/cyrilp/CERISE/Scripts/Normalization/Normalization_statistics.py"
