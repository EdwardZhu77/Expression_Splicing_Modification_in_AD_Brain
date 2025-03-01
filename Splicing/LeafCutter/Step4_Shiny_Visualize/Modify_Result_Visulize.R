setwd("/projectnb/cepinet/users/zhiyuanzhu/leafcutter/leafcutter/leafviz")

'
/projectnb/cepinet/users/zhiyuanzhu/leafcutter/leafcutter/leafviz/gtf2leafcutter.pl -o annotation_codes/gencode_hg38 /projectnb/cepinet/users/zhiyuanzhu/leafcutter/Step3_Differential_Analysis/gencode.v38.annotation.gtf



/projectnb/cepinet/users/zhiyuanzhu/leafcutter/leafcutter/leafviz/prepare_results.R --meta_data_file /projectnb/cepinet/users/zhiyuanzhu/leafcutter/Step3_Differential_Analysis/groups_file.txt \
--code leafcutter /projectnb/cepinet/users/zhiyuanzhu/leafcutter/Step2_Python_Cluster/testADvsCTRL_perind_numers.counts.gz \
/projectnb/cepinet/users/zhiyuanzhu/leafcutter/Step3_Differential_Analysis/leafcutter_ds_cluster_significance.txt \
/projectnb/cepinet/users/zhiyuanzhu/leafcutter/Step3_Differential_Analysis/leafcutter_ds_effect_sizes.txt \
annotation_codes/gencode_hg38 \
-o /projectnb/cepinet/users/zhiyuanzhu/leafcutter/Step4_Shiny_Visualize/testADvsCTRL.RData
'

library(leafviz)  

load("/projectnb/cepinet/users/zhiyuanzhu/leafcutter/Step4_Shiny_Visualize/testADvsCTRL.RData")
shiny::runApp(
  appDir = ".",        
  host = "0.0.0.0",    
  port = 5678,         
  launch.browser = TRUE
)
