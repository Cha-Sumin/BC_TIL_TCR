####viral vs PBMC

##TRB
##data load##
#PBMC
PBMC <- c("BC16147","BC16154","BC16158","BC16166","BC16212","BC16218","BC17009","BC17016","BC17020")
Nopbmc <- c(8,9,10,11,14,16,17,18,19)
Nopbmc <- data.frame(Nopbmc,PBMC)

Bc8_p <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\pbmc\\BC16147_P_TRB_z.txt")
Bc9_p <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\pbmc\\BC16154_P_TRB_z.txt")
Bc10_p <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\pbmc\\BC16158_P_TRB_z.txt")
Bc11_p <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\pbmc\\BC16166_P_TRB_z.txt")
Bc14_p <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\pbmc\\BC16212_P_TRB_z.txt")
Bc16_p <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\pbmc\\BC16218_P_TRB_z.txt")
Bc17_p <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\pbmc\\BC17009_P_TRB_z.txt")
Bc18_p <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\pbmc\\BC17016_P_TRB_z.txt")
Bc19_p <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\pbmc\\BC17020_P_TRB_z.txt")



Bc8_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\CD4CD8\\BC16147_R4_TRB_z.txt")
Bc8_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\CD4CD8\\BC16147_R8_TRB_z.txt")
Bc9_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\CD4CD8\\BC16154_R4_TRB_z.txt")
Bc9_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\CD4CD8\\BC16154_R8_TRB_z.txt")
Bc10_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\CD4CD8\\BC16158_R4_TRB_z.txt")
Bc10_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\CD4CD8\\BC16158_R8_TRB_z.txt")
Bc11_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\CD4CD8\\BC16166_R4_TRB_z.txt")
Bc11_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\CD4CD8\\BC16166_R8_TRB_z.txt")
Bc14_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\CD4CD8\\BC16212_R4_TRB_z.txt")
Bc14_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\CD4CD8\\BC16212_R8_TRB_z.txt")
Bc16_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\CD4CD8\\BC16218_R4_TRB_z.txt")
Bc16_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\CD4CD8\\BC16218_R8_TRB_z.txt")
Bc17_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\CD4CD8\\BC17009_R4_TRB_z.txt")
Bc17_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\CD4CD8\\BC17009_R8_TRB_z.txt")
Bc18_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\CD4CD8\\BC17016_R8_TRB_z.txt")
Bc19_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\CD4CD8\\BC17020_R4_TRB_z.txt")
Bc19_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\CD4CD8\\BC17020_R8_TRB_z.txt")



# rep+2w+cd4+cd8
Bc8 <- rbind(Bc8_2w, Bc8_f, Bc8_cd4, Bc8_cd8)
Bc9 <- rbind(Bc9_2w, Bc9_f, Bc9_cd4, Bc9_cd8)
Bc10 <- rbind(Bc10_2w, Bc10_f, Bc10_cd4, Bc10_cd8)
Bc11 <- rbind(Bc11_2w, Bc11_f, Bc11_cd4, Bc11_cd8)
Bc14 <- rbind(Bc14_2w, Bc14_f, Bc14_cd4, Bc14_cd8)
Bc16 <- rbind(Bc16_f, Bc16_cd4, Bc16_cd8)
Bc17 <- rbind(Bc17_2w, Bc17_f, Bc17_cd4, Bc17_cd8)
Bc18 <- rbind(Bc18_2w, Bc18_f, Bc18_cd8)
Bc19 <- rbind(Bc19_2w, Bc19_f, Bc19_cd4, Bc19_cd8)



##same clone##
##presence & absence
#presence
B_PT_c8 <- semi_join(Bc8_p,Bc8, by=c("CDR3.nt","V.name","J.name"))
B_PT_c9 <- semi_join(Bc9_p,Bc9, by=c("CDR3.nt","V.name","J.name"))
B_PT_c10 <- semi_join(Bc10_p,Bc10, by=c("CDR3.nt","V.name","J.name"))
B_PT_c11 <- semi_join(Bc11_p,Bc11, by=c("CDR3.nt","V.name","J.name"))
B_PT_c14 <- semi_join(Bc14_p,Bc14, by=c("CDR3.nt","V.name","J.name"))
B_PT_c16 <- semi_join(Bc16_p,Bc16, by=c("CDR3.nt","V.name","J.name"))
B_PT_c17 <- semi_join(Bc17_p,Bc17, by=c("CDR3.nt","V.name","J.name"))
B_PT_c18 <- semi_join(Bc18_p,Bc18, by=c("CDR3.nt","V.name","J.name"))
B_PT_c19 <- semi_join(Bc19_p,Bc19, by=c("CDR3.nt","V.name","J.name"))


B_PT_c8 <- B_PT_c8%>% mutate(caseNo="c8")
B_PT_c9 <- B_PT_c9%>% mutate(caseNo="c9")
B_PT_c10 <- B_PT_c10%>% mutate(caseNo="c10")
B_PT_c11 <- B_PT_c11%>% mutate(caseNo="c11")
B_PT_c14 <- B_PT_c14%>% mutate(caseNo="c14")
B_PT_c16 <- B_PT_c16%>% mutate(caseNo="c16")
B_PT_c17 <- B_PT_c17%>% mutate(caseNo="c17")
B_PT_c18 <- B_PT_c18%>% mutate(caseNo="c18")
B_PT_c19 <- B_PT_c19%>% mutate(caseNo="c19")


pres <- rbind(B_PT_c8,B_PT_c9,B_PT_c10,B_PT_c11,B_PT_c14,
                B_PT_c16,B_PT_c17,B_PT_c18,B_PT_c19)
pres <- pres %>% mutate(status="present")

mean(pres$Proportion) #24.8

mean(abs$Proportion)
range(pres$Proportion) #10.9-37.6



##absent
B_PT_c8 <- anti_join(Bc8_p,Bc8, by=c("CDR3.nt","V.name","J.name"))
B_PT_c9 <- anti_join(Bc9_p,Bc9, by=c("CDR3.nt","V.name","J.name"))
B_PT_c10 <- anti_join(Bc10_p,Bc10, by=c("CDR3.nt","V.name","J.name"))
B_PT_c11 <- anti_join(Bc11_p,Bc11, by=c("CDR3.nt","V.name","J.name"))
B_PT_c14 <- anti_join(Bc14_p,Bc14, by=c("CDR3.nt","V.name","J.name"))
B_PT_c16 <- anti_join(Bc16_p,Bc16, by=c("CDR3.nt","V.name","J.name"))
B_PT_c17 <- anti_join(Bc17_p,Bc17, by=c("CDR3.nt","V.name","J.name"))
B_PT_c18 <- anti_join(Bc18_p,Bc18, by=c("CDR3.nt","V.name","J.name"))
B_PT_c19 <- anti_join(Bc19_p,Bc19, by=c("CDR3.nt","V.name","J.name"))



B_PT_c8 <- B_PT_c8%>% mutate(caseNo="c8")
B_PT_c9 <- B_PT_c9%>% mutate(caseNo="c9")
B_PT_c10 <- B_PT_c10%>% mutate(caseNo="c10")
B_PT_c11 <- B_PT_c11%>% mutate(caseNo="c11")
B_PT_c14 <- B_PT_c14%>% mutate(caseNo="c14")
B_PT_c16 <- B_PT_c16%>% mutate(caseNo="c16")
B_PT_c17 <- B_PT_c17%>% mutate(caseNo="c17")
B_PT_c18 <- B_PT_c18%>% mutate(caseNo="c18")
B_PT_c19 <- B_PT_c19%>% mutate(caseNo="c19")


abs <- rbind(B_PT_c8,B_PT_c9,B_PT_c10,B_PT_c11,B_PT_c14,
              B_PT_c16,B_PT_c17,B_PT_c18,B_PT_c19)
abs <- abs %>% mutate(status="absent")



d <- aggregate(Proportion~caseNo+status, data=pres, mean)
e <- aggregate(Proportion~caseNo+status, data=abs, mean)
colnames(d) <- colnames(e)
B_PT <- rbind(d,e)


ggplot(B_PT, aes(x=status,y=Proportion)) + geom_boxplot(aes(col=status)) + geom_point(aes(col=status)) + geom_line(aes(group=caseNo), color='grey') + theme_classic() +scale_x_discrete(limits=c("present", "absent"))






##viral과 같은 clone
colnames(viral)<- c("CDR3.aa","V.name","D.name","J.name","Proportion","case")


B_Pviral_c8 <- semi_join(B_PT_c8,viral, by=c("CDR3.aa","V.name","J.name"))
B_Pviral_c9 <- semi_join(B_PT_c9,viral, by=c("CDR3.aa","V.name","J.name"))
B_Pviral_c10 <- semi_join(B_PT_c10,viral, by=c("CDR3.aa","V.name","J.name"))
B_Pviral_c11 <- semi_join(B_PT_c11,viral, by=c("CDR3.aa","V.name","J.name"))
B_Pviral_c14 <- semi_join(B_PT_c14,viral, by=c("CDR3.aa","V.name","J.name"))
B_Pviral_c16 <- semi_join(B_PT_c16,viral, by=c("CDR3.aa","V.name","J.name"))
B_Pviral_c17 <- semi_join(B_PT_c17,viral, by=c("CDR3.aa","V.name","J.name"))
B_Pviral_c18 <- semi_join(B_PT_c18,viral, by=c("CDR3.aa","V.name","J.name"))
B_Pviral_c19 <- semi_join(B_PT_c19,viral, by=c("CDR3.aa","V.name","J.name"))


Pviral <- data.frame(Nopbmc$Nopbmc, c(mean(B_Pviral_c8$Proportion),
                                      mean(B_Pviral_c9$Proportion), mean(B_Pviral_c10$Proportion), mean(B_Pviral_c11$Proportion), mean(B_Pviral_c14$Proportion),
                                      mean(B_Pviral_c16$Proportion), mean(B_Pviral_c17$Proportion), mean(B_Pviral_c18$Proportion), mean(B_Pviral_c19$Proportion)))

colnames(Pviral) <- c("caseNo","Proportion")



B_Pviral_c8 <- anti_join(B_PT_c8,viral, by=c("CDR3.aa","V.name","J.name"))
B_Pviral_c9 <- anti_join(B_PT_c9,viral, by=c("CDR3.aa","V.name","J.name"))
B_Pviral_c10 <- anti_join(B_PT_c10,viral, by=c("CDR3.aa","V.name","J.name"))
B_Pviral_c11 <- anti_join(B_PT_c11,viral, by=c("CDR3.aa","V.name","J.name"))
B_Pviral_c14 <- anti_join(B_PT_c14,viral, by=c("CDR3.aa","V.name","J.name"))
B_Pviral_c16 <- anti_join(B_PT_c16,viral, by=c("CDR3.aa","V.name","J.name"))
B_Pviral_c17 <- anti_join(B_PT_c17,viral, by=c("CDR3.aa","V.name","J.name"))
B_Pviral_c18 <- anti_join(B_PT_c18,viral, by=c("CDR3.aa","V.name","J.name"))
B_Pviral_c19 <- anti_join(B_PT_c19,viral, by=c("CDR3.aa","V.name","J.name"))


Pviral_anti<- data.frame(Nopbmc$Nopbmc, c(mean(B_Pviral_c8$Proportion),
                                      mean(B_Pviral_c9$Proportion), mean(B_Pviral_c10$Proportion), mean(B_Pviral_c11$Proportion), mean(B_Pviral_c14$Proportion),
                                      mean(B_Pviral_c16$Proportion), mean(B_Pviral_c17$Proportion), mean(B_Pviral_c18$Proportion), mean(B_Pviral_c19$Proportion)))

colnames(Pviral_anti) <- c("caseNo","Proportion")


Pviral <- Pviral %>% mutate(status="viral")
Pviral_anti <- Pviral_anti %>% mutate(status="no")

a <- rbind(Pviral,Pviral_anti)


ggplot(a, aes(x=status,y=Proportion)) + geom_boxplot(aes(col=status)) + geom_point(aes(col=status)) + geom_line(aes(group=caseNo), color='grey') + theme_classic() +scale_x_discrete(limits=c("viral", "no"))

wilcox.test(Proportion~status, data=a, mu=0, alt='two.sided', paired=T)


##TRA

##data load##
#PBMC
PBMC <- c("Ac16147","Ac16154","Ac16158","Ac16166","Ac16212","Ac16218","Ac17009","Ac17016","Ac17020")
Nopbmc <- c(8,9,10,11,14,16,17,18,19)
Nopbmc <- data.frame(Nopbmc,PBMC)

Ac8_p <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\pbmc\\BC16147_P_TRA_z.txt")
Ac9_p <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\pbmc\\BC16154_P_TRA_z.txt")
Ac10_p <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\pbmc\\BC16158_P_TRA_z.txt")
Ac11_p <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\pbmc\\BC16166_P_TRA_z.txt")
Ac14_p <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\pbmc\\BC16212_P_TRA_z.txt")
Ac16_p <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\pbmc\\BC16218_P_TRA_z.txt")
Ac17_p <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\pbmc\\BC17009_P_TRA_z.txt")
Ac18_p <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\pbmc\\BC17016_P_TRA_z.txt")
Ac19_p <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\pbmc\\BC17020_P_TRA_z.txt")



Ac8_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\CD4CD8\\BC16147_R4_TRA_z.txt")
Ac8_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\CD4CD8\\BC16147_R8_TRA_z.txt")
Ac9_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\CD4CD8\\BC16154_R4_TRA_z.txt")
Ac9_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\CD4CD8\\BC16154_R8_TRA_z.txt")
Ac10_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\CD4CD8\\BC16158_R4_TRA_z.txt")
Ac10_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\CD4CD8\\BC16158_R8_TRA_z.txt")
Ac11_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\CD4CD8\\BC16166_R4_TRA_z.txt")
Ac11_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\CD4CD8\\BC16166_R8_TRA_z.txt")
Ac14_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\CD4CD8\\BC16212_R4_TRA_z.txt")
Ac14_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\CD4CD8\\BC16212_R8_TRA_z.txt")
Ac16_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\CD4CD8\\BC16218_R4_TRA_z.txt")
Ac16_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\CD4CD8\\BC16218_R8_TRA_z.txt")
Ac17_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\CD4CD8\\BC17009_R4_TRA_z.txt")
Ac17_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\CD4CD8\\BC17009_R8_TRA_z.txt")
Ac18_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\CD4CD8\\BC17016_R8_TRA_z.txt")
Ac19_cd4 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\CD4CD8\\BC17020_R4_TRA_z.txt")
Ac19_cd8 <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\CD4CD8\\BC17020_R8_TRA_z.txt")



# rep+2w+cd4+cd8
Ac8 <- rbind(Ac8_2w, Ac8_f, Ac8_cd4, Ac8_cd8)
Ac9 <- rbind(Ac9_2w, Ac9_f, Ac9_cd4, Ac9_cd8)
Ac10 <- rbind(Ac10_2w, Ac10_f, Ac10_cd4, Ac10_cd8)
Ac11 <- rbind(Ac11_2w, Ac11_f, Ac11_cd4, Ac11_cd8)
Ac14 <- rbind(Ac14_2w, Ac14_f, Ac14_cd4, Ac14_cd8)
Ac16 <- rbind(Ac16_f, Ac16_cd4, Ac16_cd8)
Ac17 <- rbind(Ac17_2w, Ac17_f, Ac17_cd4, Ac17_cd8)
Ac18 <- rbind(Ac18_2w, Ac18_f, Ac18_cd8)
Ac19 <- rbind(Ac19_2w, Ac19_f, Ac19_cd4, Ac19_cd8)



##same clone##
##presence & absence
#presence
A_PT_c8 <- semi_join(Ac8_p,Ac8, by=c("CDR3.nt","V.name","J.name"))
A_PT_c9 <- semi_join(Ac9_p,Ac9, by=c("CDR3.nt","V.name","J.name"))
A_PT_c10 <- semi_join(Ac10_p,Ac10, by=c("CDR3.nt","V.name","J.name"))
A_PT_c11 <- semi_join(Ac11_p,Ac11, by=c("CDR3.nt","V.name","J.name"))
A_PT_c14 <- semi_join(Ac14_p,Ac14, by=c("CDR3.nt","V.name","J.name"))
A_PT_c16 <- semi_join(Ac16_p,Ac16, by=c("CDR3.nt","V.name","J.name"))
A_PT_c17 <- semi_join(Ac17_p,Ac17, by=c("CDR3.nt","V.name","J.name"))
A_PT_c18 <- semi_join(Ac18_p,Ac18, by=c("CDR3.nt","V.name","J.name"))
A_PT_c19 <- semi_join(Ac19_p,Ac19, by=c("CDR3.nt","V.name","J.name"))


A_PT_c8 <- A_PT_c8%>% mutate(caseNo="c8")
A_PT_c9 <- A_PT_c9%>% mutate(caseNo="c9")
A_PT_c10 <- A_PT_c10%>% mutate(caseNo="c10")
A_PT_c11 <- A_PT_c11%>% mutate(caseNo="C11")
A_PT_c14 <- A_PT_c14%>% mutate(caseNo="c14")
A_PT_c16 <- A_PT_c16%>% mutate(caseNo="c16")
A_PT_c17 <- A_PT_c17%>% mutate(caseNo="c17")
A_PT_c18 <- A_PT_c18%>% mutate(caseNo="c18")
A_PT_c19 <- A_PT_c19%>% mutate(caseNo="c19")


pres <- rbind(A_PT_c8,A_PT_c9,A_PT_c10,A_PT_c11,A_PT_c14,
              A_PT_c16,A_PT_c17,A_PT_c18,A_PT_c19)
pres <- pres %>% mutate(status="present")



##absent
A_PT_c8 <- anti_join(Ac8_p,Ac8, by=c("CDR3.nt","V.name","J.name"))
A_PT_c9 <- anti_join(Ac9_p,Ac9, by=c("CDR3.nt","V.name","J.name"))
A_PT_c10 <- anti_join(Ac10_p,Ac10, by=c("CDR3.nt","V.name","J.name"))
A_PT_c11 <- anti_join(Ac11_p,Ac11, by=c("CDR3.nt","V.name","J.name"))
A_PT_c14 <- anti_join(Ac14_p,Ac14, by=c("CDR3.nt","V.name","J.name"))
A_PT_c16 <- anti_join(Ac16_p,Ac16, by=c("CDR3.nt","V.name","J.name"))
A_PT_c17 <- anti_join(Ac17_p,Ac17, by=c("CDR3.nt","V.name","J.name"))
A_PT_c18 <- anti_join(Ac18_p,Ac18, by=c("CDR3.nt","V.name","J.name"))
A_PT_c19 <- anti_join(Ac19_p,Ac19, by=c("CDR3.nt","V.name","J.name"))



A_PT_c8 <- A_PT_c8%>% mutate(caseNo="c8")
A_PT_c9 <- A_PT_c9%>% mutate(caseNo="c9")
A_PT_c10 <- A_PT_c10%>% mutate(caseNo="c10")
A_PT_c11 <- A_PT_c11%>% mutate(caseNo="C11")
A_PT_c14 <- A_PT_c14%>% mutate(caseNo="c14")
A_PT_c16 <- A_PT_c16%>% mutate(caseNo="c16")
A_PT_c17 <- A_PT_c17%>% mutate(caseNo="c17")
A_PT_c18 <- A_PT_c18%>% mutate(caseNo="c18")
A_PT_c19 <- A_PT_c19%>% mutate(caseNo="c19")


abs <- rbind(A_PT_c8,A_PT_c9,A_PT_c10,A_PT_c11,A_PT_c14,
             A_PT_c16,A_PT_c17,A_PT_c18,A_PT_c19)
abs <- abs %>% mutate(status="absent")



d <- aggregate(Proportion~caseNo+status, data=pres, mean)
e <- aggregate(Proportion~caseNo+status, data=abs, mean)
colnames(d) <- colnames(e)
A_PT <- rbind(d,e)


ggplot(A_PT, aes(x=status,y=Proportion)) + geom_boxplot(aes(col=status)) + geom_point(aes(col=status)) + geom_line(aes(group=caseNo), color='grey') + theme_classic() +scale_x_discrete(limits=c("present", "absent"))



#column graph
#TRB
##presence & absence
#presence
B_PT_c8 <- semi_join(Bc8,Bc8_p, by=c("CDR3.nt","V.name","J.name"))
B_PT_c9 <- semi_join(Bc9,Bc9_p, by=c("CDR3.nt","V.name","J.name"))
B_PT_c10 <- semi_join(Bc10,Bc10_p, by=c("CDR3.nt","V.name","J.name"))
B_PT_c11 <- semi_join(Bc11,Bc11_p, by=c("CDR3.nt","V.name","J.name"))
B_PT_c14 <- semi_join(Bc14,Bc14_p, by=c("CDR3.nt","V.name","J.name"))
B_PT_c16 <- semi_join(Bc16,Bc16_p, by=c("CDR3.nt","V.name","J.name"))
B_PT_c17 <- semi_join(Bc17,Bc17_p, by=c("CDR3.nt","V.name","J.name"))
B_PT_c18 <- semi_join(Bc18,Bc18_p, by=c("CDR3.nt","V.name","J.name"))
B_PT_c19 <- semi_join(Bc19,Bc19_p, by=c("CDR3.nt","V.name","J.name"))


B_PT_c8 <- B_PT_c8%>% mutate(caseNo="c8")
B_PT_c9 <- B_PT_c9%>% mutate(caseNo="c9")
B_PT_c10 <- B_PT_c10%>% mutate(caseNo="c10")
B_PT_c11 <- B_PT_c11%>% mutate(caseNo="c11")
B_PT_c14 <- B_PT_c14%>% mutate(caseNo="c14")
B_PT_c16 <- B_PT_c16%>% mutate(caseNo="c16")
B_PT_c17 <- B_PT_c17%>% mutate(caseNo="c17")
B_PT_c18 <- B_PT_c18%>% mutate(caseNo="c18")
B_PT_c19 <- B_PT_c19%>% mutate(caseNo="c19")


pres <- rbind(B_PT_c8,B_PT_c9,B_PT_c10,B_PT_c11,B_PT_c14,
              B_PT_c16,B_PT_c17,B_PT_c18,B_PT_c19)
pres <- pres %>% mutate(status="present")




##absent
B_PT_c8 <- anti_join(Bc8,Bc8_p, by=c("CDR3.nt","V.name","J.name"))
B_PT_c9 <- anti_join(Bc9,Bc9_p, by=c("CDR3.nt","V.name","J.name"))
B_PT_c10 <- anti_join(Bc10,Bc10_p, by=c("CDR3.nt","V.name","J.name"))
B_PT_c11 <- anti_join(Bc11,Bc11_p, by=c("CDR3.nt","V.name","J.name"))
B_PT_c14 <- anti_join(Bc14,Bc14_p, by=c("CDR3.nt","V.name","J.name"))
B_PT_c16 <- anti_join(Bc16,Bc16_p, by=c("CDR3.nt","V.name","J.name"))
B_PT_c17 <- anti_join(Bc17,Bc17_p, by=c("CDR3.nt","V.name","J.name"))
B_PT_c18 <- anti_join(Bc18,Bc18_p, by=c("CDR3.nt","V.name","J.name"))
B_PT_c19 <- anti_join(Bc19,Bc19_p, by=c("CDR3.nt","V.name","J.name"))



B_PT_c8 <- B_PT_c8%>% mutate(caseNo="c8")
B_PT_c9 <- B_PT_c9%>% mutate(caseNo="c9")
B_PT_c10 <- B_PT_c10%>% mutate(caseNo="c10")
B_PT_c11 <- B_PT_c11%>% mutate(caseNo="c11")
B_PT_c14 <- B_PT_c14%>% mutate(caseNo="c14")
B_PT_c16 <- B_PT_c16%>% mutate(caseNo="c16")
B_PT_c17 <- B_PT_c17%>% mutate(caseNo="c17")
B_PT_c18 <- B_PT_c18%>% mutate(caseNo="c18")
B_PT_c19 <- B_PT_c19%>% mutate(caseNo="c19")


abs <- rbind(B_PT_c8,B_PT_c9,B_PT_c10,B_PT_c11,B_PT_c14,
             B_PT_c16,B_PT_c17,B_PT_c18,B_PT_c19)
abs <- abs %>% mutate(status="absent")



d <- aggregate(Proportion~caseNo+status, data=pres, mean)
e <- aggregate(Proportion~caseNo+status, data=abs, mean)
colnames(d) <- colnames(e)
B_PT <- rbind(d,e)

ggplot(B_PT, aes(x=status,y=Proportion)) + geom_boxplot(aes(col=status)) + geom_point(aes(col=status)) + geom_line(aes(group=caseNo), color='grey') + theme_classic() +scale_x_discrete(limits=c("present", "absent"))



g <- c(nrow(pres[pres$caseNo=="c8",]), nrow(pres[pres$caseNo=="c9",]),nrow(pres[pres$caseNo=="c10",]),nrow(pres[pres$caseNo=="c11",]),nrow(pres[pres$caseNo=="c14",]),
       nrow(pres[pres$caseNo=="c16",]),nrow(pres[pres$caseNo=="c17",]),nrow(pres[pres$caseNo=="c18",]),nrow(pres[pres$caseNo=="c19",]))
h <- c(nrow(abs[abs$caseNo=="c8",]), nrow(abs[abs$caseNo=="c9",]),nrow(abs[abs$caseNo=="c10",]),nrow(abs[abs$caseNo=="c11",]),nrow(abs[abs$caseNo=="c14",]),
       nrow(abs[abs$caseNo=="c16",]),nrow(abs[abs$caseNo=="c17",]),nrow(abs[abs$caseNo=="c18",]),nrow(abs[abs$caseNo=="c19",]))

i <- g+h
j <- g/i



PTshare_per <- data.frame(Nopbmc$Nopbmc, g,j)

colnames(PTshare_per)<-c("caseNo","same_clone","percent")


mean(PTshare_per$percent) #23.7
range(PTshare_per$percent) #12.6-38.7

PTshare_per <- PTshare_per %>% mutate(data="TRB")

#TRA
##presence & absence
#presence
A_PT_c8 <- semi_join(Ac8,Ac8_p, by=c("CDR3.nt","V.name","J.name"))
A_PT_c9 <- semi_join(Ac9,Ac9_p, by=c("CDR3.nt","V.name","J.name"))
A_PT_c10 <- semi_join(Ac10,Ac10_p, by=c("CDR3.nt","V.name","J.name"))
A_PT_c11 <- semi_join(Ac11,Ac11_p, by=c("CDR3.nt","V.name","J.name"))
A_PT_c14 <- semi_join(Ac14,Ac14_p, by=c("CDR3.nt","V.name","J.name"))
A_PT_c16 <- semi_join(Ac16,Ac16_p, by=c("CDR3.nt","V.name","J.name"))
A_PT_c17 <- semi_join(Ac17,Ac17_p, by=c("CDR3.nt","V.name","J.name"))
A_PT_c18 <- semi_join(Ac18,Ac18_p, by=c("CDR3.nt","V.name","J.name"))
A_PT_c19 <- semi_join(Ac19,Ac19_p, by=c("CDR3.nt","V.name","J.name"))


A_PT_c8 <- A_PT_c8%>% mutate(caseNo="c8")
A_PT_c9 <- A_PT_c9%>% mutate(caseNo="c9")
A_PT_c10 <- A_PT_c10%>% mutate(caseNo="c10")
A_PT_c11 <- A_PT_c11%>% mutate(caseNo="c11")
A_PT_c14 <- A_PT_c14%>% mutate(caseNo="c14")
A_PT_c16 <- A_PT_c16%>% mutate(caseNo="c16")
A_PT_c17 <- A_PT_c17%>% mutate(caseNo="c17")
A_PT_c18 <- A_PT_c18%>% mutate(caseNo="c18")
A_PT_c19 <- A_PT_c19%>% mutate(caseNo="c19")


pres <- rbind(A_PT_c8,A_PT_c9,A_PT_c10,A_PT_c11,A_PT_c14,
              A_PT_c16,A_PT_c17,A_PT_c18,A_PT_c19)
pres <- pres %>% mutate(status="present")

##absent
A_PT_c8 <- anti_join(Ac8,Ac8_p, by=c("CDR3.nt","V.name","J.name"))
A_PT_c9 <- anti_join(Ac9,Ac9_p, by=c("CDR3.nt","V.name","J.name"))
A_PT_c10 <- anti_join(Ac10,Ac10_p, by=c("CDR3.nt","V.name","J.name"))
A_PT_c11 <- anti_join(Ac11,Ac11_p, by=c("CDR3.nt","V.name","J.name"))
A_PT_c14 <- anti_join(Ac14,Ac14_p, by=c("CDR3.nt","V.name","J.name"))
A_PT_c16 <- anti_join(Ac16,Ac16_p, by=c("CDR3.nt","V.name","J.name"))
A_PT_c17 <- anti_join(Ac17,Ac17_p, by=c("CDR3.nt","V.name","J.name"))
A_PT_c18 <- anti_join(Ac18,Ac18_p, by=c("CDR3.nt","V.name","J.name"))
A_PT_c19 <- anti_join(Ac19,Ac19_p, by=c("CDR3.nt","V.name","J.name"))



A_PT_c8 <- A_PT_c8%>% mutate(caseNo="c8")
A_PT_c9 <- A_PT_c9%>% mutate(caseNo="c9")
A_PT_c10 <- A_PT_c10%>% mutate(caseNo="c10")
A_PT_c11 <- A_PT_c11%>% mutate(caseNo="c11")
A_PT_c14 <- A_PT_c14%>% mutate(caseNo="c14")
A_PT_c16 <- A_PT_c16%>% mutate(caseNo="c16")
A_PT_c17 <- A_PT_c17%>% mutate(caseNo="c17")
A_PT_c18 <- A_PT_c18%>% mutate(caseNo="c18")
A_PT_c19 <- A_PT_c19%>% mutate(caseNo="c19")


abs <- rbind(A_PT_c8,A_PT_c9,A_PT_c10,A_PT_c11,A_PT_c14,
             A_PT_c16,A_PT_c17,A_PT_c18,A_PT_c19)
abs <- abs %>% mutate(status="absent")



d <- aggregate(Proportion~caseNo+status, data=pres, mean)
e <- aggregate(Proportion~caseNo+status, data=abs, mean)
colnames(d) <- colnames(e)
A_PT <- rbind(d,e)

ggplot(A_PT, aes(x=status,y=Proportion)) + geom_boxplot(aes(col=status)) + geom_point(aes(col=status)) + geom_line(aes(group=caseNo), color='grey') + theme_classic() +scale_x_discrete(limits=c("present", "absent"))



g <- c(nrow(pres[pres$caseNo=="c8",]), nrow(pres[pres$caseNo=="c9",]),nrow(pres[pres$caseNo=="c10",]),nrow(pres[pres$caseNo=="c11",]),nrow(pres[pres$caseNo=="c14",]),
       nrow(pres[pres$caseNo=="c16",]),nrow(pres[pres$caseNo=="c17",]),nrow(pres[pres$caseNo=="c18",]),nrow(pres[pres$caseNo=="c19",]))
h <- c(nrow(abs[abs$caseNo=="c8",]), nrow(abs[abs$caseNo=="c9",]),nrow(abs[abs$caseNo=="c10",]),nrow(abs[abs$caseNo=="c11",]),nrow(abs[abs$caseNo=="c14",]),
       nrow(abs[abs$caseNo=="c16",]),nrow(abs[abs$caseNo=="c17",]),nrow(abs[abs$caseNo=="c18",]),nrow(abs[abs$caseNo=="c19",]))

i <- g+h
j <- g/i



PTshare_per2 <- data.frame(Nopbmc$Nopbmc, g,j)

colnames(PTshare_per2)<-c("caseNo","same_clone","percent")


mean(PTshare_per2$percent) #24.8
range(PTshare_per2$percent) #10.9-37.6


PTshare_per2 <- PTshare_per2 %>% mutate(data="TRA")
PTshare_per <- cbind(PTshare_per,Nopbmc$PBMC)
PTshare_per2 <- cbind(PTshare_per2,Nopbmc$PBMC)

k <- rbind(PTshare_per2,PTshare_per)

k <- k %>% mutate(percent=percent*100)

colnames(k) <- c("caseNo","same_clone","percent","data","case")
#graph
p <- ggplot(data=k, aes(x=case,y=percent, fill=data))
p + geom_col(position='dodge')+theme_classic()+theme(axis.text.x=element_text(angle=45, hjust=1))


