#!/bin/bash -l

#$ -P cepinet
#$ -N leafcutterMD
#$ -cwd
#$ -l h_vmem=30G
#$ -l h_rt=18:00:00
#$ -pe smp 8
#$ -j y
#$ -o leafcutterMD.log

source activate LC

/projectnb/cepinet/users/zhiyuanzhu/leafcutter/leafcutter/scripts/leafcutterMD.R --num_threads 8 /projectnb/cepinet/users/zhiyuanzhu/leafcutter/Step2_Python_Cluster/testADvsCTRL_perind_numers.counts.gz 


