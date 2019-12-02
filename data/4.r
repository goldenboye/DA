ad = read.csv("Advertising.csv",TRUE,",")
ad
# using inbiult function
simple.fit = lm(sales~TV,data=ad)
simple.fit

#without using inbuilt function
Tvmean <- mean(ad$TV)
Tvmean
salesmean <- mean(ad$sales)
salesmean
num<-0
den<-0

nrow(ad)
for(i in 1:nrow(ad)){
  num =num + ((ad[i,1] - Tvmean) * (ad[i,4] - salesmean))
  den = den + ((ad[i,1] - Tvmean) ^ 2)
  
}
num
den
b1<- num/den
b0<- salesmean - b1*Tvmean
b0
b1



