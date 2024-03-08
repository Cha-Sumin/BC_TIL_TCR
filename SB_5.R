##############################
##overlap between rep and 2w
##############################
##rep
rep <- c("BC16092", "BC16096", "BC16110", "BC16126", "BC16127", "BC16143", "BC16158", "BC16186", "BC16213")
Norep <- c(2,3,4,5,6,7,10,12,15)
Norep <- data.frame(Norep, rep)

#TRA
Ac2_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\rep\\BC16092_REP_TRA_z.txt")
Ac3_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\rep\\BC16096_REP_TRA_z.txt")
Ac4_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\rep\\BC16110_REP_TRA_z.txt")
Ac5_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\rep\\BC16126_REP_TRA_z.txt")
Ac6_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\rep\\BC16127_REP_TRA_z.txt")
Ac7_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\rep\\BC16143_REP_TRA_z.txt")
Ac10_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\rep\\BC16158_REP_TRA_z.txt")
Ac12_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\rep\\BC16186_REP_TRA_z.txt")
Ac15_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRA\\z\\rep\\BC16213_REP_TRA_z.txt")

#TRB
Bc2_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\rep\\BC16092_REP_TRB_z.txt")
Bc3_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\rep\\BC16096_REP_TRB_z.txt")
Bc4_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\rep\\BC16110_REP_TRB_z.txt")
Bc5_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\rep\\BC16126_REP_TRB_z.txt")
Bc6_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\rep\\BC16127_REP_TRB_z.txt")
Bc7_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\rep\\BC16143_REP_TRB_z.txt")
Bc10_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\rep\\BC16158_REP_TRB_z.txt")
Bc12_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\rep\\BC16186_REP_TRB_z.txt")
Bc15_rep <- readr::read_tsv(file="C:\\Users\\아뚤뚤\\Desktop\\TCR_data\\TRB\\z\\rep\\BC16213_REP_TRB_z.txt")

##2wTIL
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


#####################################################
# 2wTIL and repTIL
colnames(Norep) <- c("caseNo","case")
colnames(No2w) <- c("caseNo","case")
Rep2wNo <- inner_join(Norep,No2w, by=c("caseNo","case"))


#TRA
A_2wrep_c2 <- inner_join(Ac2_2w,Ac2_rep, by=c("CDR3.nt","V.name","J.name"))
A_2wrep_c3 <- inner_join(Ac3_2w,Ac3_rep, by=c("CDR3.nt","V.name","J.name"))
A_2wrep_c4 <- inner_join(Ac4_2w,Ac4_rep, by=c("CDR3.nt","V.name","J.name"))
A_2wrep_c5 <- inner_join(Ac5_2w,Ac5_rep, by=c("CDR3.nt","V.name","J.name"))
A_2wrep_c10 <- inner_join(Ac10_2w,Ac10_rep, by=c("CDR3.nt","V.name","J.name"))



A_2wrep_c2 <- A_2wrep_c2%>% mutate(caseNo="c2")
A_2wrep_c3 <- A_2wrep_c3%>% mutate(caseNo="c3")
A_2wrep_c4 <- A_2wrep_c4%>% mutate(caseNo="c4")
A_2wrep_c5 <- A_2wrep_c5%>% mutate(caseNo="c5")
A_2wrep_c10 <- A_2wrep_c10%>% mutate(caseNo="c10")

c2pres <- rbind(A_2wrep_c2,A_2wrep_c3,A_2wrep_c4,A_2wrep_c5,A_2wrep_c10)
c2pres <- c2pres %>% mutate(status="present in REP")


A_2wrep_c2 <- anti_join(Ac2_2w,Ac2_f, by=c("CDR3.nt","V.name","J.name"))
A_2wrep_c3 <- anti_join(Ac3_2w,Ac3_f, by=c("CDR3.nt","V.name","J.name"))
A_2wrep_c4 <- anti_join(Ac4_2w,Ac4_f, by=c("CDR3.nt","V.name","J.name"))
A_2wrep_c5 <- anti_join(Ac5_2w,Ac5_f, by=c("CDR3.nt","V.name","J.name"))
A_2wrep_c10 <- anti_join(Ac10_2w,Ac10_f, by=c("CDR3.nt","V.name","J.name"))

A_2wrep_c2 <- A_2wrep_c2%>% mutate(caseNo="c2")
A_2wrep_c3 <- A_2wrep_c3%>% mutate(caseNo="c3")
A_2wrep_c4 <- A_2wrep_c4%>% mutate(caseNo="c4")
A_2wrep_c5 <- A_2wrep_c5%>% mutate(caseNo="c5")
A_2wrep_c10 <- A_2wrep_c10%>% mutate(caseNo="c10")

c2abs <- rbind(A_2wrep_c2,A_2wrep_c3,A_2wrep_c4,A_2wrep_c5,A_2wrep_c10)
c2abs <- c2abs %>% mutate(status="absent in REP")


d <- aggregate(Proportion.y~caseNo+status, data=c2pres, mean)
e <- aggregate(Proportion~caseNo+status, data=c2abs, mean)
colnames(d) <- colnames(e)
A_2w <- rbind(d,e)


ggplot(A_2w, aes(x=status,y=Proportion)) + geom_boxplot(aes(col=status)) + geom_point(aes(col=status)) + geom_line(aes(group=caseNo), color='grey') + theme_classic() +scale_x_discrete(limits=c("present in REP", "absent in REP"))


#TRB
B_2wrep_c2 <- inner_join(Bc2_2w,Bc2_rep, by=c("CDR3.nt","V.name","J.name"))
B_2wrep_c3 <- inner_join(Bc3_2w,Bc3_rep, by=c("CDR3.nt","V.name","J.name"))
B_2wrep_c4 <- inner_join(Bc4_2w,Bc4_rep, by=c("CDR3.nt","V.name","J.name"))
B_2wrep_c5 <- inner_join(Bc5_2w,Bc5_rep, by=c("CDR3.nt","V.name","J.name"))
B_2wrep_c10 <- inner_join(Bc10_2w,Bc10_rep, by=c("CDR3.nt","V.name","J.name"))



B_2wrep_c2 <- B_2wrep_c2%>% mutate(caseNo="c2")
B_2wrep_c3 <- B_2wrep_c3%>% mutate(caseNo="c3")
B_2wrep_c4 <- B_2wrep_c4%>% mutate(caseNo="c4")
B_2wrep_c5 <- B_2wrep_c5%>% mutate(caseNo="c5")
B_2wrep_c10 <- B_2wrep_c10%>% mutate(caseNo="c10")

c2pres <- rbind(B_2wrep_c2,B_2wrep_c3,B_2wrep_c4,B_2wrep_c5,B_2wrep_c10)
c2pres <- c2pres %>% mutate(status="present in REP")


B_2wrep_c2 <- anti_join(Bc2_2w,Bc2_f, by=c("CDR3.nt","V.name","J.name"))
B_2wrep_c3 <- anti_join(Bc3_2w,Bc3_f, by=c("CDR3.nt","V.name","J.name"))
B_2wrep_c4 <- anti_join(Bc4_2w,Bc4_f, by=c("CDR3.nt","V.name","J.name"))
B_2wrep_c5 <- anti_join(Bc5_2w,Bc5_f, by=c("CDR3.nt","V.name","J.name"))
B_2wrep_c10 <- anti_join(Bc10_2w,Bc10_f, by=c("CDR3.nt","V.name","J.name"))

B_2wrep_c2 <- B_2wrep_c2%>% mutate(caseNo="c2")
B_2wrep_c3 <- B_2wrep_c3%>% mutate(caseNo="c3")
B_2wrep_c4 <- B_2wrep_c4%>% mutate(caseNo="c4")
B_2wrep_c5 <- B_2wrep_c5%>% mutate(caseNo="c5")
B_2wrep_c10 <- B_2wrep_c10%>% mutate(caseNo="c10")

c2abs <- rbind(B_2wrep_c2,B_2wrep_c3,B_2wrep_c4,B_2wrep_c5,B_2wrep_c10)
c2abs <- c2abs %>% mutate(status="absent in REP")


d <- aggregate(Proportion.y~caseNo+status, data=c2pres, mean)
e <- aggregate(Proportion~caseNo+status, data=c2abs, mean)
colnames(d) <- colnames(e)
B_2w <- rbind(d,e)


ggplot(B_2w, aes(x=status,y=Proportion)) + geom_boxplot(aes(col=status)) + geom_point(aes(col=status)) + geom_line(aes(group=caseNo), color='grey') + theme_classic() +scale_x_discrete(limits=c("present", "absent"))


