bank<-read.csv("loan.csv",header=TRUE,sep=",")
print(bank)

x=24 # age of the test variable
y=62000 # loan of the test variable

print(typeof(bank$Age))
# find the distance between the new test tuple and all the other existing tuples in the dataset
dis <- transform(bank, distance= sqrt((x-bank$Age)^2+(y-bank$Loan)^2 ) )
dis

print(dis$distance)

# order the rows in the ascending order of their distance ( the lesser the distance, the closer(more similar) the two tuples are)
odis<- dis[order(dis$distance),]
odis

# set any value of k ( vary this value to see different results nibba)
k=2

# depending upon the value of k, select the top k values from our table
nn<-head(odis,k)
nn

# now select the Default column from our table
knn<-table(nn$Default)
knn

# check if there are more Y's or N's
t<-names(which(table(nn$Default)==max(table(nn$Default))))  # finding which class has got max occurences
t

# display the greater of the two as the class of the new test tuple..:)
cat("class:",t[[1]][1])