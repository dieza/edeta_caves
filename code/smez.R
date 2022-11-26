rm(list = ls())
library(maptools)
library(movecost)
library(rgdal)
library(raster)
library(sf)
#Download vector files
url <- "https://zenodo.org/record/7365243/files/smez.gpkg?download=1"
temp_file <- tempfile(fileext = ".gpkg")
download.file(url, destfile = temp_file, mode = "wb")
merisapo <- as(st_read(temp_file,layer="MerinelSapo"),'Spatial')#Merinel and Sapo Caves
TSM <- as(st_read(temp_file,layer="Edeta"),'Spatial')#Edeta city
others <- as(st_read(temp_file,layer="EdetaSites"),'Spatial')#Edeta's sites
#Download DTM
url <- "https://zenodo.org/record/7365195/files/mdt_tsm05.tif_25830-clippedByCoords.tif?download=1"
temp_file <- tempfile(fileext = ".tif")
download.file(url, destfile = temp_file, mode = "wb")
mdt <- readGDAL(temp_file)

mdt<-raster(mdt) #Change object to raster
mdt <- aggregate(mdt, fact=20) #Smooth DTM down fact to 2 if your machine has plenty of memory
proj4string(mdt) <- CRS("+init=epsg:25830") #Set CRS
# Loop for calculating paths with different algorithms see movecost vignette for details
for (i in c("p","vl","ug","hrz","ree","alb","ls","ma")){ #algorittms used
for (j in 1:2){ #1=Merinel 2=Sapo
gc() #garbage collection
isoTSM<-movecost(dtm=mdt,destin=others,origin=merisapo[j,],funct=i,return.base=TRUE)#https://cran.r-project.org/web/packages/movecost/movecost.pdf
}
}
