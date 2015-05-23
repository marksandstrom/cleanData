trainTable = read.table("X_train.txt")
testTable = read.table("X_test.txt")
table = rbind(trainTable,testTable)

featTable = read.table("features.txt")
features = t(featTable[2])
names(table) = features
meanTable = table[,c(colnames(table)[grep("mean",colnames(table))])]
stdTable = table[,c(colnames(table)[grep("std",colnames(table))])]
meanStdTable = cbind(meanTable,stdTable)
mst = na.omit(meanStdTable)

actrain = read.table("y_train.txt")
actest = read.table("y_test.txt")
acs = rbind(actrain,actest)
subtrain = read.table("subject_train.txt")
subtest = read.table("subject_test.txt")
subs = rbind(subtrain,subtest)

tbl = cbind(acs,subs,mst)
lbls = read.table("activity_labels.txt")
albls = lbls[,2]
acode = lbls[,1]
maxa = max(acode)
maxs = max(subs)
res = data.frame(matrix(nrow=maxa*maxs, ncol=dim(tbl)[2]))
i = 0
for (a in 1:maxa) {
  activity = albls[a]
  for (subjectId in 1:maxs) {
    i = i+1
    st = tbl[tbl[,1]==a & tbl[,2]==s,] # sub-table matching activity a and subject s
    t = st[,-(1:2)] 
    means = t(colMeans(t))
    row = cbind(activity,subjectId,means)
    res[i,] = row
  }
}
View(res)
