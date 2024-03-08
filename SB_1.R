
library(dplyr)
library(readxl)
library(ggplot2)
library(readr)
library(psych)


rm(list=ls())
########################################################
#date loading에서
#FFPE vs. 2w 비교까지지
########################################################


#data loading
case <- c("BC16045","BC16092","BC16096","BC16110","BC16126","BC16127","BC16143","BC16147","BC16154","BC16158","BC16166","BC16186","BC16204","BC16212","BC16213","BC16218","BC17009","BC17016","BC17020")
No <- c(1:19)
caseNo <- data.frame(No, case)


#TRA2w
TRA2w <- c("BC16092","BC16096","BC16110","BC16126","BC16147","BC16154","BC16158","BC16166","BC16204","BC16212","BC17009","BC17016","BC17020")
No2w<-c(2,3,4,5,8,9,10,11,13,14,17,18,19)
No2w<- data.frame(No2w,TRA2w)
Ac2_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\2w\\BC16092_2w_TRA_z.txt")
Ac3_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\2w\\BC16096_2w_TRA_z.txt")
Ac4_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\2w\\BC16110_2w_TRA_z.txt")
Ac5_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\2w\\BC16126_2w_TRA_z.txt")
Ac8_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\2w\\BC16147_2w_TRA_z.txt")
Ac9_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\2w\\BC16154_2w_TRA_z.txt")
Ac10_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\2w\\BC16158_2w_TRA_z.txt")
Ac11_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\2w\\BC16166_2w_TRA_z.txt")
Ac13_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\2w\\BC16204_2w_TRA_z.txt")
Ac14_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\2w\\BC16212_2w_TRA_z.txt")
Ac17_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\2w\\BC17009_2w_TRA_z.txt")
Ac18_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\2w\\BC17016_2w_TRA_z.txt")
Ac19_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\2w\\BC17020_2w_TRA_z.txt")



#TRB2w
TRB2w <- c("BC16092","BC16096","BC16110","BC16126","BC16147","BC16154","BC16158","BC16166","BC16204","BC16212","BC17009","BC17016","BC17020")
No2w<-c(2,3,4,5,8,9,10,11,13,14,17,18,19)
No2w<- data.frame(No2w,TRB2w)
Bc2_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\2w\\BC16092_2w_TRB_z.txt")
Bc3_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\2w\\BC16096_2w_TRB_z.txt")
Bc4_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\2w\\BC16110_2w_TRB_z.txt")
Bc5_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\2w\\BC16126_2w_TRB_z.txt")
Bc8_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\2w\\BC16147_2w_TRB_z.txt")
Bc9_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\2w\\BC16154_2w_TRB_z.txt")
Bc10_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\2w\\BC16158_2w_TRB_z.txt")
Bc11_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\2w\\BC16166_2w_TRB_z.txt")
Bc13_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\2w\\BC16204_2w_TRB_z.txt")
Bc14_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\2w\\BC16212_2w_TRB_z.txt")
Bc17_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\2w\\BC17009_2w_TRB_z.txt")
Bc18_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\2w\\BC17016_2w_TRB_z.txt")
Bc19_2w <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\2w\\BC17020_2w_TRB_z.txt")


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

###DATA loading, PBMC, CD4, CD8
##TRA
#pbmc




# case별로 same clone 찾기
#1. 2w & ffpe
colnames(No2w) <- c("caseNo","case")
colnames(Noffpe) <- c("caseNo","case")
F2wNo <- inner_join(No2w,Noffpe, by=c("caseNo","case"))

#TRA
A_F2w_c2 <- inner_join(Ac2_f,Ac2_2w, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c3 <- inner_join(Ac3_f,Ac3_2w, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c4 <- inner_join(Ac4_f,Ac4_2w, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c5 <- inner_join(Ac5_f,Ac5_2w, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c8 <- inner_join(Ac8_f,Ac8_2w, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c9 <- inner_join(Ac9_f,Ac9_2w, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c10 <- inner_join(Ac10_f,Ac10_2w, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c11 <- inner_join(Ac11_f,Ac11_2w, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c13 <- inner_join(Ac13_f,Ac13_2w, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c14 <- inner_join(Ac14_f,Ac14_2w, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c17 <- inner_join(Ac17_f,Ac17_2w, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c18 <- inner_join(Ac18_f,Ac18_2w, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c19 <- inner_join(Ac19_f,Ac19_2w, by=c("CDR3.nt","V.name","J.name"))

###FFPE의 10% 절단
Ac2_f <- Ac2_f %>% arrange(desc(Proportion))
Ac2_f10<- Ac2_f[1:30,]
Ac3_f <- Ac3_f %>% arrange(desc(Proportion))
Ac3_f10<- Ac3_f[1:62,]
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


#10% 절단한 case 중 shared clone에 포함되는 clone

A_F2w_c2_2 <- inner_join(Ac2_f10,A_F2w_c2, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c3_2 <- inner_join(Ac3_f10,A_F2w_c3, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c4_2 <- inner_join(Ac4_f10,A_F2w_c4, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c5_2 <- inner_join(Ac5_f10,A_F2w_c5, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c8_2 <- inner_join(Ac8_f10,A_F2w_c8, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c9_2 <- inner_join(Ac9_f10,A_F2w_c9, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c10_2 <- inner_join(Ac10_f10,A_F2w_c10, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c11_2 <- inner_join(Ac11_f10,A_F2w_c11, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c13_2 <- inner_join(Ac13_f10,A_F2w_c13, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c14_2 <- inner_join(Ac14_f10,A_F2w_c14, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c17_2 <- inner_join(Ac17_f10,A_F2w_c17, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c18_2 <- inner_join(Ac18_f10,A_F2w_c18, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c19_2 <- inner_join(Ac19_f10,A_F2w_c19, by=c("CDR3.nt","V.name","J.name"))


F2wshare_per <- data.frame(F2wNo$caseNo, F2wNo$case, c(nrow(A_F2w_c2_2)/nrow(Ac2_f10), nrow(A_F2w_c3_2)/nrow(Ac3_f10), nrow(A_F2w_c4_2)/nrow(Ac4_f10), 
                                                       nrow(A_F2w_c5_2)/nrow(Ac5_f10), nrow(A_F2w_c8_2)/nrow(Ac8_f10), nrow(A_F2w_c9_2)/nrow(Ac9_f10),
                                                       nrow(A_F2w_c10_2)/nrow(Ac10_f10), nrow(A_F2w_c11_2)/nrow(Ac11_f10), nrow(A_F2w_c13_2)/nrow(Ac13_f10),
                                                       nrow(A_F2w_c14_2)/nrow(Ac14_f10), nrow(A_F2w_c17_2)/nrow(Ac17_f10), nrow(A_F2w_c18_2)/nrow(Ac18_f10),
                                                       nrow(A_F2w_c19_2)/nrow(Ac19_f10)))
colnames(F2wshare_per)= c("caseNo","case","percent")

F2wshare_per <- F2wshare_per %>% mutate(data="TRA")

a<- F2wshare_per%>%filter(data=="TRA")
mean(a$percent)#60.0
range(a$percent) #17.1~88.6

#TRB
B_F2w_c2 <- inner_join(Bc2_f,Bc2_2w, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c3 <- inner_join(Bc3_f,Bc3_2w, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c4 <- inner_join(Bc4_f,Bc4_2w, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c5 <- inner_join(Bc5_f,Bc5_2w, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c8 <- inner_join(Bc8_f,Bc8_2w, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c9 <- inner_join(Bc9_f,Bc9_2w, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c10 <- inner_join(Bc10_f,Bc10_2w, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c11 <- inner_join(Bc11_f,Bc11_2w, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c13 <- inner_join(Bc13_f,Bc13_2w, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c14 <- inner_join(Bc14_f,Bc14_2w, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c17 <- inner_join(Bc17_f,Bc17_2w, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c18 <- inner_join(Bc18_f,Bc18_2w, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c19 <- inner_join(Bc19_f,Bc19_2w, by=c("CDR3.nt","V.name","J.name"))

###FFPE의 10% 절단
Bc2_f <- Bc2_f %>% arrange(desc(Proportion))
Bc2_f10<- Bc2_f[1:63,]
Bc3_f <- Bc3_f %>% arrange(desc(Proportion))
Bc3_f10<- Bc3_f[1:177,]
Bc4_f <- Bc4_f %>% arrange(desc(Proportion))
Bc4_f10<- Bc4_f[1:130,]
Bc5_f <- Bc5_f %>% arrange(desc(Proportion))
Bc5_f10<- Bc5_f[1:268,]
Bc8_f <- Bc8_f %>% arrange(desc(Proportion))
Bc8_f10<- Bc8_f[1:45,]
Bc9_f <- Bc9_f %>% arrange(desc(Proportion))
Bc9_f10<- Bc9_f[1:167,]
Bc10_f <- Bc10_f %>% arrange(desc(Proportion))
Bc10_f10<- Bc10_f[1:104,]
Bc11_f <- Bc11_f %>% arrange(desc(Proportion))
Bc11_f10<- Bc11_f[1:118,]
Bc13_f <- Bc13_f %>% arrange(desc(Proportion))
Bc13_f10<- Bc13_f[1:157,]
Bc14_f <- Bc14_f %>% arrange(desc(Proportion))
Bc14_f10<- Bc14_f[1:192,]
Bc17_f <- Bc17_f %>% arrange(desc(Proportion))
Bc17_f10<- Bc17_f[1:52,]
Bc18_f <- Bc18_f %>% arrange(desc(Proportion))
Bc18_f10<- Bc18_f[1:96,]
Bc19_f <- Bc19_f %>% arrange(desc(Proportion))
Bc19_f10<- Bc19_f[1:135,]


#10% 절단한 case 중 shared clone에 포함되는 clone
B_F2w_c2_2 <- inner_join(Bc2_f10,B_F2w_c2, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c3_2 <- inner_join(Bc3_f10,B_F2w_c3, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c4_2 <- inner_join(Bc4_f10,B_F2w_c4, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c5_2 <- inner_join(Bc5_f10,B_F2w_c5, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c8_2 <- inner_join(Bc8_f10,B_F2w_c8, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c9_2 <- inner_join(Bc9_f10,B_F2w_c9, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c10_2 <- inner_join(Bc10_f10,B_F2w_c10, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c11_2 <- inner_join(Bc11_f10,B_F2w_c11, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c13_2 <- inner_join(Bc13_f10,B_F2w_c13, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c14_2 <- inner_join(Bc14_f10,B_F2w_c14, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c17_2 <- inner_join(Bc17_f10,B_F2w_c17, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c18_2 <- inner_join(Bc18_f10,B_F2w_c18, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c19_2 <- inner_join(Bc19_f10,B_F2w_c19, by=c("CDR3.nt","V.name","J.name"))


F2wshare_per2 <- data.frame(F2wNo$caseNo, F2wNo$case, c(nrow(B_F2w_c2_2)/nrow(Bc2_f10), nrow(B_F2w_c3_2)/nrow(Bc3_f10), nrow(B_F2w_c4_2)/nrow(Bc4_f10), 
                                                       nrow(B_F2w_c5_2)/nrow(Bc5_f10), nrow(B_F2w_c8_2)/nrow(Bc8_f10), nrow(B_F2w_c9_2)/nrow(Bc9_f10),
                                                       nrow(B_F2w_c10_2)/nrow(Bc10_f10), nrow(B_F2w_c11_2)/nrow(Bc11_f10), nrow(B_F2w_c13_2)/nrow(Bc13_f10),
                                                       nrow(B_F2w_c14_2)/nrow(Bc14_f10), nrow(B_F2w_c17_2)/nrow(Bc17_f10), nrow(B_F2w_c18_2)/nrow(Bc18_f10),
                                                       nrow(B_F2w_c19_2)/nrow(Bc19_f10)))

colnames(F2wshare_per2)= c("caseNo","case","percent")
mean(F2wshare_per2$percent) #63.7
range(F2wshare_per2$percent) #24.3~83.2

F2wshare_per2 <- F2wshare_per2 %>% mutate(data="TRB")
F2wshare_per <- rbind(F2wshare_per,F2wshare_per2)
F2wshare_per <- F2wshare_per %>% mutate(percent=percent*100)



#graph
p <- ggplot(data=F2wshare_per, aes(x=case,y=percent, fill=data))
p + geom_col(position='dodge')+theme_classic()+theme(axis.text.x=element_text(angle=45, hjust=1))

p <- ggplot(data=F2wshare_per, aes(x=data,y=percent))
p + geom_boxplot(aes(col=data))+geom_point(aes(col=data)) + geom_line(aes(group=caseNo), color='grey') + theme_classic() + scale_x_discrete(limits=c("TRA","TRB")) 






