
library(dplyr)
library(readxl)
library(ggplot2)
library(readr)
library(psych)


rm(list=ls())
########################################################
#date loading에서
#FFPE vs. rep 비교
########################################################

#data loading

#TRArep
rep <- c("BC16092", "BC16096", "BC16110", "BC16126", "BC16127", "BC16143", "BC16158", "BC16186", "BC16213")
Norep <- c(2,3,4,5,6,7,10,12,15)
Norep <- data.frame(Norep, rep)

Ac2_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\rep\\BC16092_REP_TRA_z.txt")
Ac3_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\rep\\BC16096_REP_TRA_z.txt")
Ac4_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\rep\\BC16110_REP_TRA_z.txt")
Ac5_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\rep\\BC16126_REP_TRA_z.txt")
Ac6_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\rep\\BC16127_REP_TRA_z.txt")
Ac7_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\rep\\BC16143_REP_TRA_z.txt")
Ac10_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\rep\\BC16158_REP_TRA_z.txt")
Ac12_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\rep\\BC16186_REP_TRA_z.txt")
Ac15_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\rep\\BC16213_REP_TRA_z.txt")

#TRBrep
Bc2_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\rep\\BC16092_REP_TRB_z.txt")
Bc3_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\rep\\BC16096_REP_TRB_z.txt")
Bc4_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\rep\\BC16110_REP_TRB_z.txt")
Bc5_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\rep\\BC16126_REP_TRB_z.txt")
Bc6_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\rep\\BC16127_REP_TRB_z.txt")
Bc7_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\rep\\BC16143_REP_TRB_z.txt")
Bc10_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\rep\\BC16158_REP_TRB_z.txt")
Bc12_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\rep\\BC16186_REP_TRB_z.txt")
Bc15_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\rep\\BC16213_REP_TRB_z.txt")

#############################################################################
#TRAffpe
ffpe <- c("BC16045","BC16092","BC16096","BC16110","BC16126","BC16147","BC16154","BC16158","BC16166","BC16186","BC16204","BC16212","BC16218","BC17009","BC17016","BC17020")
Noffpe <- c(1,2,3,4,5,8,9,10,11,12,13,14,16,17,18,19)
Noffpe <- data.frame(Noffpe,ffpe)
Ac1_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\ffpe\\BC16045_F_TRA_z.txt")
Ac2_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\ffpe\\BC16092_F_TRA_z.txt")
Ac3_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\ffpe\\BC16096_F_TRA_z.txt")
Ac4_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\ffpe\\BC16110_F_TRA_z.txt")
Ac5_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\ffpe\\BC16126_F_TRA_z.txt")
Ac8_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\ffpe\\BC16147_F_TRA_z.txt")
Ac9_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\ffpe\\BC16154_F_TRA_z.txt")
Ac10_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\ffpe\\BC16158_F_TRA_z.txt")
Ac11_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\ffpe\\BC16166_F_TRA_z.txt")
Ac12_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\ffpe\\BC16186_F_TRA_z.txt")
Ac13_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\ffpe\\BC16204_F_TRA_z.txt")
Ac14_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\ffpe\\BC16212_F_TRA_z.txt")
Ac16_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\ffpe\\BC16218_F_TRA_z.txt")
Ac17_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\ffpe\\BC17009_F_TRA_z.txt")
Ac18_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\ffpe\\BC17016_F_TRA_z.txt")
Ac19_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\ffpe\\BC17020_F_TRA_z.txt")


#TRB

Bc1_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\ffpe\\BC16045_F_TRB_z.txt")
Bc2_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\ffpe\\BC16092_F_TRB_z.txt")
Bc3_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\ffpe\\BC16096_F_TRB_z.txt")
Bc4_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\ffpe\\BC16110_F_TRB_z.txt")
Bc5_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\ffpe\\BC16126_F_TRB_z.txt")
Bc8_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\ffpe\\BC16147_F_TRB_z.txt")
Bc9_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\ffpe\\BC16154_F_TRB_z.txt")
Bc10_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\ffpe\\BC16158_F_TRB_z.txt")
Bc11_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\ffpe\\BC16166_F_TRB_z.txt")
Bc12_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\ffpe\\BC16186_F_TRB_z.txt")
Bc13_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\ffpe\\BC16204_F_TRB_z.txt")
Bc14_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\ffpe\\BC16212_F_TRB_z.txt")
Bc16_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\ffpe\\BC16218_F_TRB_z.txt")
Bc17_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\ffpe\\BC17009_F_TRB_z.txt")
Bc18_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\ffpe\\BC17016_F_TRB_z.txt")
Bc19_f <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\ffpe\\BC17020_F_TRB_z.txt")


#####DATA loading, ffpe, rep 2w 완료




# case별로 same clone 찾기

#1. rep & ffpe

colnames(Norep) <- c("caseNo","case")
colnames(Noffpe) <- c("caseNo","case")
FrepNo <- inner_join(Norep,Noffpe, by=c("caseNo","case"))

#TRA
A_Frep_c2 <- inner_join(Ac2_f,Ac2_rep, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c3 <- inner_join(Ac3_f,Ac3_rep, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c4 <- inner_join(Ac4_f,Ac4_rep, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c5 <- inner_join(Ac5_f,Ac5_rep, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c10 <- inner_join(Ac10_f,Ac10_rep, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c12 <- inner_join(Ac12_f,Ac12_rep, by=c("CDR3.nt","V.name","J.name"))


###FFPE의 10% 절단
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
Ac12_f <- Ac12_f %>% arrange(desc(Proportion))
Ac12_f10<- Ac12_f[1:38,]
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


#10% 절단한 case 중 shared clone에 포함되는 clone

A_Frep_c2_2 <- inner_join(Ac2_f10,A_Frep_c2, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c3_2 <- inner_join(Ac3_f10,A_Frep_c3, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c4_2 <- inner_join(Ac4_f10,A_Frep_c4, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c5_2 <- inner_join(Ac5_f10,A_Frep_c5, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c10_2 <- inner_join(Ac10_f10,A_Frep_c10, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c12_2 <- inner_join(Ac12_f10,A_Frep_c12, by=c("CDR3.nt","V.name","J.name"))



####여기까지 수정함.##########################################################



Frepshare_per <- data.frame(FrepNo$caseNo, FrepNo$case, c(nrow(A_Frep_c2_2)/nrow(Ac2_f10), nrow(A_Frep_c3_2)/nrow(Ac3_f10), nrow(A_Frep_c4_2)/nrow(Ac4_f10), 
                                                          nrow(A_Frep_c5_2)/nrow(Ac5_f10), nrow(A_Frep_c10_2)/nrow(Ac10_f10), nrow(A_Frep_c12_2)/nrow(Ac12_f10)))
colnames(Frepshare_per)= c("caseNo","case","percent")
a<- Frepshare_per%>%filter(data=="TRA")
mean(Frepshare_per$percent)#34.2
range(Frepshare_per$percent) #0-73.7

Frepshare_per <- Frepshare_per %>% mutate(data="TRA")




#TRB
B_Frep_c2 <- inner_join(Bc2_f,Bc2_rep, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c3 <- inner_join(Bc3_f,Bc3_rep, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c4 <- inner_join(Bc4_f,Bc4_rep, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c5 <- inner_join(Bc5_f,Bc5_rep, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c10 <- inner_join(Bc10_f,Bc10_rep, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c12 <- inner_join(Bc12_f,Bc12_rep, by=c("CDR3.nt","V.name","J.name"))



###FFPE의 10% 절단
Bc2_f <- Bc2_f %>% arrange(desc(Proportion))
Bc2_f10<- Bc2_f[1:63,]
Bc3_f <- Bc3_f %>% arrange(desc(Proportion))
Bc3_f10<- Bc3_f[1:177,]
Bc4_f <- Bc4_f %>% arrange(desc(Proportion))
Bc4_f10<- Bc4_f[1:130,]
Bc5_f <- Bc5_f %>% arrange(desc(Proportion))
Bc5_f10<- Bc5_f[1:268,]
Bc10_f <- Bc10_f %>% arrange(desc(Proportion))
Bc10_f10<- Bc10_f[1:104,]
Bc12_f <- Bc12_f %>% arrange(desc(Proportion))
Bc12_f10<- Bc12_f[1:156,]




#10% 절단한 case 중 shared clone에 포함되는 clone
B_Frep_c2_2 <- inner_join(Bc2_f10,B_Frep_c2, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c3_2 <- inner_join(Bc3_f10,B_Frep_c3, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c4_2 <- inner_join(Bc4_f10,B_Frep_c4, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c5_2 <- inner_join(Bc5_f10,B_Frep_c5, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c10_2 <- inner_join(Bc10_f10,B_Frep_c10, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c12_2 <- inner_join(Bc12_f10,B_Frep_c12, by=c("CDR3.nt","V.name","J.name"))


Frepshare_per2 <- data.frame(FrepNo$caseNo, FrepNo$case, c(nrow(B_Frep_c2_2)/nrow(Bc2_f10), nrow(B_Frep_c3_2)/nrow(Bc3_f10), nrow(B_Frep_c4_2)/nrow(Bc4_f10), 
                                                           nrow(B_Frep_c5_2)/nrow(Bc5_f10), nrow(B_Frep_c10_2)/nrow(Bc10_f10), nrow(B_Frep_c12_2)/nrow(Bc12_f10)))

colnames(Frepshare_per2)= c("caseNo","case","percent")
mean(Frepshare_per2$percent) #30.2
range(Frepshare_per2$percent) #0-50.4

Frepshare_per2 <- Frepshare_per2 %>% mutate(data="TRB")
Frepshare_per <- rbind(Frepshare_per,Frepshare_per2)
Frepshare_per <- Frepshare_per %>% mutate(percent=percent*100)





#graph
##col
p <- ggplot(data=Frepshare_per, aes(x=case,y=percent, fill=data))
p + geom_col(position='dodge')+theme_classic()+theme(axis.text.x=element_text(angle=45, hjust=1))


#barplot
p <- ggplot(data=Frepshare_per, aes(x=data,y=percent))
p + geom_boxplot(aes(col=data))+geom_point(aes(col=data)) + geom_line(aes(group=caseNo), color='grey') + theme_classic() + scale_x_discrete(limits=c("TRA","TRB")) 







################################################반대로 repTIL의 상위 10%는 FFPE에 얼마나 있었고, 어떤 clonotype이었을까?


# case별로 same clone 찾기

#1. rep & ffpe

colnames(Norep) <- c("caseNo","case")
colnames(Noffpe) <- c("caseNo","case")
FrepNo <- inner_join(Norep,Noffpe, by=c("caseNo","case"))

#TRA
A_Frep_c2 <- inner_join(Ac2_f,Ac2_rep, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c3 <- inner_join(Ac3_f,Ac3_rep, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c4 <- inner_join(Ac4_f,Ac4_rep, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c5 <- inner_join(Ac5_f,Ac5_rep, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c10 <- inner_join(Ac10_f,Ac10_rep, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c12 <- inner_join(Ac12_f,Ac12_rep, by=c("CDR3.nt","V.name","J.name"))

a <- rbind(A_Frep_c2, A_Frep_c3, A_Frep_c4, A_Frep_c5, A_Frep_c10, A_Frep_c12)


###REP의 10% 절단
Ac2_rep <- Ac2_rep %>% arrange(desc(Proportion))
Ac2_r10<- Ac2_rep[1:102,]
Ac3_rep <- Ac3_rep %>% arrange(desc(Proportion))
Ac3_r10<- Ac3_rep[1:91,]
Ac4_rep <- Ac4_rep %>% arrange(desc(Proportion))
Ac4_r10<- Ac4_rep[1:138,]
Ac5_rep <- Ac5_rep %>% arrange(desc(Proportion))
Ac5_r10<- Ac5_rep[1:311,]
Ac10_rep <- Ac10_rep %>% arrange(desc(Proportion))
Ac10_r10<- Ac10_rep[1:59,]
Ac12_rep <- Ac12_rep %>% arrange(desc(Proportion))
Ac12_r10<- Ac12_rep[1:157,]



#10% 절단한 case 중 shared clone에 포함되는 clone

A_Frep_c2_3 <- inner_join(Ac2_r10,A_Frep_c2, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c3_3 <- inner_join(Ac3_r10,A_Frep_c3, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c4_3 <- inner_join(Ac4_r10,A_Frep_c4, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c5_3 <- inner_join(Ac5_r10,A_Frep_c5, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c10_3 <- inner_join(Ac10_r10,A_Frep_c10, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c12_3 <- inner_join(Ac12_r10,A_Frep_c12, by=c("CDR3.nt","V.name","J.name"))



b <- data.frame(FrepNo$caseNo, FrepNo$case, c(nrow(A_Frep_c2_3)/nrow(Ac2_r10), nrow(A_Frep_c3_3)/nrow(Ac3_r10), nrow(A_Frep_c4_3)/nrow(Ac4_r10), 
                                                          nrow(A_Frep_c5_3)/nrow(Ac5_r10), nrow(A_Frep_c10_3)/nrow(Ac10_r10), nrow(A_Frep_c12_3)/nrow(Ac12_r10)))
colnames(b)= c("caseNo","case","percent")

mean(b$percent)#34.2
range(b$percent) #0-73.7

Frepshare_per <- Frepshare_per %>% mutate(data="TRA")




#TRB
B_Frep_c2 <- inner_join(Bc2_f,Bc2_rep, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c3 <- inner_join(Bc3_f,Bc3_rep, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c4 <- inner_join(Bc4_f,Bc4_rep, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c5 <- inner_join(Bc5_f,Bc5_rep, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c10 <- inner_join(Bc10_f,Bc10_rep, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c12 <- inner_join(Bc12_f,Bc12_rep, by=c("CDR3.nt","V.name","J.name"))



###FFPE의 10% 절단
Bc2_f <- Bc2_f %>% arrange(desc(Proportion))
Bc2_f10<- Bc2_f[1:63,]
Bc3_f <- Bc3_f %>% arrange(desc(Proportion))
Bc3_f10<- Bc3_f[1:177,]
Bc4_f <- Bc4_f %>% arrange(desc(Proportion))
Bc4_f10<- Bc4_f[1:130,]
Bc5_f <- Bc5_f %>% arrange(desc(Proportion))
Bc5_f10<- Bc5_f[1:268,]
Bc10_f <- Bc10_f %>% arrange(desc(Proportion))
Bc10_f10<- Bc10_f[1:104,]
Bc12_f <- Bc12_f %>% arrange(desc(Proportion))
Bc12_f10<- Bc12_f[1:156,]




#10% 절단한 case 중 shared clone에 포함되는 clone
B_Frep_c2_2 <- inner_join(Bc2_f10,B_Frep_c2, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c3_2 <- inner_join(Bc3_f10,B_Frep_c3, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c4_2 <- inner_join(Bc4_f10,B_Frep_c4, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c5_2 <- inner_join(Bc5_f10,B_Frep_c5, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c10_2 <- inner_join(Bc10_f10,B_Frep_c10, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c12_2 <- inner_join(Bc12_f10,B_Frep_c12, by=c("CDR3.nt","V.name","J.name"))


Frepshare_per2 <- data.frame(FrepNo$caseNo, FrepNo$case, c(nrow(B_Frep_c2_2)/nrow(Bc2_f10), nrow(B_Frep_c3_2)/nrow(Bc3_f10), nrow(B_Frep_c4_2)/nrow(Bc4_f10), 
                                                           nrow(B_Frep_c5_2)/nrow(Bc5_f10), nrow(B_Frep_c10_2)/nrow(Bc10_f10), nrow(B_Frep_c12_2)/nrow(Bc12_f10)))

colnames(Frepshare_per2)= c("caseNo","case","percent")
mean(Frepshare_per2$percent) #30.2
range(Frepshare_per2$percent) #0-50.4

Frepshare_per2 <- Frepshare_per2 %>% mutate(data="TRB")
Frepshare_per <- rbind(Frepshare_per,Frepshare_per2)
Frepshare_per <- Frepshare_per %>% mutate(percent=percent*100)


####################################################
b<- a$percent * 100
b<- trunc(b)
#data가 정규분포 따라는지 확인하기
hist(b, main="Histogram of data", xlab="data value", breaks=1, col="lightblue")
