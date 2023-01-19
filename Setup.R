packageLoad<-
  function(x) {
    for (i in 1:length(x)){
      if (!x[1] %in% installed.packages()){
        install.packages(x[1])
      }
      library(x[i],character.only = TRUE)
    }
  }
#Create a string of packages names
packages<-c('tidyverse',
            'palmerpenguins',
            'sf',
            'terra',
            'tmap',
            'rmarkdown',
            'tigris',
            'elevatr',
            'rgdal')
packageLoad(packages)

