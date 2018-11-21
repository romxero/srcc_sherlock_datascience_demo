### Lyric analysis.


#data downloaded from: 

#https://www.kaggle.com/gyani95/380000-lyrics-from-metrolyrics

# by Randy White | Stanford Research Computing Center
# rcwhite@stanford.edu

##Load libraries


##Installing packages##
pkgs <- c(
  "dplyr",
  "tidyr",
  "streamR",
  "httr",
  "pdftools",
  "readtext",
  "quanteda",
  "spacyr",
  "tidytext",
  "ggplot2",
  "ggthemes",
  "igraph",
  "ggraph");

#install.packages(pkgs_); #install the packages to sherlock if they are not present.

#library(pkgs_); #load the packages once they are installed.

lapply(pkgs_,"require", character.only = TRUE)

setwd("~/Documents/scode/R/lyric_analysis/"); #can be left out on Sherlock..
#unzip(zipfile = "data/380000-lyrics-from-metrolyrics.zip");
 


lyricsData <-readtext( "data/lyrics.csv",  text_field = "lyrics");
#head(lyricsData); #just look at the data we are working with
lyricsDataDim <- dim(lyricsData); 




####
##Sample The Data
##Let N be the number of documents we want


set.seed(254) #setting a random seed
N <- 96; #this can be changed to do more computations 


sampledLyricsData <- lyricsData[sample(1:nrow(lyricsData),N),];


dim(sampledLyricsData); #sampled data from data set assuming its the population

head(sampledLyricsData);


###
### Clean the data
###
###

#comment this stuff out right here hopefully
sampledLyricsData$index
sampledLyricsData$song
sampledLyricsData$year
sampledLyricsData$artist
sampledLyricsData$genre
sampledLyricsData$text

yearsOfSongs <- sort(unique(lyricsData$year))


corpus(sampledLyricsData)

typeof(sampledLyricsData)



###
### Clean the data
###
###

###
### Analysis of Data 
###
###


###
### erratta 
###
###