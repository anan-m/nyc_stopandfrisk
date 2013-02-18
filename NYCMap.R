library(gpclib)
library(maptools)
library(RColorBrewer)
library(classInt)
# outlines of NYC precincnts (lines)
# browse to *.shp
#nycp.shp <- readShapeLines('Downloads/nyad_12b_av/nyad.shp')
nycp <- readShapePoly('Downloads/nyad_12b_av/nyad.shp')

data <- read.csv("http://www.jakeporway.com/teaching/data/snf_11_2011_1.csv", header=TRUE, as.is=TRUE)
PrecinctCount<-as.data.frame(table(precinct))

colours <- brewer.pal(10, "Blues")
brks<-classIntervals(PrecinctCount$Freq, n=10, style="quantile")
plot(brks, pal=colours)
brks<- brks$brks
plot(nycp,col=colours[findInterval(PrecinctCount$Freq, brks,all.inside=TRUE)], axes=F)
title(paste ("Precinct density of Stop and Search"))


