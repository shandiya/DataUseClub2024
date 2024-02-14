library(leaflet)
library(leaflet.providers)
library(sf)
library(ozmaps)

bbox <- as.vector(st_bbox(ozmap_country))

m <- leaflet() |> 
  #setView(lng = 134.2, lat = -25.3, zoom = 4) |> 
  addProviderTiles(providers$CartoDB.VoyagerNoLabels) |> 
  fitBounds(bbox[1], bbox[2], bbox[3], bbox[4]) |> 
  addCircleMarkers(lng = c(138.6, 151.2, 144.9), 
                   lat = c(-34.9, -33.8, -37.8), 
                   popup = c("Kaurna", "Gadigal, Eora Nation", "Wurundjeri, Kulin Nation"),
                   color = "#273b50", 
                   stroke = FALSE, 
                   fillOpacity = 0.7,
                   radius = 10,
                   labelOptions = labelOptions(noHide = F)) |> 
  htmlwidgets::onRender("function(el, x) { $(el).css({width: '1000px', height: '900px'}); }")
