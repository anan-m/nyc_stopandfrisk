
data <- read.csv("http://www.jakeporway.com/teaching/data/snf_11_2011_1.csv", header=TRUE, as.is=TRUE)
as.data.frame(table(sex))
sexcount<-as.data.frame(table(sex))
#plot(sexcount)
numofpeople=nrow(data)
# Fraction of F
x=(sexcount$Freq[1]/numofpeople)*100
print(x)
# Print the number of 
# Making Pie chart of top 10 crimes
unique(crime.suspected)
length(unique(crime.suspected))

crimecount<-as.data.frame(table(crime.suspected))
sortedcrimecount<-crimecount[order(crimecount$Freq),]
slices<-tail(sortedcrimecount$Freq,10)
lbls<-tail(sortedcrimecount$crime.suspected,10)
pie(slices,labels=lbls,main="Top 10 crimes")
plot(sortedcrimecount$Freq)
tail(sortedcrimecount$crime.suspected,10)

length(unique(precinct))
precinctfrequency = as.data.frame(table(precinct))
precinctfrequency[order(precinctfrequency$Freq),]

agecount= as.data.frame(table(age))
age[17:31]
sum(agecount$Freq[17:31])

filterall= subset(data, frisked=="1" & searched=="1" & arrested=="1")
nrow(filterall)
bins=seq(0,100,by=20)
hist(filterall$age[0:100], breaks=bins) #also tried histograms with other distributions
