library(leaflet)
library(leaflet.providers)
library(sf)
library(ozmaps)

bbox <- as.vector(st_bbox(ozmap_country))

data <- data.frame(
  latitude = c(-34.9, -33.8, -37.8),
  longitude = c(138.6, 151.2, 144.9),
  place = c("Tarntanya | Adelaide", "Warrane | Sydney", "Naarm | Melbourne"),
  people = c("Kaurna", "Gadigal, Eora Nation", "Wurundjeri, Kulin Nation")
)

m <- leaflet(data) |> 
  addProviderTiles(providers$CartoDB.VoyagerNoLabels) |> 
  fitBounds(bbox[1], bbox[2], bbox[3], bbox[4]) |> 
  addCircleMarkers(~longitude,
                   ~latitude,
                   popup = paste0("<strong>", data$place, "</strong><br>", "<i>", data$people, "<br><i>"),
                   color = "#273b50", 
                   stroke = FALSE, 
                   fillOpacity = 0.7,
                   radius = 10,
                   labelOptions = labelOptions(noHide = F)) |> 
  htmlwidgets::onRender("function(el, x) { $(el).css({width: '1000px', height: '900px'}); }")
