#!/bin/bash -l

#$ -P cepinet
#$ -N leafcutter
#$ -cwd
#$ -l h_vmem=30G
#$ -l h_rt=18:00:00
#$ -pe smp 8
#$ -j y
#$ -o leafcutter.log

source activate LC

/projectnb/cepinet/users/zhiyuanzhu/leafcutter/leafcutter/scripts/leafcutter_ds.R --num_threads 8 /projectnb/cepinet/users/zhiyuanzhu/leafcutter/Step2_Python_Cluster/testADvsCTRL_perind_numers.counts.gz /projectnb/cepinet/users/zhiyuanzhu/leafcutter/Step3_Differential_Analysis/groups_file.txt -e /projectnb/cepinet/users/zhiyuanzhu/leafcutter/Step3_Differential_Analysis/output_exons.txt.gz


