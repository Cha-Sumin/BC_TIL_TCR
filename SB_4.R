
##################################################################
#Supplementary table채우기~ invitro reactivity
##################################################################
#TRA2w
invitR <- data.frame(caseNo=c(1:19), invitR=c(0,1,0,1,0,1,0,1,1,1,0,0,0,0,0,0,0,0,1))

  
TRA2w <- c("BC16092","BC16096","BC16110","BC16126","BC16147","BC16154","BC16158","BC16166","BC16204","BC16212","BC17009","BC17016","BC17020")
No2w<-c(2,3,4,5,8,9,10,11,13,14,17,18,19)
No2w<- data.frame(No2w,TRA2w)
colnames(No2w) <- c("caseNo", "case")
No2w <- inner_join(No2w,invitR, by="caseNo")

Ac2_2w <- Ac2_2w %>% arrange(desc(Proportion))
Ac2_2w_10 <- Ac2_2w[1:round(nrow(Ac2_2w)/10),]
Ac3_2w <- Ac3_2w %>% arrange(desc(Proportion))
Ac3_2w_10 <- Ac3_2w[1:round(nrow(Ac3_2w)/10),]
Ac4_2w <- Ac4_2w %>% arrange(desc(Proportion))
Ac4_2w_10 <- Ac4_2w[1:round(nrow(Ac4_2w)/10),]
Ac5_2w <- Ac5_2w %>% arrange(desc(Proportion))
Ac5_2w_10 <- Ac5_2w[1:round(nrow(Ac5_2w)/10),]
Ac8_2w <- Ac8_2w %>% arrange(desc(Proportion))
Ac8_2w_10 <- Ac8_2w[1:round(nrow(Ac8_2w)/10),]
Ac9_2w <- Ac9_2w %>% arrange(desc(Proportion))
Ac9_2w_10 <- Ac9_2w[1:round(nrow(Ac9_2w)/10),]
Ac10_2w <- Ac10_2w %>% arrange(desc(Proportion))
Ac10_2w_10 <- Ac10_2w[1:round(nrow(Ac10_2w)/10),]
Ac11_2w <- Ac11_2w %>% arrange(desc(Proportion))
Ac11_2w_10 <- Ac11_2w[1:round(nrow(Ac11_2w)/10),]
Ac13_2w <- Ac13_2w %>% arrange(desc(Proportion))
Ac13_2w_10 <- Ac13_2w[1:round(nrow(Ac13_2w)/10),]
Ac14_2w <- Ac14_2w %>% arrange(desc(Proportion))
Ac14_2w_10 <- Ac14_2w[1:round(nrow(Ac14_2w)/10),]
Ac17_2w <- Ac17_2w %>% arrange(desc(Proportion))
Ac17_2w_10 <- Ac17_2w[1:round(nrow(Ac17_2w)/10),]
Ac18_2w <- Ac18_2w %>% arrange(desc(Proportion))
Ac18_2w_10 <- Ac18_2w[1:round(nrow(Ac18_2w)/10),]
Ac19_2w <- Ac19_2w %>% arrange(desc(Proportion))
Ac19_2w_10 <- Ac19_2w[1:round(nrow(Ac19_2w)/10),]


prop <- c(mean(Ac2_2w_10$Proportion),mean(Ac3_2w_10$Proportion),mean(Ac4_2w_10$Proportion),mean(Ac5_2w_10$Proportion),
          mean(Ac8_2w_10$Proportion),mean(Ac9_2w_10$Proportion),mean(Ac10_2w_10$Proportion),mean(Ac11_2w_10$Proportion),
          mean(Ac13_2w_10$Proportion),mean(Ac14_2w_10$Proportion),mean(Ac17_2w_10$Proportion),mean(Ac18_2w_10$Proportion),
          mean(Ac19_2w_10$Proportion))

No2w <- cbind(No2w, prop)
wilcox.test(prop~invitR, data=No2w, mu=0, alt='two.sided', paired=F)
mean(No2w[No2w$invitR==0,]$prop)
mean(No2w[No2w$invitR==1,]$prop)


#TRB2w
invitR <- data.frame(caseNo=c(1:19), invitR=c(0,1,0,1,0,1,0,1,1,1,0,0,0,0,0,0,0,0,1))

TRA2w <- c("BC16092","BC16096","BC16110","BC16126","BC16147","BC16154","BC16158","BC16166","BC16204","BC16212","BC17009","BC17016","BC17020")
No2w<-c(2,3,4,5,8,9,10,11,13,14,17,18,19)
No2w<- data.frame(No2w,TRA2w)
colnames(No2w) <- c("caseNo", "case")
No2w <- inner_join(No2w,invitR, by="caseNo")


Bc2_2w <- Bc2_2w %>% arrange(desc(Proportion))
Bc2_2w_10 <- Bc2_2w[1:round(nrow(Bc2_2w)/10),]
Bc3_2w <- Bc3_2w %>% arrange(desc(Proportion))
Bc3_2w_10 <- Bc3_2w[1:round(nrow(Bc3_2w)/10),]
Bc4_2w <- Bc4_2w %>% arrange(desc(Proportion))
Bc4_2w_10 <- Bc4_2w[1:round(nrow(Bc4_2w)/10),]
Bc5_2w <- Bc5_2w %>% arrange(desc(Proportion))
Bc5_2w_10 <- Bc5_2w[1:round(nrow(Bc5_2w)/10),]
Bc8_2w <- Bc8_2w %>% arrange(desc(Proportion))
Bc8_2w_10 <- Bc8_2w[1:round(nrow(Bc8_2w)/10),]
Bc9_2w <- Bc9_2w %>% arrange(desc(Proportion))
Bc9_2w_10 <- Bc9_2w[1:round(nrow(Bc9_2w)/10),]
Bc10_2w <- Bc10_2w %>% arrange(desc(Proportion))
Bc10_2w_10 <- Bc10_2w[1:round(nrow(Bc10_2w)/10),]
Bc11_2w <- Bc11_2w %>% arrange(desc(Proportion))
Bc11_2w_10 <- Bc11_2w[1:round(nrow(Bc11_2w)/10),]
Bc13_2w <- Bc13_2w %>% arrange(desc(Proportion))
Bc13_2w_10 <- Bc13_2w[1:round(nrow(Bc13_2w)/10),]
Bc14_2w <- Bc14_2w %>% arrange(desc(Proportion))
Bc14_2w_10 <- Bc14_2w[1:round(nrow(Bc14_2w)/10),]
Bc17_2w <- Bc17_2w %>% arrange(desc(Proportion))
Bc17_2w_10 <- Bc17_2w[1:round(nrow(Bc17_2w)/10),]
Bc18_2w <- Bc18_2w %>% arrange(desc(Proportion))
Bc18_2w_10 <- Bc18_2w[1:round(nrow(Bc18_2w)/10),]
Bc19_2w <- Bc19_2w %>% arrange(desc(Proportion))
Bc19_2w_10 <- Bc19_2w[1:round(nrow(Bc19_2w)/10),]


prop <- c(mean(Bc2_2w_10$Proportion),mean(Bc3_2w_10$Proportion),mean(Bc4_2w_10$Proportion),mean(Bc5_2w_10$Proportion),
          mean(Bc8_2w_10$Proportion),mean(Bc9_2w_10$Proportion),mean(Bc10_2w_10$Proportion),mean(Bc11_2w_10$Proportion),
          mean(Bc13_2w_10$Proportion),mean(Bc14_2w_10$Proportion),mean(Bc17_2w_10$Proportion),mean(Bc18_2w_10$Proportion),
          mean(Bc19_2w_10$Proportion))

No2w <- cbind(No2w, prop)
wilcox.test(prop~invitR, data=No2w, mu=0, alt='two.sided', paired=F)
mean(No2w[No2w$invitR==0,]$prop)
mean(No2w[No2w$invitR==1,]$prop)
##############################################






