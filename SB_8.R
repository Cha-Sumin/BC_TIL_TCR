#FFPE 10% 절단은 SB_1에서.
Ac1_f <-Ac1_f %>% arrange(desc(Proportion))
Ac1_f10 <- Ac1_f[1:8,]
Ac16_f <- Ac16_f %>% arrange(desc(Proportion))
Ac16_f10 <- Ac16_f[1:114,]


Bc1_f <-Bc1_f %>% arrange(desc(Proportion))
Bc1_f10 <- Bc1_f[1:65, ]
Bc16_f <-Bc16_f %>% arrange(desc(Proportion))
Bc16_f10 <- Bc16_f[1:428,]

#2W TIL 10%절단
#TRA
Ac2_2w   <- Ac2_2w %>% arrange(desc(Proportion))
Ac2_2w10 <- Ac2_2w[1:676,]
Ac3_2w   <- Ac3_2w %>% arrange(desc(Proportion))
Ac3_2w10 <- Ac3_2w[1:204,]
Ac4_2w   <- Ac4_2w %>% arrange(desc(Proportion))
Ac4_2w10 <- Ac4_2w[1:248,]
Ac5_2w   <- Ac5_2w %>% arrange(desc(Proportion))
Ac5_2w10 <- Ac5_2w[1:841,]
Ac8_2w   <- Ac8_2w %>% arrange(desc(Proportion))
Ac8_2w10 <- Ac8_2w[1:239,]
Ac9_2w   <- Ac9_2w %>% arrange(desc(Proportion))
Ac9_2w10 <- Ac9_2w[1:497,]
Ac10_2w  <- Ac10_2w %>% arrange(desc(Proportion))
Ac10_2w10<- Ac10_2w[1:672,]
Ac11_2w  <- Ac11_2w %>% arrange(desc(Proportion))
Ac11_2w10<- Ac11_2w[1:1211,]
Ac13_2w  <- Ac13_2w %>% arrange(desc(Proportion))
Ac13_2w10<- Ac13_2w[1:1171,]
Ac14_2w  <- Ac14_2w %>% arrange(desc(Proportion))
Ac14_2w10<- Ac14_2w[1:932,]
Ac17_2w  <- Ac17_2w %>% arrange(desc(Proportion))
Ac17_2w10<- Ac17_2w[1:382,]
Ac18_2w  <- Ac18_2w %>% arrange(desc(Proportion))
Ac18_2w10<- Ac18_2w[1:812,]
Ac19_2w  <- Ac19_2w %>% arrange(desc(Proportion))
Ac19_2w10<- Ac19_2w[1:848,]


#TRB
Bc2_2w   <- Bc2_2w %>% arrange(desc(Proportion))
Bc2_2w10 <- Bc2_2w[1:393,]
Bc3_2w   <- Bc3_2w %>% arrange(desc(Proportion))
Bc3_2w10 <- Bc3_2w[1:89,]
Bc4_2w   <- Bc4_2w %>% arrange(desc(Proportion))
Bc4_2w10 <- Bc4_2w[1:266,]
Bc5_2w   <- Bc5_2w %>% arrange(desc(Proportion))
Bc5_2w10 <- Bc5_2w[1:607,]
Bc8_2w   <- Bc8_2w %>% arrange(desc(Proportion))
Bc8_2w10 <- Bc8_2w[1:281,]
Bc9_2w   <- Bc9_2w %>% arrange(desc(Proportion))
Bc9_2w10 <- Bc9_2w[1:542,]
Bc10_2w  <- Bc10_2w %>% arrange(desc(Proportion))
Bc10_2w10<- Bc10_2w[1:529,]
Bc11_2w  <- Bc11_2w %>% arrange(desc(Proportion))
Bc11_2w10<- Bc11_2w[1:1214,]
Bc13_2w  <- Bc13_2w %>% arrange(desc(Proportion))
Bc13_2w10<- Bc13_2w[1:1245,]
Bc14_2w  <- Bc14_2w %>% arrange(desc(Proportion))
Bc14_2w10<- Bc14_2w[1:859,]
Bc17_2w  <- Bc17_2w %>% arrange(desc(Proportion))
Bc17_2w10<- Bc17_2w[1:362,]
Bc18_2w  <- Bc18_2w %>% arrange(desc(Proportion))
Bc18_2w10<- Bc18_2w[1:819,]
Bc19_2w  <- Bc19_2w %>% arrange(desc(Proportion))
Bc19_2w10<- Bc19_2w[1:937,]
#2w 끝


#PBMC 10% 절단, data load in SB7

#TRA
Ac8_p   <- Ac8_p %>% arrange(desc(Proportion))
Ac8_p10 <- Ac8_p[1:6094,]
Ac9_p   <- Ac9_p %>% arrange(desc(Proportion))
Ac9_p10 <- Ac9_p[1:6612,]
Ac10_p  <- Ac10_p %>% arrange(desc(Proportion))
Ac10_p10<- Ac10_p[1:8504,]
Ac11_p  <- Ac11_p%>% arrange(desc(Proportion))
Ac11_p10<- Ac11_p[1:5572,]
Ac14_p  <- Ac14_p %>% arrange(desc(Proportion))
Ac14_p10<- Ac14_p[1:6706,]
Ac16_p  <- Ac16_p %>% arrange(desc(Proportion))
Ac16_p10<- Ac16_p[1:7650,]
Ac17_p  <- Ac17_p %>% arrange(desc(Proportion))
Ac17_p10<- Ac17_p[1:1644,]
Ac18_p  <- Ac18_p %>% arrange(desc(Proportion))
Ac18_p10<- Ac18_p[1:3615,]
Ac19_p  <- Ac19_p %>% arrange(desc(Proportion))
Ac19_p10<- Ac19_p[1:6790,]



#TRB
Bc8_p   <- Bc8_p %>% arrange(desc(Proportion))
Bc8_p10 <- Bc8_p[1:8799,]
Bc9_p   <- Bc9_p %>% arrange(desc(Proportion))
Bc9_p10 <- Bc9_p[1:10639,]
Bc10_p  <- Bc10_p %>% arrange(desc(Proportion))
Bc10_p10<- Bc10_p[1:6437,]
Bc11_p  <- Bc11_p%>% arrange(desc(Proportion))
Bc11_p10<- Bc11_p[1:5670,]
Bc14_p  <- Bc14_p %>% arrange(desc(Proportion))
Bc14_p10<- Bc14_p[1:5576,]
Bc16_p  <- Bc16_p %>% arrange(desc(Proportion))
Bc16_p10<- Bc16_p[1:9257,]
Bc17_p  <- Bc17_p %>% arrange(desc(Proportion))
Bc17_p10<- Bc17_p[1:2501,]
Bc18_p  <- Bc18_p %>% arrange(desc(Proportion))
Bc18_p10<- Bc18_p[1:2035,]
Bc19_p  <- Bc19_p %>% arrange(desc(Proportion))
Bc19_p10<- Bc19_p[1:10049,]
#pbcm끝


#data_추가 loading
#TRA
Ac1_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16045_R4_TRA_x.txt")
Ac1_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16045_R8_TRA_x.txt")
Ac2_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16092_R4_TRA_x.txt")
Ac2_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16092_R8_TRA_x.txt")
Ac3_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16096_R4_TRA_x.txt")
Ac3_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16096_R8_TRA_x.txt")
Ac4_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16110_R4_TRA_x.txt")
Ac4_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16110_R8_TRA_x.txt")
Ac8_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16147_R4_TRA_x.txt")
Ac8_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16147_R8_TRA_x.txt")
Ac9_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16154_R4_TRA_x.txt")
Ac9_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16154_R8_TRA_x.txt")
Ac10_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16158_R4_TRA_x.txt")
Ac10_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16158_R8_TRA_x.txt")
Ac11_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16166_R4_TRA_x.txt")
Ac11_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16166_R8_TRA_x.txt")
Ac14_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16212_R4_TRA_x.txt")
Ac14_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16212_R8_TRA_x.txt")
Ac16_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16218_R4_TRA_x.txt")
Ac16_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC16218_R8_TRA_x.txt")
Ac17_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC17009_R4_TRA_x.txt")
Ac17_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC17009_R8_TRA_x.txt")
Ac19_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC17020_R4_TRA_x.txt")
Ac19_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\x\\CD4CD8\\BC17020_R8_TRA_x.txt")

#TRB
Bc1_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16045_R4_TRB_x.txt")
Bc1_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16045_R8_TRB_x.txt")
Bc2_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16092_R4_TRB_x.txt")
Bc2_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16092_R8_TRB_x.txt")
Bc3_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16096_R4_TRB_x.txt")
Bc3_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16096_R8_TRB_x.txt")
Bc4_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16110_R4_TRB_x.txt")
Bc4_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16110_R8_TRB_x.txt")
Bc8_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16147_R4_TRB_x.txt")
Bc8_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16147_R8_TRB_x.txt")
Bc9_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16154_R4_TRB_x.txt")
Bc9_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16154_R8_TRB_x.txt")
Bc10_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16158_R4_TRB_x.txt")
Bc10_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16158_R8_TRB_x.txt")
Bc11_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16166_R4_TRB_x.txt")
Bc11_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16166_R8_TRB_x.txt")
Bc14_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16212_R4_TRB_x.txt")
Bc14_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16212_R8_TRB_x.txt")
Bc16_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16218_R4_TRB_x.txt")
Bc16_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC16218_R8_TRB_x.txt")
Bc17_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC17009_R4_TRB_x.txt")
Bc17_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC17009_R8_TRB_x.txt")
Bc19_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC17020_R4_TRB_x.txt")
Bc19_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\x\\CD4CD8\\BC17020_R8_TRB_x.txt")





##TRA
Ac1_cd4 <- Ac1_cd4 %>% arrange(desc(Proportion))
Ac1_cd4_10 <- Ac1_cd4[1:round(nrow(Ac1_cd4)/10),]
Ac2_cd4 <- Ac2_cd4 %>% arrange(desc(Proportion))
Ac2_cd4_10 <- Ac2_cd4[1:round(nrow(Ac2_cd4)/10),]
Ac3_cd4 <- Ac3_cd4 %>% arrange(desc(Proportion))
Ac3_cd4_10 <- Ac3_cd4[1:round(nrow(Ac3_cd4)/10),]
Ac4_cd4 <- Ac4_cd4 %>% arrange(desc(Proportion))
Ac4_cd4_10 <- Ac4_cd4[1:round(nrow(Ac4_cd4)/10),]
Ac8_cd4 <- Ac8_cd4 %>% arrange(desc(Proportion))
Ac8_cd4_10 <- Ac8_cd4[1:round(nrow(Ac8_cd4)/10),]
Ac9_cd4 <- Ac9_cd4 %>% arrange(desc(Proportion))
Ac9_cd4_10 <- Ac9_cd4[1:round(nrow(Ac9_cd4)/10),]
Ac10_cd4<- Ac10_cd4 %>% arrange(desc(Proportion))
Ac10_cd4_10<- Ac10_cd4[1:round(nrow(Ac10_cd4)/10),]
Ac11_cd4<- Ac10_cd4 %>% arrange(desc(Proportion))
Ac11_cd4_10<- Ac10_cd4[1:round(nrow(Ac11_cd4)/10),]
Ac14_cd4<- Ac14_cd4 %>% arrange(desc(Proportion))
Ac14_cd4_10<- Ac14_cd4[1:round(nrow(Ac14_cd4)/10),]
Ac16_cd4<- Ac16_cd4 %>% arrange(desc(Proportion))
Ac16_cd4_10<- Ac16_cd4[1:round(nrow(Ac16_cd4)/10),]
Ac17_cd4<- Ac17_cd4 %>% arrange(desc(Proportion))
Ac17_cd4_10<- Ac17_cd4[1:round(nrow(Ac17_cd4)/10),]
Ac19_cd4<- Ac19_cd4 %>% arrange(desc(Proportion))
Ac19_cd4_10<- Ac19_cd4[1:round(nrow(Ac19_cd4)/10),]


##TRB
Bc1_cd4 <- Bc1_cd4 %>% arrange(desc(Proportion))
Bc1_cd4_10 <- Bc1_cd4[1:round(nrow(Bc1_cd4)/10),]
Bc2_cd4 <- Bc2_cd4 %>% arrange(desc(Proportion))
Bc2_cd4_10 <- Bc2_cd4[1:round(nrow(Bc2_cd4)/10),]
Bc3_cd4 <- Bc3_cd4 %>% arrange(desc(Proportion))
Bc3_cd4_10 <- Bc3_cd4[1:round(nrow(Bc3_cd4)/10),]
Bc4_cd4 <- Bc4_cd4 %>% arrange(desc(Proportion))
Bc4_cd4_10 <- Bc4_cd4[1:round(nrow(Bc4_cd4)/10),]
Bc8_cd4 <- Bc8_cd4 %>% arrange(desc(Proportion))
Bc8_cd4_10 <- Bc8_cd4[1:round(nrow(Bc8_cd4)/10),]
Bc9_cd4 <- Bc9_cd4 %>% arrange(desc(Proportion))
Bc9_cd4_10 <- Bc9_cd4[1:round(nrow(Bc9_cd4)/10),]
Bc10_cd4<- Bc10_cd4 %>% arrange(desc(Proportion))
Bc10_cd4_10<- Bc10_cd4[1:round(nrow(Bc10_cd4)/10),]
Bc11_cd4<- Bc10_cd4 %>% arrange(desc(Proportion))
Bc11_cd4_10<- Bc10_cd4[1:round(nrow(Bc11_cd4)/10),]
Bc14_cd4<- Bc14_cd4 %>% arrange(desc(Proportion))
Bc14_cd4_10<- Bc14_cd4[1:round(nrow(Bc14_cd4)/10),]
Bc16_cd4<- Bc16_cd4 %>% arrange(desc(Proportion))
Bc16_cd4_10<- Bc16_cd4[1:round(nrow(Bc16_cd4)/10),]
Bc17_cd4<- Bc17_cd4 %>% arrange(desc(Proportion))
Bc17_cd4_10<- Bc17_cd4[1:round(nrow(Bc17_cd4)/10),]
Bc19_cd4<- Bc19_cd4 %>% arrange(desc(Proportion))
Bc19_cd4_10<- Bc19_cd4[1:round(nrow(Bc19_cd4)/10),]



#cd8
##TRA
Ac1_cd8 <- Ac1_cd8 %>% arrange(desc(Proportion))
Ac1_cd8_10 <- Ac1_cd8[1:round(nrow(Ac1_cd8)/10),]
Ac2_cd8 <- Ac2_cd8 %>% arrange(desc(Proportion))
Ac2_cd8_10 <- Ac2_cd8[1:round(nrow(Ac2_cd8)/10),]
Ac3_cd8 <- Ac3_cd8 %>% arrange(desc(Proportion))
Ac3_cd8_10 <- Ac3_cd8[1:round(nrow(Ac3_cd8)/10),]
Ac4_cd8 <- Ac4_cd8 %>% arrange(desc(Proportion))
Ac4_cd8_10 <- Ac4_cd8[1:round(nrow(Ac4_cd8)/10),]
Ac8_cd8 <- Ac8_cd8 %>% arrange(desc(Proportion))
Ac8_cd8_10 <- Ac8_cd8[1:round(nrow(Ac8_cd8)/10),]
Ac9_cd8 <- Ac9_cd8 %>% arrange(desc(Proportion))
Ac9_cd8_10 <- Ac9_cd8[1:round(nrow(Ac9_cd8)/10),]
Ac10_cd8<- Ac10_cd8 %>% arrange(desc(Proportion))
Ac10_cd8_10<- Ac10_cd8[1:round(nrow(Ac10_cd8)/10),]
Ac11_cd8<- Ac10_cd8 %>% arrange(desc(Proportion))
Ac11_cd8_10<- Ac10_cd8[1:round(nrow(Ac11_cd8)/10),]
Ac14_cd8<- Ac14_cd8 %>% arrange(desc(Proportion))
Ac14_cd8_10<- Ac14_cd8[1:round(nrow(Ac14_cd8)/10),]
Ac16_cd8<- Ac16_cd8 %>% arrange(desc(Proportion))
Ac16_cd8_10<- Ac16_cd8[1:round(nrow(Ac16_cd8)/10),]
Ac17_cd8<- Ac17_cd8 %>% arrange(desc(Proportion))
Ac17_cd8_10<- Ac17_cd8[1:round(nrow(Ac17_cd8)/10),]
Ac19_cd8<- Ac19_cd8 %>% arrange(desc(Proportion))
Ac19_cd8_10<- Ac19_cd8[1:round(nrow(Ac19_cd8)/10),]


##TRB
Bc1_cd8 <- Bc1_cd8 %>% arrange(desc(Proportion))
Bc1_cd8_10 <- Bc1_cd8[1:round(nrow(Bc1_cd8)/10),]
Bc2_cd8 <- Bc2_cd8 %>% arrange(desc(Proportion))
Bc2_cd8_10 <- Bc2_cd8[1:round(nrow(Bc2_cd8)/10),]
Bc3_cd8 <- Bc3_cd8 %>% arrange(desc(Proportion))
Bc3_cd8_10 <- Bc3_cd8[1:round(nrow(Bc3_cd8)/10),]
Bc4_cd8 <- Bc4_cd8 %>% arrange(desc(Proportion))
Bc4_cd8_10 <- Bc4_cd8[1:round(nrow(Bc4_cd8)/10),]
Bc8_cd8 <- Bc8_cd8 %>% arrange(desc(Proportion))
Bc8_cd8_10 <- Bc8_cd8[1:round(nrow(Bc8_cd8)/10),]
Bc9_cd8 <- Bc9_cd8 %>% arrange(desc(Proportion))
Bc9_cd8_10 <- Bc9_cd8[1:round(nrow(Bc9_cd8)/10),]
Bc10_cd8<- Bc10_cd8 %>% arrange(desc(Proportion))
Bc10_cd8_10<- Bc10_cd8[1:round(nrow(Bc10_cd8)/10),]
Bc11_cd8<- Bc10_cd8 %>% arrange(desc(Proportion))
Bc11_cd8_10<- Bc10_cd8[1:round(nrow(Bc11_cd8)/10),]
Bc14_cd8<- Bc14_cd8 %>% arrange(desc(Proportion))
Bc14_cd8_10<- Bc14_cd8[1:round(nrow(Bc14_cd8)/10),]
Bc16_cd8<- Bc16_cd8 %>% arrange(desc(Proportion))
Bc16_cd8_10<- Bc16_cd8[1:round(nrow(Bc16_cd8)/10),]
Bc17_cd8<- Bc17_cd8 %>% arrange(desc(Proportion))
Bc17_cd8_10<- Bc17_cd8[1:round(nrow(Bc17_cd8)/10),]
Bc19_cd8<- Bc19_cd8 %>% arrange(desc(Proportion))
Bc19_cd8_10<- Bc19_cd8[1:round(nrow(Bc19_cd8)/10),]



Ac2_f <- Ac2_f %>% arrange(desc(Proportion))
Ac2_f10<- Ac2_f[1:30,]
Ac3_f <- Ac3_f %>% arrange(desc(Proportion))
Ac3_f10<- Ac3_f[1:35,]
Ac4_f <- Ac4_f %>% arrange(desc(Proportion))
Ac4_f10<- Ac4_f[1:35,]
Ac5_f <- Ac5_f %>% arrange(desc(Proportion))
Ac5_f10<- Ac5_f[1:61,]
Ac8_f <- Ac8_f %>% arrange(desc(Proportion))
Ac8_f10<- Ac8_f[1:20,]
Ac9_f <- Ac9_f %>% arrange(desc(Proportion))
Ac9_f10<- Ac9_f[1:73,]
Ac10_f <- Ac10_f %>% arrange(desc(Proportion))
Ac10_f10<- Ac10_f[1:68,]
Ac11_f <- Ac11_f %>% arrange(desc(Proportion))
Ac11_f10<- Ac11_f[1:33,]
Ac13_f <- Ac13_f %>% arrange(desc(Proportion))
Ac13_f10<- Ac13_f[1:45,]
Ac14_f <- Ac14_f %>% arrange(desc(Proportion))
Ac14_f10<- Ac14_f[1:55,]
Ac17_f <- Ac17_f %>% arrange(desc(Proportion))
Ac17_f10<- Ac17_f[1:13,]
Ac18_f <- Ac18_f %>% arrange(desc(Proportion))
Ac18_f10<- Ac18_f[1:31,]
Ac19_f <- Ac19_f %>% arrange(desc(Proportion))
Ac19_f10<- Ac19_f[1:38,]


#REP
#TRA
Ac2_rep   <- Ac2_rep%>% arrange(desc(Proportion))
Ac2_rep_10<- Ac2_rep[1:round(nrow(Ac2_rep)/10),]
Ac3_rep   <- Ac3_rep%>% arrange(desc(Proportion))
Ac3_rep_10<- Ac3_rep[1:round(nrow(Ac3_rep)/10),]
Ac4_rep   <- Ac4_rep%>% arrange(desc(Proportion))
Ac4_rep_10<- Ac4_rep[1:round(nrow(Ac4_rep)/10),]
Ac5_rep   <- Ac5_rep%>% arrange(desc(Proportion))
Ac5_rep_10<- Ac5_rep[1:round(nrow(Ac5_rep)/10),]
Ac6_rep   <- Ac6_rep%>% arrange(desc(Proportion))
Ac6_rep_10<- Ac6_rep[1:round(nrow(Ac6_rep)/10),]
Ac7_rep   <- Ac7_rep%>% arrange(desc(Proportion))
Ac7_rep_10<- Ac7_rep[1:round(nrow(Ac7_rep)/10),]
Ac10_rep   <- Ac10_rep%>% arrange(desc(Proportion))
Ac10_rep_10<- Ac10_rep[1:round(nrow(Ac10_rep)/10),]
Ac12_rep   <- Ac12_rep%>% arrange(desc(Proportion))
Ac12_rep_10<- Ac12_rep[1:round(nrow(Ac12_rep)/10),]
Ac15_rep   <- Ac15_rep%>% arrange(desc(Proportion))
Ac15_rep_10<- Ac15_rep[1:round(nrow(Ac15_rep)/10),]

#TRB
Bc2_rep   <- Bc2_rep%>% arrange(desc(Proportion))
Bc2_rep_10<- Bc2_rep[1:round(nrow(Bc2_rep)/10),]
Bc3_rep   <- Bc3_rep%>% arrange(desc(Proportion))
Bc3_rep_10<- Bc3_rep[1:round(nrow(Bc3_rep)/10),]
Bc4_rep   <- Bc4_rep%>% arrange(desc(Proportion))
Bc4_rep_10<- Bc4_rep[1:round(nrow(Bc4_rep)/10),]
Bc5_rep   <- Bc5_rep%>% arrange(desc(Proportion))
Bc5_rep_10<- Bc5_rep[1:round(nrow(Bc5_rep)/10),]
Bc6_rep   <- Bc6_rep%>% arrange(desc(Proportion))
Bc6_rep_10<- Bc6_rep[1:round(nrow(Bc6_rep)/10),]
Bc7_rep   <- Bc7_rep%>% arrange(desc(Proportion))
Bc7_rep_10<- Bc7_rep[1:round(nrow(Bc7_rep)/10),]
Bc10_rep   <- Bc10_rep%>% arrange(desc(Proportion))
Bc10_rep_10<- Bc10_rep[1:round(nrow(Bc10_rep)/10),]
Bc12_rep   <- Bc12_rep%>% arrange(desc(Proportion))
Bc12_rep_10<- Bc12_rep[1:round(nrow(Bc12_rep)/10),]
Bc15_rep   <- Bc15_rep%>% arrange(desc(Proportion))
Bc15_rep_10<- Bc15_rep[1:round(nrow(Bc15_rep)/10),]

#data 10% 절단 끝####



####mean of clonal poportion
invitR <- c(0,1,0,1,0,1,0,1,1,1,0,0,0,0,0,0,0,0,1)
caseNo
case <- data.frame(caseNo$No,caseNo$case,invitR)
colnames(case) <- c("No","case","invitR")

##data 합치기##
#FFPE
#TRA
Ac1_f10 <- Ac1_f10 %>% mutate(case=1)
Ac2_f10 <- Ac2_f10 %>% mutate(case=2)
Ac3_f10 <- Ac3_f10 %>% mutate(case=3)
Ac4_f10 <- Ac4_f10 %>% mutate(case=4)
Ac5_f10 <- Ac5_f10 %>% mutate(case=5)
Ac8_f10 <- Ac8_f10 %>% mutate(case=8)
Ac9_f10 <- Ac9_f10 %>% mutate(case=9)
Ac10_f10 <- Ac10_f10 %>% mutate(case=10)
Ac11_f10 <- Ac11_f10 %>% mutate(case=11)
Ac13_f10 <- Ac13_f10 %>% mutate(case=13)
Ac14_f10 <- Ac14_f10 %>% mutate(case=14)
Ac16_f10 <- Ac16_f10 %>% mutate(case=16)
Ac17_f10 <- Ac17_f10 %>% mutate(case=17)
Ac18_f10 <- Ac18_f10 %>% mutate(case=18)
Ac19_f10 <- Ac19_f10 %>% mutate(case=19)

Ac1_f10 <- Ac1_f10 %>% mutate(invitR=0)
Ac2_f10 <- Ac2_f10 %>% mutate(invitR=1)
Ac3_f10 <- Ac3_f10 %>% mutate(invitR=0)
Ac4_f10 <- Ac4_f10 %>% mutate(invitR=1)
Ac5_f10 <- Ac5_f10 %>% mutate(invitR=0)
Ac8_f10 <- Ac8_f10 %>% mutate(invitR=1)
Ac9_f10 <- Ac9_f10 %>% mutate(invitR=1)
Ac10_f10 <- Ac10_f10 %>% mutate(invitR=1)
Ac11_f10 <- Ac11_f10 %>% mutate(invitR=0)
Ac13_f10 <- Ac13_f10 %>% mutate(invitR=0)
Ac14_f10 <- Ac14_f10 %>% mutate(invitR=0)
Ac16_f10 <- Ac16_f10 %>% mutate(invitR=0)
Ac17_f10 <- Ac17_f10 %>% mutate(invitR=0)
Ac18_f10 <- Ac18_f10 %>% mutate(invitR=0)
Ac19_f10 <- Ac19_f10 %>% mutate(invitR=1)



FFPE_A <- rbind(Ac1_f10, Ac2_f10, Ac3_f10, Ac4_f10, Ac5_f10, Ac8_f10, Ac9_f10, Ac10_f10, Ac11_f10, Ac13_f10, Ac14_f10, Ac16_f10, Ac17_f10, Ac18_f10, Ac19_f10)

#TRB
Bc1_f10 <- Bc1_f10 %>% mutate(case=1)
Bc2_f10 <- Bc2_f10 %>% mutate(case=2)
Bc3_f10 <- Bc3_f10 %>% mutate(case=3)
Bc4_f10 <- Bc4_f10 %>% mutate(case=4)
Bc5_f10 <- Bc5_f10 %>% mutate(case=5)
Bc8_f10 <- Bc8_f10 %>% mutate(case=8)
Bc9_f10 <- Bc9_f10 %>% mutate(case=9)
Bc10_f10 <- Bc10_f10 %>% mutate(case=10)
Bc11_f10 <- Bc11_f10 %>% mutate(case=11)
Bc13_f10 <- Bc13_f10 %>% mutate(case=13)
Bc14_f10 <- Bc14_f10 %>% mutate(case=14)
Bc16_f10 <- Bc16_f10 %>% mutate(case=16)
Bc17_f10 <- Bc17_f10 %>% mutate(case=17)
Bc18_f10 <- Bc18_f10 %>% mutate(case=18)
Bc19_f10 <- Bc19_f10 %>% mutate(case=19)

Bc1_f10 <- Bc1_f10 %>% mutate(invitR=0)
Bc2_f10 <- Bc2_f10 %>% mutate(invitR=1)
Bc3_f10 <- Bc3_f10 %>% mutate(invitR=0)
Bc4_f10 <- Bc4_f10 %>% mutate(invitR=1)
Bc5_f10 <- Bc5_f10 %>% mutate(invitR=0)
Bc8_f10 <- Bc8_f10 %>% mutate(invitR=1)
Bc9_f10 <- Bc9_f10 %>% mutate(invitR=1)
Bc10_f10 <- Bc10_f10 %>% mutate(invitR=1)
Bc11_f10 <- Bc11_f10 %>% mutate(invitR=0)
Bc13_f10 <- Bc13_f10 %>% mutate(invitR=0)
Bc14_f10 <- Bc14_f10 %>% mutate(invitR=0)
Bc16_f10 <- Bc16_f10 %>% mutate(invitR=0)
Bc17_f10 <- Bc17_f10 %>% mutate(invitR=0)
Bc18_f10 <- Bc18_f10 %>% mutate(invitR=0)
Bc19_f10 <- Bc19_f10 %>% mutate(invitR=1)


FFPE_B <- rbind(Bc1_f10, Bc2_f10, Bc3_f10, Bc4_f10, Bc5_f10, Bc8_f10, Bc9_f10, Bc10_f10, Bc11_f10, Bc13_f10, Bc14_f10, Bc16_f10, Bc17_f10, Bc18_f10, Bc19_f10)


a <- aggregate(Proportion~case+invitR, sum, data=FFPE_A)
wilcox.test(a$Proportion~invitR, data=a, mu=0, alt='two.sided', paired=F)
mean(a$Proportion[a$invitR==1])
mean(a$Proportion[a$invitR==0])

b <- aggregate(Proportion~case+invitR, sum, data=FFPE_B)
wilcox.test(b$Proportion~invitR, data=b, mu=0, alt='two.sided', paired=F)
mean(b$Proportion[b$invitR==1])
mean(b$Proportion[b$invitR==0])

##########################################################################################
#2W
#TRA
Ac2_2w10 <- Ac2_2w10 %>% mutate(case=2)
Ac3_2w10 <- Ac3_2w10 %>% mutate(case=3)
Ac4_2w10 <- Ac4_2w10 %>% mutate(case=4)
Ac5_2w10 <- Ac5_2w10 %>% mutate(case=5)
Ac8_2w10 <- Ac8_2w10 %>% mutate(case=8)
Ac9_2w10 <- Ac9_2w10 %>% mutate(case=9)
Ac10_2w10 <- Ac10_2w10 %>% mutate(case=10)
Ac11_2w10 <- Ac11_2w10 %>% mutate(case=11)
Ac13_2w10 <- Ac13_2w10 %>% mutate(case=13)
Ac14_2w10 <- Ac14_2w10 %>% mutate(case=14)
Ac17_2w10 <- Ac17_2w10 %>% mutate(case=17)
Ac18_2w10 <- Ac18_2w10 %>% mutate(case=18)
Ac19_2w10 <- Ac19_2w10 %>% mutate(case=19)

Ac2_2w10 <- Ac2_2w10 %>% mutate(invitR=1)
Ac3_2w10 <- Ac3_2w10 %>% mutate(invitR=0)
Ac4_2w10 <- Ac4_2w10 %>% mutate(invitR=1)
Ac5_2w10 <- Ac5_2w10 %>% mutate(invitR=0)
Ac8_2w10 <- Ac8_2w10 %>% mutate(invitR=1)
Ac9_2w10 <- Ac9_2w10 %>% mutate(invitR=1)
Ac10_2w10 <- Ac10_2w10 %>% mutate(invitR=1)
Ac11_2w10 <- Ac11_2w10 %>% mutate(invitR=0)
Ac13_2w10 <- Ac13_2w10 %>% mutate(invitR=0)
Ac14_2w10 <- Ac14_2w10 %>% mutate(invitR=0)
Ac17_2w10 <- Ac17_2w10 %>% mutate(invitR=0)
Ac18_2w10 <- Ac18_2w10 %>% mutate(invitR=0)
Ac19_2w10 <- Ac19_2w10 %>% mutate(invitR=1)

A2w <- rbind(Ac2_2w10, Ac3_2w10, Ac4_2w10, Ac5_2w10, Ac8_2w10, Ac9_2w10, Ac10_2w10, Ac11_2w10, Ac13_2w10, Ac14_2w10, Ac17_2w10, Ac18_2w10, Ac19_2w10)

#TRB
Bc2_2w10 <- Bc2_2w10 %>% mutate(case=2)
Bc3_2w10 <- Bc3_2w10 %>% mutate(case=3)
Bc4_2w10 <- Bc4_2w10 %>% mutate(case=4)
Bc5_2w10 <- Bc5_2w10 %>% mutate(case=5)
Bc8_2w10 <- Bc8_2w10 %>% mutate(case=8)
Bc9_2w10 <- Bc9_2w10 %>% mutate(case=9)
Bc10_2w10 <- Bc10_2w10 %>% mutate(case=10)
Bc11_2w10 <- Bc11_2w10 %>% mutate(case=11)
Bc13_2w10 <- Bc13_2w10 %>% mutate(case=13)
Bc14_2w10 <- Bc14_2w10 %>% mutate(case=14)
Bc17_2w10 <- Bc17_2w10 %>% mutate(case=17)
Bc18_2w10 <- Bc18_2w10 %>% mutate(case=18)
Bc19_2w10 <- Bc19_2w10 %>% mutate(case=19)

Bc2_2w10 <- Bc2_2w10 %>% mutate(invitR=1)
Bc3_2w10 <- Bc3_2w10 %>% mutate(invitR=0)
Bc4_2w10 <- Bc4_2w10 %>% mutate(invitR=1)
Bc5_2w10 <- Bc5_2w10 %>% mutate(invitR=0)
Bc8_2w10 <- Bc8_2w10 %>% mutate(invitR=1)
Bc9_2w10 <- Bc9_2w10 %>% mutate(invitR=1)
Bc10_2w10 <- Bc10_2w10 %>% mutate(invitR=1)
Bc11_2w10 <- Bc11_2w10 %>% mutate(invitR=0)
Bc13_2w10 <- Bc13_2w10 %>% mutate(invitR=0)
Bc14_2w10 <- Bc14_2w10 %>% mutate(invitR=0)
Bc17_2w10 <- Bc17_2w10 %>% mutate(invitR=0)
Bc18_2w10 <- Bc18_2w10 %>% mutate(invitR=0)
Bc19_2w10 <- Bc19_2w10 %>% mutate(invitR=1)


B2w <- rbind(Bc2_2w10, Bc3_2w10, Bc4_2w10, Bc5_2w10, Bc8_2w10, Bc9_2w10, Bc10_2w10, Bc11_2w10, Bc13_2w10, Bc14_2w10, Bc17_2w10, Bc18_2w10, Bc19_2w10)



a <- aggregate(Proportion~case+invitR, sum, data=A2w)
wilcox.test(a$Proportion~invitR, data=a, mu=0, alt='two.sided', paired=F)
mean(a$Proportion[a$invitR==1])
mean(a$Proportion[a$invitR==0])

b <- aggregate(Proportion~case+invitR, sum, data=B2w)
wilcox.test(b$Proportion~invitR, data=b, mu=0, alt='two.sided', paired=F)
mean(b$Proportion[b$invitR==1])
mean(b$Proportion[b$invitR==0])


#CD4
##TRA
Ac1_cd4_10 <- Ac1_cd4_10 %>% mutate(case=1) %>% mutate(invitR=0)
Ac2_cd4_10 <- Ac2_cd4_10 %>% mutate(case=2) %>% mutate(invitR=1)
Ac3_cd4_10 <- Ac3_cd4_10 %>% mutate(case=3) %>% mutate(invitR=0)
Ac4_cd4_10 <- Ac4_cd4_10 %>% mutate(case=4) %>% mutate(invitR=1)
Ac8_cd4_10 <- Ac8_cd4_10 %>% mutate(case=8) %>% mutate(invitR=1)
Ac9_cd4_10 <- Ac9_cd4_10 %>% mutate(case=9) %>% mutate(invitR=1)
Ac10_cd4_10 <- Ac10_cd4_10 %>% mutate(case=10) %>% mutate(invitR=1)
Ac11_cd4_10 <- Ac11_cd4_10 %>% mutate(case=11) %>% mutate(invitR=0)
Ac14_cd4_10 <- Ac14_cd4_10 %>% mutate(case=14) %>% mutate(invitR=0)
Ac16_cd4_10 <- Ac16_cd4_10 %>% mutate(case=16) %>% mutate(invitR=0)
Ac17_cd4_10 <- Ac17_cd4_10 %>% mutate(case=17) %>% mutate(invitR=0)
Ac19_cd4_10 <- Ac19_cd4_10 %>% mutate(case=19) %>% mutate(invitR=1)



cd4A <- rbind(Ac1_cd4_10, Ac2_cd4_10, Ac3_cd4_10, Ac4_cd4_10, Ac8_cd4_10, Ac9_cd4_10, Ac10_cd4_10, Ac11_cd4_10, Ac14_cd4_10, Ac16_cd4_10, Ac17_cd4_10, Ac19_cd4_10)


##TRB
Bc1_cd4_10 <- Bc1_cd4_10 %>% mutate(case=1) %>% mutate(invitR=0)
Bc2_cd4_10 <- Bc2_cd4_10 %>% mutate(case=2) %>% mutate(invitR=1)
Bc3_cd4_10 <- Bc3_cd4_10 %>% mutate(case=3) %>% mutate(invitR=0)
Bc4_cd4_10 <- Bc4_cd4_10 %>% mutate(case=4) %>% mutate(invitR=1)
Bc8_cd4_10 <- Bc8_cd4_10 %>% mutate(case=8) %>% mutate(invitR=1)
Bc9_cd4_10 <- Bc9_cd4_10 %>% mutate(case=9) %>% mutate(invitR=1)
Bc10_cd4_10 <- Bc10_cd4_10 %>% mutate(case=10) %>% mutate(invitR=1)
Bc11_cd4_10 <- Bc11_cd4_10 %>% mutate(case=11) %>% mutate(invitR=0)
Bc14_cd4_10 <- Bc14_cd4_10 %>% mutate(case=14) %>% mutate(invitR=0)
Bc16_cd4_10 <- Bc16_cd4_10 %>% mutate(case=16) %>% mutate(invitR=0)
Bc17_cd4_10 <- Bc17_cd4_10 %>% mutate(case=17) %>% mutate(invitR=0)
Bc19_cd4_10 <- Bc19_cd4_10 %>% mutate(case=19) %>% mutate(invitR=1)

cd4B<- rbind(Bc1_cd4_10, Bc2_cd4_10, Bc3_cd4_10, Bc4_cd4_10, Bc8_cd4_10, Bc9_cd4_10, Bc10_cd4_10, Bc11_cd4_10, Bc14_cd4_10, Bc16_cd4_10, Bc17_cd4_10, Bc19_cd4_10)


a <- aggregate(Proportion~case+invitR, sum, data=cd4A)
wilcox.test(a$Proportion~invitR, data=a, mu=0, alt='two.sided', paired=F)
mean(a$Proportion[a$invitR==1])
mean(a$Proportion[a$invitR==0])

b <- aggregate(Proportion~case+invitR, sum, data=cd4B)
wilcox.test(b$Proportion~invitR, data=b, mu=0, alt='two.sided', paired=F)
mean(b$Proportion[b$invitR==1])
mean(b$Proportion[b$invitR==0])


#cd8
#TRA
Ac1_cd8_10 <- Ac1_cd8_10 %>% mutate(case=1) %>% mutate(invitR=0)
Ac2_cd8_10 <- Ac2_cd8_10 %>% mutate(case=2) %>% mutate(invitR=1)
Ac3_cd8_10 <- Ac3_cd8_10 %>% mutate(case=3) %>% mutate(invitR=0)
Ac4_cd8_10 <- Ac4_cd8_10 %>% mutate(case=4) %>% mutate(invitR=1)
Ac8_cd8_10 <- Ac8_cd8_10 %>% mutate(case=8) %>% mutate(invitR=1)
Ac9_cd8_10 <- Ac9_cd8_10 %>% mutate(case=9) %>% mutate(invitR=1)
Ac10_cd8_10 <- Ac10_cd8_10 %>% mutate(case=10) %>% mutate(invitR=1)
Ac11_cd8_10 <- Ac11_cd8_10 %>% mutate(case=11) %>% mutate(invitR=0)
Ac14_cd8_10 <- Ac14_cd8_10 %>% mutate(case=14) %>% mutate(invitR=0)
Ac16_cd8_10 <- Ac16_cd8_10 %>% mutate(case=16) %>% mutate(invitR=0)
Ac17_cd8_10 <- Ac17_cd8_10 %>% mutate(case=17) %>% mutate(invitR=0)
Ac19_cd8_10 <- Ac19_cd8_10 %>% mutate(case=19) %>% mutate(invitR=1)


cd8A <- rbind(Ac1_cd8_10, Ac2_cd8_10, Ac3_cd8_10, Ac4_cd8_10, Ac8_cd8_10, Ac9_cd8_10, Ac10_cd8_10, Ac11_cd8_10, Ac14_cd8_10, Ac16_cd8_10, Ac17_cd8_10, Ac19_cd8_10)

#TRB
Bc1_cd8_10 <- Bc1_cd8_10 %>% mutate(case=1) %>% mutate(invitR=0)
Bc2_cd8_10 <- Bc2_cd8_10 %>% mutate(case=2) %>% mutate(invitR=1)
Bc3_cd8_10 <- Bc3_cd8_10 %>% mutate(case=3) %>% mutate(invitR=0)
Bc4_cd8_10 <- Bc4_cd8_10 %>% mutate(case=4) %>% mutate(invitR=1)
Bc8_cd8_10 <- Bc8_cd8_10 %>% mutate(case=8) %>% mutate(invitR=1)
Bc9_cd8_10 <- Bc9_cd8_10 %>% mutate(case=9) %>% mutate(invitR=1)
Bc10_cd8_10 <- Bc10_cd8_10 %>% mutate(case=10) %>% mutate(invitR=1)
Bc11_cd8_10 <- Bc11_cd8_10 %>% mutate(case=11) %>% mutate(invitR=0)
Bc14_cd8_10 <- Bc14_cd8_10 %>% mutate(case=14) %>% mutate(invitR=0)
Bc16_cd8_10 <- Bc16_cd8_10 %>% mutate(case=16) %>% mutate(invitR=0)
Bc17_cd8_10 <- Bc17_cd8_10 %>% mutate(case=17) %>% mutate(invitR=0)
Bc19_cd8_10 <- Bc19_cd8_10 %>% mutate(case=19) %>% mutate(invitR=1)

cd8B<- rbind(Bc1_cd8_10, Bc2_cd8_10, Bc3_cd8_10, Bc4_cd8_10, Bc8_cd8_10, Bc9_cd8_10, Bc10_cd8_10, Bc11_cd8_10, Bc14_cd8_10, Bc16_cd8_10, Bc17_cd8_10, Bc19_cd8_10)


a <- aggregate(Proportion~case+invitR, sum, data=cd8A)
wilcox.test(a$Proportion~invitR, data=a, mu=0, alt='two.sided', paired=F)
mean(a$Proportion[a$invitR==1])
mean(a$Proportion[a$invitR==0])

b <- aggregate(Proportion~case+invitR, sum, data=cd8B)
wilcox.test(b$Proportion~invitR, data=b, mu=0, alt='two.sided', paired=F)
mean(b$Proportion[b$invitR==1])
mean(b$Proportion[b$invitR==0])



#PBMC
Ac8_p10 <- Ac8_p10 %>% mutate(case=8) %>% mutate(invitR=1)
Ac9_p10 <- Ac9_p10 %>% mutate(case=9) %>% mutate(invitR=1)
Ac10_p10 <- Ac10_p10 %>% mutate(case=10) %>% mutate(invitR=1)
Ac11_p10 <- Ac11_p10 %>% mutate(case=11) %>% mutate(invitR=0)
Ac14_p10 <- Ac14_p10 %>% mutate(case=14) %>% mutate(invitR=0)
Ac16_p10 <- Ac16_p10 %>% mutate(case=16) %>% mutate(invitR=0)
Ac17_p10 <- Ac17_p10 %>% mutate(case=17) %>% mutate(invitR=0)
Ac18_p10 <- Ac18_p10 %>% mutate(case=18) %>% mutate(invitR=0)
Ac19_p10 <- Ac19_p10 %>% mutate(case=19) %>% mutate(invitR=1)

pA <- rbind(Ac8_p10, Ac9_p10, Ac10_p10, Ac11_p10, Ac14_p10, Ac16_p10, Ac17_p10, Ac18_p10, Ac19_p10)

Bc8_p10 <- Bc8_p10 %>% mutate(case=8) %>% mutate(invitR=1)
Bc9_p10 <- Bc9_p10 %>% mutate(case=9) %>% mutate(invitR=1)
Bc10_p10 <- Bc10_p10 %>% mutate(case=10) %>% mutate(invitR=1)
Bc11_p10 <- Bc11_p10 %>% mutate(case=11) %>% mutate(invitR=0)
Bc14_p10 <- Bc14_p10 %>% mutate(case=14) %>% mutate(invitR=0)
Bc16_p10 <- Bc16_p10 %>% mutate(case=16) %>% mutate(invitR=0)
Bc17_p10 <- Bc17_p10 %>% mutate(case=17) %>% mutate(invitR=0)
Bc18_p10 <- Bc18_p10 %>% mutate(case=18) %>% mutate(invitR=0)
Bc19_p10 <- Bc19_p10 %>% mutate(case=19) %>% mutate(invitR=1)

pB <- rbind(Bc8_p10, Bc9_p10, Bc10_p10, Bc11_p10, Bc14_p10, Bc16_p10, Bc17_p10, Bc18_p10, Bc19_p10)

a <- aggregate(Proportion~case+invitR, sum, data=pA)
wilcox.test(a$Proportion~invitR, data=a, mu=0, alt='two.sided', paired=F)
mean(a$Proportion[a$invitR==1])
mean(a$Proportion[a$invitR==0])

b <- aggregate(Proportion~case+invitR, sum, data=pB)
wilcox.test(b$Proportion~invitR, data=b, mu=0, alt='two.sided', paired=F)
mean(b$Proportion[b$invitR==1])
mean(b$Proportion[b$invitR==0])

#rep
Ac2_rep_10 <- Ac2_rep_10 %>% mutate(case=2) %>% mutate(invitR=1)
Ac3_rep_10 <- Ac3_rep_10 %>% mutate(case=3) %>% mutate(invitR=0)
Ac4_rep_10 <- Ac4_rep_10 %>% mutate(case=4) %>% mutate(invitR=1)
Ac5_rep_10 <- Ac5_rep_10 %>% mutate(case=5) %>% mutate(invitR=0)
Ac6_rep_10 <- Ac6_rep_10 %>% mutate(case=6) %>% mutate(invitR=1)
Ac7_rep_10 <- Ac7_rep_10 %>% mutate(case=7) %>% mutate(invitR=0)
Ac10_rep_10 <- Ac10_rep_10 %>% mutate(case=10) %>% mutate(invitR=1)
Ac12_rep_10 <- Ac12_rep_10 %>% mutate(case=12) %>% mutate(invitR=0)
Ac15_rep_10 <- Ac15_rep_10 %>% mutate(case=15) %>% mutate(invitR=0)

Arep <- rbind(Ac2_rep_10, Ac3_rep_10, Ac4_rep_10, Ac5_rep_10, Ac6_rep_10, Ac7_rep_10, Ac10_rep_10, Ac12_rep_10, Ac15_rep_10)

Bc2_rep_10 <- Bc2_rep_10 %>% mutate(case=2) %>% mutate(invitR=1)
Bc3_rep_10 <- Bc3_rep_10 %>% mutate(case=3) %>% mutate(invitR=0)
Bc4_rep_10 <- Bc4_rep_10 %>% mutate(case=4) %>% mutate(invitR=1)
Bc5_rep_10 <- Bc5_rep_10 %>% mutate(case=5) %>% mutate(invitR=0)
Bc6_rep_10 <- Bc6_rep_10 %>% mutate(case=6) %>% mutate(invitR=1)
Bc7_rep_10 <- Bc7_rep_10 %>% mutate(case=7) %>% mutate(invitR=0)
Bc10_rep_10 <- Bc10_rep_10 %>% mutate(case=10) %>% mutate(invitR=1)
Bc12_rep_10 <- Bc12_rep_10 %>% mutate(case=12) %>% mutate(invitR=0)
Bc15_rep_10 <- Bc15_rep_10 %>% mutate(case=15) %>% mutate(invitR=0)

Brep <- rbind(Bc2_rep_10, Bc3_rep_10, Bc4_rep_10, Bc5_rep_10, Bc6_rep_10, Bc7_rep_10, Bc10_rep_10, Bc12_rep_10, Bc15_rep_10)


c <- aggregate(Proportion~case+invitR, sum, data=Arep)
wilcox.test(a$Proportion~invitR, data=a, mu=0, alt='two.sided', paired=F)
mean(a$Proportion[a$invitR==1])
mean(a$Proportion[a$invitR==0])

d <- aggregate(Proportion~case+invitR, sum, data=Brep)
wilcox.test(b$Proportion~invitR, data=b, mu=0, alt='two.sided', paired=F)
mean(b$Proportion[b$invitR==1])
mean(b$Proportion[b$invitR==0])



## 2wTIL/repTIL data load in SB5
#TRA
View(c2pres)
a <- aggregate(Proportion.y~caseNo, data=c2pres, sum)
inv <- c(1,1,0,1,0)
a <- cbind(a,invitR=inv)
wilcox.test(a$Proportion~invitR, data=a, mu=0, alt='two.sided', paired=F)
mean(a$Proportion[a$invitR==1])
mean(a$Proportion[a$invitR==0])

#TRB data load in SB5
View(c2pres)
a <- aggregate(Proportion.y~caseNo, data=c2pres, sum)
inv <- c(1,1,0,1,0)
a <- cbind(a,invitR=inv)
wilcox.test(a$Proportion.y~invitR, data=a, mu=0, alt='two.sided', paired=F)
mean(a$Proportion[a$invitR==1])
mean(a$Proportion[a$invitR==0])



###FFPE/rep data load in SB2
#TRA
A_Frep_c2 <- A_Frep_c2 %>% mutate(caseNo=2)
A_Frep_c3 <- A_Frep_c3 %>% mutate(caseNo=3)
A_Frep_c4 <- A_Frep_c4 %>% mutate(caseNo=4)
A_Frep_c5 <- A_Frep_c5 %>% mutate(caseNo=5)
A_Frep_c10 <- A_Frep_c10 %>% mutate(caseNo=10)
A_Frep_c12 <- A_Frep_c12 %>% mutate(caseNo=12)
A_Frep <- rbind(A_Frep_c2,A_Frep_c3,A_Frep_c4,A_Frep_c5,A_Frep_c10,A_Frep_c12)

a <- aggregate(Proportion.y~caseNo, data=A_Frep, sum)
a <- rbind(a,c(10,0))
#c10 FFPE, rep사이shared clonotype없음.
inv <- c(1,0,1,0,0,1)
a <- cbind(a,invitR=inv)
wilcox.test(a$Proportion~invitR, data=a, mu=0, alt='two.sided', paired=F)
mean(a$Proportion[a$invitR==1])
mean(a$Proportion[a$invitR==0])

#TRB data load in SB2
B_Frep_c2 <- B_Frep_c2 %>% mutate(caseNo=2)
B_Frep_c3 <- B_Frep_c3 %>% mutate(caseNo=3)
B_Frep_c4 <- B_Frep_c4 %>% mutate(caseNo=4)
B_Frep_c5 <- B_Frep_c5 %>% mutate(caseNo=5)
B_Frep_c10 <- B_Frep_c10 %>% mutate(caseNo=10)
B_Frep_c12 <- B_Frep_c12 %>% mutate(caseNo=12)
B_Frep <- rbind(B_Frep_c2,B_Frep_c3,B_Frep_c4,B_Frep_c5,B_Frep_c10,B_Frep_c12)


a <- aggregate(Proportion.y~caseNo, data=B_Frep, sum)
a <- rbind(a,c(10,0))
#c10 FFPE, rep사이shared clonotype없음.
inv <- c(1,0,1,0,0,1)
a <- cbind(a,invitR=inv)
wilcox.test(a$Proportion~invitR, data=a, mu=0, alt='two.sided', paired=F)
mean(a$Proportion[a$invitR==1])
mean(a$Proportion[a$invitR==0])



##FFPE/2w data load in SB3
#TRA
View(c2pres)
a <- aggregate(Proportion.y~caseNo, data=c2pres, sum)
f2w<- c(10,11,13,14,17,18,19,2,3,4,5,8,9)
inv <-c(1,0,0,0,0,0,1,1,0,1,0,1,1)
a <- cbind(a,invitR=inv)
wilcox.test(a$Proportion~invitR, data=a, mu=0, alt='two.sided', paired=F)
mean(a$Proportion[a$invitR==1])
mean(a$Proportion[a$invitR==0])

#TRB data load in SB3
View(c2pres)
a <- aggregate(Proportion.y~caseNo, data=c2pres, sum)
f2w<- c(10,11,13,14,17,18,19,2,3,4,5,8,9)
inv <-c(1,0,0,0,0,0,1,1,0,1,0,1,1)
a <- cbind(a,invitR=inv)
wilcox.test(a$Proportion~invitR, data=a, mu=0, alt='two.sided', paired=F)
mean(a$Proportion[a$invitR==1])
mean(a$Proportion[a$invitR==0])


#FFPE/pbmc
#TRA
A_PF_c8 <- semi_join(Ac8_p,Ac8_f, by=c("CDR3.nt","V.name","J.name"))
A_PF_c9 <- semi_join(Ac9_p,Ac9_f, by=c("CDR3.nt","V.name","J.name"))
A_PF_c10 <- semi_join(Ac10_p,Ac10_f, by=c("CDR3.nt","V.name","J.name"))
A_PF_c11 <- semi_join(Ac11_p,Ac11_f, by=c("CDR3.nt","V.name","J.name"))
A_PF_c14 <- semi_join(Ac14_p,Ac14_f, by=c("CDR3.nt","V.name","J.name"))
A_PF_c16 <- semi_join(Ac16_p,Ac16_f, by=c("CDR3.nt","V.name","J.name"))
A_PF_c17 <- semi_join(Ac17_p,Ac17_f, by=c("CDR3.nt","V.name","J.name"))
A_PF_c18 <- semi_join(Ac18_p,Ac18_f, by=c("CDR3.nt","V.name","J.name"))
A_PF_c19 <- semi_join(Ac19_p,Ac19_f, by=c("CDR3.nt","V.name","J.name"))

A_PF_c8 <- A_PF_c8%>% mutate(caseNo="c8")
A_PF_c9 <- A_PF_c9%>% mutate(caseNo="c9")
A_PF_c10 <- A_PF_c10%>% mutate(caseNo="c10")
A_PF_c11 <- A_PF_c11%>% mutate(caseNo="C11")
A_PF_c14 <- A_PF_c14%>% mutate(caseNo="c14")
A_PF_c16 <- A_PF_c16%>% mutate(caseNo="c16")
A_PF_c17 <- A_PF_c17%>% mutate(caseNo="c17")
A_PF_c18 <- A_PF_c18%>% mutate(caseNo="c18")
A_PF_c19 <- A_PF_c19%>% mutate(caseNo="c19")
pfpres <- rbind(A_PF_c8,A_PF_c9,A_PF_c10,A_PF_c11,A_PF_c14,
              A_PF_c16,A_PF_c17,A_PF_c18,A_PF_c19)

a <- aggregate(Proportion~caseNo, data=pfpres, sum)
fp<- c(10,11,14,16,17,18,19,8,9)
inv <-c(1,0,0,0,0,0,1,1,1)
a <- cbind(a,invitR=inv)
wilcox.test(a$Proportion~invitR, data=a, mu=0, alt='two.sided', paired=F)
mean(a$Proportion[a$invitR==1])
mean(a$Proportion[a$invitR==0])

#TRB
B_PF_c8 <- semi_join(Bc8_p,Bc8_f, by=c("CDR3.nt","V.name","J.name"))
B_PF_c9 <- semi_join(Bc9_p,Bc9_f, by=c("CDR3.nt","V.name","J.name"))
B_PF_c10 <- semi_join(Bc10_p,Bc10_f, by=c("CDR3.nt","V.name","J.name"))
B_PF_c11 <- semi_join(Bc11_p,Bc11_f, by=c("CDR3.nt","V.name","J.name"))
B_PF_c14 <- semi_join(Bc14_p,Bc14_f, by=c("CDR3.nt","V.name","J.name"))
B_PF_c16 <- semi_join(Bc16_p,Bc16_f, by=c("CDR3.nt","V.name","J.name"))
B_PF_c17 <- semi_join(Bc17_p,Bc17_f, by=c("CDR3.nt","V.name","J.name"))
B_PF_c18 <- semi_join(Bc18_p,Bc18_f, by=c("CDR3.nt","V.name","J.name"))
B_PF_c19 <- semi_join(Bc19_p,Bc19_f, by=c("CDR3.nt","V.name","J.name"))

B_PF_c8 <- B_PF_c8%>% mutate(caseNo="c8")
B_PF_c9 <- B_PF_c9%>% mutate(caseNo="c9")
B_PF_c10 <- B_PF_c10%>% mutate(caseNo="c10")
B_PF_c11 <- B_PF_c11%>% mutate(caseNo="C11")
B_PF_c14 <- B_PF_c14%>% mutate(caseNo="c14")
B_PF_c16 <- B_PF_c16%>% mutate(caseNo="c16")
B_PF_c17 <- B_PF_c17%>% mutate(caseNo="c17")
B_PF_c18 <- B_PF_c18%>% mutate(caseNo="c18")
B_PF_c19 <- B_PF_c19%>% mutate(caseNo="c19")
pfpres <- rbind(B_PF_c8,B_PF_c9,B_PF_c10,B_PF_c11,B_PF_c14,
                B_PF_c16,B_PF_c17,B_PF_c18,B_PF_c19)

a <- aggregate(Proportion~caseNo, data=pfpres, sum)
fp<- c(10,11,14,16,17,18,19,8,9)
inv <-c(1,0,0,0,0,0,1,1,1)
a <- cbind(a,invitR=inv)
wilcox.test(a$Proportion~invitR, data=a, mu=0, alt='two.sided', paired=F)
mean(a$Proportion[a$invitR==1])
mean(a$Proportion[a$invitR==0])



#그래프 그리기
a$invitR<- as.factor(a$invitR)
ggplot(a, aes(x=data,y=Proportion)) + geom_boxplot(aes(fill=invitR)) + theme_classic() + scale_fill_manual(
  values=c("lightsteelblue3","azure2"), name="in vitro reactivity",labels=c("No", "reactive")) + scale_x_discrete(
    limits=c("FFPE","2w","REP","CD4+","CD8+","PBMC")) + theme(axis.text.x=element_text(angle=45,hjust=1,size=8))


b$invitR<- as.factor(b$invitR)
ggplot(b, aes(x=data,y=Proportion)) + geom_boxplot(aes(fill=invitR)) + theme_classic() + scale_fill_manual(
  values=c("lightsteelblue3","azure2"), name="in vitro reactivity",labels=c("No", "reactive")) + scale_x_discrete(
    limits=c("FFPE","2w","REP","CD4+","CD8+","PBMC")) + theme(axis.text.x=element_text(angle=45,hjust=1,size=8))

