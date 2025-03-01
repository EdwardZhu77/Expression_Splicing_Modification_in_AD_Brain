#!/bin/bash -l

#$ -P cepinet
#$ -N cluster
#$ -cwd
#$ -l h_vmem=30G
#$ -l h_rt=18:00:00
#$ -pe smp 8
#$ -j y
#$ -o cluster.log

source activate LC

python /projectnb/cepinet/users/zhiyuanzhu/leafcutter/leafcutter/clustering/leafcutter_cluster_regtools.py -j test_juncfiles.txt -m 50 -o testADvsCTRL -l 500000

done

