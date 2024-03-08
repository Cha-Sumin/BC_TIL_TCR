
#########################################
#data loading은 SB_1에서
#rep vs. ffpe 비교까지
#########################################

## rep vs. ffpe

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
Ac12_f <- Ac12_f %>% arrange(desc(Proportion))
Ac12_f10<- Ac12_f[1:36,]


#10% 절단한 case 중 shared clone에 포함되는 clone

A_Frep_c2_2 <- inner_join(Ac2_f10,A_Frep_c2, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c3_2 <- inner_join(Ac3_f10,A_Frep_c3, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c4_2 <- inner_join(Ac4_f10,A_Frep_c4, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c5_2 <- inner_join(Ac5_f10,A_Frep_c5, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c10_2 <- inner_join(Ac10_f10,A_Frep_c10, by=c("CDR3.nt","V.name","J.name"))
A_Frep_c12_2 <- inner_join(Ac12_f10,A_Frep_c12, by=c("CDR3.nt","V.name","J.name"))

Frepshare_per <- data.frame(FrepNo$caseNo, FrepNo$case, c(nrow(A_Frep_c2_2)/nrow(Ac2_f10), nrow(A_Frep_c3_2)/nrow(Ac3_f10), nrow(A_Frep_c4_2)/nrow(Ac4_f10), 
                                                       nrow(A_Frep_c5_2)/nrow(Ac5_f10),nrow(A_Frep_c10_2)/nrow(Ac10_f10), nrow(A_Frep_c12_2)/nrow(Ac12_f10)))
colnames(Frepshare_per)= c("caseNo","case","percent")
Frepshare_per <- Frepshare_per %>% mutate(data="TRA")
a<- Frepshare_per%>%filter(data=="TRA")
mean(a$percent)
range(a$percent) 

#TRB
B_Frep_c2 <- inner_join(Bc2_f,Bc2_rep, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c3 <- inner_join(Bc3_f,Bc3_rep, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c4 <- inner_join(Bc4_f,Bc4_rep, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c5 <- inner_join(Bc5_f,Bc5_rep, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c10 <- inner_join(Bc10_f,Bc10_rep, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c12 <- inner_join(Bc12_f,Bc12_rep, by=c("CDR3.nt","V.name","J.name"))


###FFPE의 10% 절단
Bc12_f <- Bc12_f %>% arrange(desc(Proportion))
Bc12_f10<- Bc12_f[1:155,]


#10% 절단한 case 중 shared clone에 포함되는 clone

B_Frep_c2_2 <- inner_join(Bc2_f10,B_Frep_c2, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c3_2 <- inner_join(Bc3_f10,B_Frep_c3, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c4_2 <- inner_join(Bc4_f10,B_Frep_c4, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c5_2 <- inner_join(Bc5_f10,B_Frep_c5, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c10_2 <- inner_join(Bc10_f10,B_Frep_c10, by=c("CDR3.nt","V.name","J.name"))
B_Frep_c12_2 <- inner_join(Bc12_f10,B_Frep_c12, by=c("CDR3.nt","V.name","J.name"))

Frepshare_per2 <- data.frame(FrepNo$caseNo, FrepNo$case, c(nrow(B_Frep_c2_2)/nrow(Bc2_f10), nrow(B_Frep_c3_2)/nrow(Bc3_f10), nrow(B_Frep_c4_2)/nrow(Bc4_f10), 
                                                          nrow(B_Frep_c5_2)/nrow(Bc5_f10),nrow(B_Frep_c10_2)/nrow(Bc10_f10), nrow(B_Frep_c12_2)/nrow(Bc12_f10)))
colnames(Frepshare_per2)= c("caseNo","case","percent")
Frepshare_per2 <- Frepshare_per2 %>% mutate(data="TRB")
Frepshare_per <- rbind(Frepshare_per,Frepshare_per2)
Frepshare_per <- Frepshare_per %>% mutate(percent=percent*100)

mean(Frepshare_per2$percent)
range(Frepshare_per2$percent)

#graph
p <- ggplot(data=Frepshare_per, aes(x=case,y=percent, fill=data))
p + geom_col(position='dodge')+theme_classic()+theme(axis.text.x=element_text(angle=45, hjust=1))




