###################################################
#rep vs. 2wTIL ffpe와 shared clonotype에 대한 비교
#presence와 absence 사이의 proportion 비교
###################################################
#1. rep & ffpe
rep2wNo <- inner_join(Norep,No2w, by=c("caseNo","case"))
###################################################
#TRA
a <- F2wshare_per %>% filter(data=="TRA")
b <- Frepshare_per %>% filter(data=="TRA")
F2w <- subset(a, caseNo %in% c(2,3,4,5,10))
Frep <- subset(b, caseNo %in% c(2,3,4,5,10))

F2w <- F2w %>% mutate(data="2w")
Frep <- Frep %>% mutate(data="rep")

c<- rbind(F2w, Frep)

wilcox.test(c$percent~data, data=c, mu=0, alt='two.sided', paired=T)

ggplot(c, aes(x=data,y=percent)) + geom_boxplot(aes(col=data)) + geom_point(aes(col=data)) + geom_line(aes(group=caseNo), color='grey') + theme_classic()

##########################################################
#TRB
a <- F2wshare_per %>% filter(data=="TRB")
b <- Frepshare_per %>% filter(data=="TRB")
F2w <- subset(a, caseNo %in% c(2,3,4,5,10))
Frep <- subset(b, caseNo %in% c(2,3,4,5,10))

F2w <- F2w %>% mutate(data="2w")
Frep <- Frep %>% mutate(data="rep")

c<- rbind(F2w, Frep)

wilcox.test(c$percent~data, data=c, mu=0, alt='two.sided', paired=T)

ggplot(c, aes(x=data,y=percent)) + geom_boxplot(aes(col=data)) + geom_point(aes(col=data)) + geom_line(aes(group=caseNo), color='grey') + theme_classic()
##########################################################################
##presence & absence
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


A_F2w_c2 <- A_F2w_c2%>% mutate(caseNo="c2")
A_F2w_c3 <- A_F2w_c3%>% mutate(caseNo="c3")
A_F2w_c4 <- A_F2w_c4%>% mutate(caseNo="c4")
A_F2w_c5 <- A_F2w_c5%>% mutate(caseNo="c5")
A_F2w_c8 <- A_F2w_c8%>% mutate(caseNo="c8")
A_F2w_c9 <- A_F2w_c9%>% mutate(caseNo="c9")
A_F2w_c10 <- A_F2w_c10%>% mutate(caseNo="c10")
A_F2w_c11 <- A_F2w_c11%>% mutate(caseNo="C11")
A_F2w_c13 <- A_F2w_c13%>% mutate(caseNo="c13")
A_F2w_c14 <- A_F2w_c14%>% mutate(caseNo="c14")
A_F2w_c17 <- A_F2w_c17%>% mutate(caseNo="c17")
A_F2w_c18 <- A_F2w_c18%>% mutate(caseNo="c18")
A_F2w_c19 <- A_F2w_c19%>% mutate(caseNo="c19")


c2pres <- rbind(A_F2w_c2,A_F2w_c3,A_F2w_c4,A_F2w_c5,A_F2w_c8,A_F2w_c9,A_F2w_c10,A_F2w_c11,A_F2w_c13,
                A_F2w_c14,A_F2w_c17,A_F2w_c18,A_F2w_c19)
c2pres <- c2pres %>% mutate(status="present in FFPE")


A_F2w_c2 <- anti_join(Ac2_2w,Ac2_f, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c3 <- anti_join(Ac3_2w,Ac3_f, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c4 <- anti_join(Ac4_2w,Ac4_f, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c5 <- anti_join(Ac5_2w,Ac5_f, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c8 <- anti_join(Ac8_2w,Ac8_f, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c9 <- anti_join(Ac9_2w,Ac9_f, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c10 <- anti_join(Ac10_2w,Ac10_f, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c11 <- anti_join(Ac11_2w,Ac11_f, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c13 <- anti_join(Ac13_2w,Ac13_f, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c14 <- anti_join(Ac14_2w,Ac14_f, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c17 <- anti_join(Ac17_2w,Ac17_f, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c18 <- anti_join(Ac18_2w,Ac18_f, by=c("CDR3.nt","V.name","J.name"))
A_F2w_c19 <- anti_join(Ac19_2w,Ac19_f, by=c("CDR3.nt","V.name","J.name"))

A_F2w_c2 <- A_F2w_c2%>% mutate(caseNo="c2")
A_F2w_c3 <- A_F2w_c3%>% mutate(caseNo="c3")
A_F2w_c4 <- A_F2w_c4%>% mutate(caseNo="c4")
A_F2w_c5 <- A_F2w_c5%>% mutate(caseNo="c5")
A_F2w_c8 <- A_F2w_c8%>% mutate(caseNo="c8")
A_F2w_c9 <- A_F2w_c9%>% mutate(caseNo="c9")
A_F2w_c10 <- A_F2w_c10%>% mutate(caseNo="c10")
A_F2w_c11 <- A_F2w_c11%>% mutate(caseNo="C11")
A_F2w_c13 <- A_F2w_c13%>% mutate(caseNo="c13")
A_F2w_c14 <- A_F2w_c14%>% mutate(caseNo="c14")
A_F2w_c17 <- A_F2w_c17%>% mutate(caseNo="c17")
A_F2w_c18 <- A_F2w_c18%>% mutate(caseNo="c18")
A_F2w_c19 <- A_F2w_c19%>% mutate(caseNo="c19")

c2abs <- rbind(A_F2w_c2,A_F2w_c3,A_F2w_c4,A_F2w_c5,A_F2w_c8,A_F2w_c9,A_F2w_c10,A_F2w_c11,A_F2w_c13,
                A_F2w_c14,A_F2w_c17,A_F2w_c18,A_F2w_c19)
c2abs <- c2abs %>% mutate(status="absent in FFPE")

d <- aggregate(Proportion.y~caseNo+status, data=c2pres, mean)
e <- aggregate(Proportion~caseNo+status, data=c2abs, mean)
colnames(d) <- colnames(e)
A_2w <- rbind(d,e)


ggplot(A_2w, aes(x=status,y=Proportion)) + geom_boxplot(aes(col=status)) + geom_point(aes(col=status)) + geom_line(aes(group=caseNo), color='grey') + theme_classic() +scale_x_discrete(limits=c("present in FFPE", "absent in FFPE"))

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


B_F2w_c2 <- B_F2w_c2%>% mutate(caseNo="c2")
B_F2w_c3 <- B_F2w_c3%>% mutate(caseNo="c3")
B_F2w_c4 <- B_F2w_c4%>% mutate(caseNo="c4")
B_F2w_c5 <- B_F2w_c5%>% mutate(caseNo="c5")
B_F2w_c8 <- B_F2w_c8%>% mutate(caseNo="c8")
B_F2w_c9 <- B_F2w_c9%>% mutate(caseNo="c9")
B_F2w_c10 <- B_F2w_c10%>% mutate(caseNo="c10")
B_F2w_c11 <- B_F2w_c11%>% mutate(caseNo="C11")
B_F2w_c13 <- B_F2w_c13%>% mutate(caseNo="c13")
B_F2w_c14 <- B_F2w_c14%>% mutate(caseNo="c14")
B_F2w_c17 <- B_F2w_c17%>% mutate(caseNo="c17")
B_F2w_c18 <- B_F2w_c18%>% mutate(caseNo="c18")
B_F2w_c19 <- B_F2w_c19%>% mutate(caseNo="c19")


c2pres <- rbind(B_F2w_c2,B_F2w_c3,B_F2w_c4,B_F2w_c5,B_F2w_c8,B_F2w_c9,B_F2w_c10,B_F2w_c11,B_F2w_c13,
                B_F2w_c14,B_F2w_c17,B_F2w_c18,B_F2w_c19)
c2pres <- c2pres %>% mutate(status="present in FFPE")


B_F2w_c2 <- anti_join(Bc2_2w,Bc2_f, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c3 <- anti_join(Bc3_2w,Bc3_f, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c4 <- anti_join(Bc4_2w,Bc4_f, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c5 <- anti_join(Bc5_2w,Bc5_f, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c8 <- anti_join(Bc8_2w,Bc8_f, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c9 <- anti_join(Bc9_2w,Bc9_f, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c10 <- anti_join(Bc10_2w,Bc10_f, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c11 <- anti_join(Bc11_2w,Bc11_f, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c13 <- anti_join(Bc13_2w,Bc13_f, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c14 <- anti_join(Bc14_2w,Bc14_f, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c17 <- anti_join(Bc17_2w,Bc17_f, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c18 <- anti_join(Bc18_2w,Bc18_f, by=c("CDR3.nt","V.name","J.name"))
B_F2w_c19 <- anti_join(Bc19_2w,Bc19_f, by=c("CDR3.nt","V.name","J.name"))

B_F2w_c2 <- B_F2w_c2%>% mutate(caseNo="c2")
B_F2w_c3 <- B_F2w_c3%>% mutate(caseNo="c3")
B_F2w_c4 <- B_F2w_c4%>% mutate(caseNo="c4")
B_F2w_c5 <- B_F2w_c5%>% mutate(caseNo="c5")
B_F2w_c8 <- B_F2w_c8%>% mutate(caseNo="c8")
B_F2w_c9 <- B_F2w_c9%>% mutate(caseNo="c9")
B_F2w_c10 <- B_F2w_c10%>% mutate(caseNo="c10")
B_F2w_c11 <- B_F2w_c11%>% mutate(caseNo="C11")
B_F2w_c13 <- B_F2w_c13%>% mutate(caseNo="c13")
B_F2w_c14 <- B_F2w_c14%>% mutate(caseNo="c14")
B_F2w_c17 <- B_F2w_c17%>% mutate(caseNo="c17")
B_F2w_c18 <- B_F2w_c18%>% mutate(caseNo="c18")
B_F2w_c19 <- B_F2w_c19%>% mutate(caseNo="c19")

c2abs <- rbind(B_F2w_c2,B_F2w_c3,B_F2w_c4,B_F2w_c5,B_F2w_c8,B_F2w_c9,B_F2w_c10,B_F2w_c11,B_F2w_c13,
               B_F2w_c14,B_F2w_c17,B_F2w_c18,B_F2w_c19)
c2abs <- c2abs %>% mutate(status="absent in FFPE")

d <- aggregate(Proportion.y~caseNo+status, data=c2pres, mean)
e <- aggregate(Proportion~caseNo+status, data=c2abs, mean)
colnames(d) <- colnames(e)
B_2w <- rbind(d,e)


ggplot(B_2w, aes(x=status,y=Proportion)) + geom_boxplot(aes(col=status)) + geom_point(aes(col=status)) + geom_line(aes(group=caseNo), color='grey') + theme_classic() +scale_x_discrete(limits=c("present in FFPE", "absent in FFPE"))


