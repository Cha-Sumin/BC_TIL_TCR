HBV <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\HBV_public.tsv")
CMV <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\public_CMV.tsv")
YF <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\yellowfever_public.tsv")


HBV <- HBV %>% mutate(virus="HBV")
CMV <- CMV %>% mutate(virus="CMV")
YF <- YF %>% mutate(virus="YF")

viral <- rbind(HBV, CMV, YF)



######2024,02, virus update
#####viral from VDJdb


public <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Downloads\\SearchTable-2024-02-22 02_22_51.283.tsv")
EBV <- public %>% filter(`Epitope species`=="EBV")
fluA <- public %>% filter(`Epitope species`=="InfluenzaA")
HCV <- public %>% filter(`Epitope species`=="HCV")
CMV <- public %>% filter(`Epitope species`=="CMV")


virus <- rbind (EBV, fluA, HCV, CMV)
virus <- data.frame(virus$CDR3, virus$V,NA, virus$J,NA,NA,virus$`Epitope species`)
colnames(virus) <- colnames(viral)

viral <- rbind(viral, virus)
viral <- unique(viral)


##viral과 같은 clone
colnames(viral)<- c("CDR3.aa","V.name","D.name","J.name","Proportion","case","virus")

#FFPE
B_Fviral_c1 <- inner_join(Bc1_f,viral, by=c("CDR3.aa","V.name","J.name"))
B_Fviral_c2 <- inner_join(Bc2_f,viral, by=c("CDR3.aa","V.name","J.name"))
B_Fviral_c3 <- inner_join(Bc3_f,viral, by=c("CDR3.aa","V.name","J.name"))
B_Fviral_c4 <- inner_join(Bc4_f,viral, by=c("CDR3.aa","V.name","J.name"))
B_Fviral_c5 <- inner_join(Bc5_f,viral, by=c("CDR3.aa","V.name","J.name"))
B_Fviral_c8 <- inner_join(Bc8_f,viral, by=c("CDR3.aa","V.name","J.name"))
B_Fviral_c9 <- inner_join(Bc9_f,viral, by=c("CDR3.aa","V.name","J.name"))
B_Fviral_c10 <- inner_join(Bc10_f,viral, by=c("CDR3.aa","V.name","J.name"))
B_Fviral_c11 <- inner_join(Bc11_f,viral, by=c("CDR3.aa","V.name","J.name"))
B_Fviral_c12 <- inner_join(Bc12_f,viral, by=c("CDR3.aa","V.name","J.name"))
B_Fviral_c13 <- inner_join(Bc13_f,viral, by=c("CDR3.aa","V.name","J.name"))
B_Fviral_c14 <- inner_join(Bc14_f,viral, by=c("CDR3.aa","V.name","J.name"))
B_Fviral_c16 <- inner_join(Bc16_f,viral, by=c("CDR3.aa","V.name","J.name"))
B_Fviral_c17 <- inner_join(Bc17_f,viral, by=c("CDR3.aa","V.name","J.name"))
B_Fviral_c18 <- inner_join(Bc18_f,viral, by=c("CDR3.aa","V.name","J.name"))
B_Fviral_c19 <- inner_join(Bc19_f,viral, by=c("CDR3.aa","V.name","J.name"))

Fviral <- data.frame(Noffpe$caseNo, c(sum(B_Fviral_c1$Proportion.x), sum(B_Fviral_c2$Proportion.x), sum(B_Fviral_c3$Proportion.x),
                                      sum(B_Fviral_c4$Proportion.x), sum(B_Fviral_c5$Proportion.x), sum(B_Fviral_c8$Proportion.x),
                                      sum(B_Fviral_c9$Proportion.x), sum(B_Fviral_c10$Proportion.x), sum(B_Fviral_c11$Proportion.x),
                                      sum(B_Fviral_c12$Proportion.x), sum(B_Fviral_c13$Proportion.x), sum(B_Fviral_c14$Proportion.x),
                                      sum(B_Fviral_c16$Proportion.x), sum(B_Fviral_c17$Proportion.x), sum(B_Fviral_c18$Proportion.x),
                                      sum(B_Fviral_c19$Proportion.x)))
colnames(Fviral) <- c("caseNo","viral_proportion")

#REP
B_Rviral_c2 <- inner_join(Bc2_rep,viral, by=c("CDR3.aa","V.name","J.name"))
B_Rviral_c3 <- inner_join(Bc3_rep,viral, by=c("CDR3.aa","V.name","J.name"))
B_Rviral_c4 <- inner_join(Bc4_rep,viral, by=c("CDR3.aa","V.name","J.name"))
B_Rviral_c5 <- inner_join(Bc5_rep,viral, by=c("CDR3.aa","V.name","J.name"))
B_Rviral_c6 <- inner_join(Bc6_rep,viral, by=c("CDR3.aa","V.name","J.name"))
B_Rviral_c7 <- inner_join(Bc7_rep,viral, by=c("CDR3.aa","V.name","J.name"))
B_Rviral_c10 <- inner_join(Bc10_rep,viral, by=c("CDR3.aa","V.name","J.name"))
B_Rviral_c12 <- inner_join(Bc12_rep,viral, by=c("CDR3.aa","V.name","J.name"))
B_Rviral_c15 <- inner_join(Bc15_rep,viral, by=c("CDR3.aa","V.name","J.name"))

Rviral <- data.frame(Norep$case, c(sum(B_Rviral_c2$Proportion.x),sum(B_Rviral_c3$Proportion.x),sum(B_Rviral_c4$Proportion.x),
                                    sum(B_Rviral_c5$Proportion.x),sum(B_Rviral_c6$Proportion.x),sum(B_Rviral_c7$Proportion.x),
                                    sum(B_Rviral_c10$Proportion.x),sum(B_Rviral_c12$Proportion.x),sum(B_Rviral_c15$Proportion.x)))

colnames(Rviral) <- c("caseNo","viral_proportion")
colnames(Noffpe) <- c("No","case")
colnames(Norep) <- c("No","case")
RF <- inner_join(Noffpe, Norep, by=c("No","case"))

Fviral2 <- data.frame(case=RF$No, proportion=c(sum(B_Fviral_c2$Proportion.x), sum(B_Fviral_c3$Proportion.x),
                                       sum(B_Fviral_c4$Proportion.x), sum(B_Fviral_c5$Proportion.x),
                                       sum(B_Fviral_c10$Proportion.x), sum(B_Fviral_c12$Proportion.x)))
Fviral2 <- Fviral2 %>% mutate(data="FFPE")
Rviral2 <- data.frame(case=RF$No, proportion=c(sum(B_Rviral_c2$Proportion.x), sum(B_Rviral_c3$Proportion.x),
                                      sum(B_Rviral_c4$Proportion.x), sum(B_Rviral_c5$Proportion.x),
                                      sum(B_Rviral_c10$Proportion.x), sum(B_Rviral_c12$Proportion.x)))
Rviral2 <-Rviral2 %>% mutate(data="rep")
            
ffpe_rep_viral <- rbind(Fviral2, Rviral2)


p <- ggplot(ffpe_rep_viral, aes(x=data, y=proportion))
p + geom_boxplot(aes(col=data)) + geom_point(aes(col=data)) + geom_line(aes(group=case), color='grey') + theme_classic()


colnames(Fviral) <-c("case","proportion")
colnames(Rviral) <-c("case","proportion")
colnames(Fviral2) <-c("case","proportion")
colnames(Fviral) <-c("case","proportion")


mean(Fviral$proportion)
range(Fviral$proportion)
mean(Rviral$proportion)
range(Rviral$proportion)

mean(Fviral2$proportion)
range(Fviral2$proportion)
mean(Rviral2$proportion)
range(Rviral2$proportion)

Fviral <-Fviral %>% mutate(data="FFPE")
Rviral <- Rviral %>% mutate(data="rep")

a <- rbind(Fviral, Rviral)

wilcox.test(proportion~data, data=ffpe_rep_viral, mu=0, alt='two.sided', paired=T)
wilcox.test(proportion~data, data=a, mu=0, alt='two.sided', paired=F)


p <- ggplot(a, aes(x=data, y=proportion))
p + geom_boxplot(aes(col=data)) + geom_point(aes(col=data)) + geom_line(aes(group=case), color='grey') + theme_classic()


