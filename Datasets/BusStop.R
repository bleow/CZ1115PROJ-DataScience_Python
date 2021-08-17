packages = c('rgdal', 'sf', 'spdep',  'tmap', 'tidyverse','scales')
for (p in packages){
    if(!require(p, character.only = T)){
        install.packages(p)
    }
    library(p,character.only = T)
}

busStopLcnCSV <- read.csv("C:\\.PROGRAMMING\\Python\\CZ1115-PROJECT\\RAW_datasets\\Location Demographic Data\\BusStop.csv",header=T)
View(busStopLcnCSV)

load <- st_read("C/.PROGRAMMING/Python/CZ1115-PROJECT/RAW_datasets/Location Demographic Data/BusStop.shp")

busStopLcn <- st_read(dsn = "./BusStopLocation_Jan2021", layer = "BusStop")
#st_drivers()

temp <- tempfile()
temp2 <- tempfile()
#download the zip folder from the internet save to 'temp' 
download.file("https://datamall.lta.gov.sg/content/dam/datamall/datasets/Geospatial/BusStopLocation.zip",temp)
#unzip the contents in 'temp' and save unzipped content in 'temp2'
unzip(zipfile = temp, exdir = temp2)
#finds the filepath of the shapefile (.shp) file in the temp2 unzip folder
#the $ at the end of ".shp$" ensures you are not also finding files such as .shp.xml 
your_SHP_file<-list.files(temp2, pattern = ".shp$",full.names=TRUE)

#read the shapefile. Alternatively make an assignment, such as f<-sf::read_sf(your_SHP_file)
sf::read_sf(your_SHP_file)


library(raster)
x <- shapefile("C/.PROGRAMMING/Python/CZ1115-PROJECT/RAW_datasets/BusStopLocation_Jan2021/BusStop.shp")

## Reading layer `BusStop' from data source `/Users/daniel/Google Drive (daniel.soh.2017@smu.edu.sg)/SMU | GD/1. Geospatial Analytics and Applications/Take Home Ex/Ex01/data/geospatial' using driver `ESRI Shapefile'
## Simple feature collection with 5040 features and 3 fields
## geometry type:  POINT
## dimension:      XY
## bbox:           xmin: 4427.938 ymin: 26482.1 xmax: 48282.5 ymax: 52983.82
## proj4string:    +proj=tmerc +lat_0=1.366666666666667 +lon_0=103.8333333333333 +k=1 +x_0=28001.642 +y_0=38744.572 +datum=WGS84 +units=m +no_defs
busStopLcn <- busStopLcn %>%select('BUS_STOP_N', 'geometry','LOC_DESC')

tmap_mode("view")

tm_shape(busStopLcn)+
    tm_bubbles(col = "red",
               size = 0.001,
               border.col = "red",
               border.lwd = 1)

