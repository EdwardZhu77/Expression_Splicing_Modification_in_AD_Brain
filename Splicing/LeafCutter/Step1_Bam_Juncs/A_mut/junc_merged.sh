#!/bin/bash -l

#$ -P cepinet
#$ -N junc_merged
#$ -cwd
#$ -l h_vmem=30G
#$ -l h_rt=18:00:00
#$ -pe smp 8
#$ -j y
#$ -o junc_merged.log

source activate LC

for bamfile in /projectnb/cepinet/users/zhiyuanzhu/Individual_Data/AD_mut/*.bam; do
    /projectnb/cepinet/users/zhiyuanzhu/leafcutter/Step1_Bam_Juncs/regtools/build/regtools junctions extract -a 8 -m 50 -M 500000 -s RF $bamfile -o $bamfile.junc
    echo "$bamfile.junc" >> test_juncfiles.txt
done

