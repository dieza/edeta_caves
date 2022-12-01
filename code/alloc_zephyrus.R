rm(list=ls()) #Cleaning the house
#load librarires
library(sf)
library(rgdal)
library(sp)
library(rgeos)
library(movecost)
library(rgdal)
library(raster)

#######################
#Download vectorial data with Oppida points
url <- "https://zenodo.org/record/7385524/files/vectores.Rdata?download=1"
temp_file <- tempfile(fileext = ".Rdata")
download.file(url, destfile = temp_file, mode = "wb")
load(temp_file)

#Download Digital Elevation Model
url <- "https://zenodo.org/record/7385836/files/mdt_oppida_tsm.tif?download=1"
temp_file <- tempfile(fileext = ".tif")
download.file(url, destfile = temp_file, mode = "wb")
elevation<-readGDAL(temp_file)

elevation<-raster(elevation) #convert elevation to raster
proj4string(elevation) <- CRS("+init=epsg:25830") # add CRS 25830
st_write(st_as_sf(Oppida),     "opp.gpkg", "oppida")

####Allocation########
for (i in c("p","ug","hrz","ree","alb","ls","ma","a","vl")){
  start_time<-Sys.time()
  gc()
  result <- movealloc(dtm=elevation, origin=Oppida, funct=i)
  gc()
  sink(paste0("allocation",i,".txt"))
  print(i)
  end_time<-Sys.time()
  print(end_time-start_time)
  sink()
# writeOGR(result$alloc.boundaries, dsn=paste0(i,".gpkg"), layer=i, driver = "GPKG") #write individual files by function
 st_write(st_as_sf(result$alloc.boundaries), dsn ="opp.gpkg", layer= i, append = TRUE) #all the files together
}
