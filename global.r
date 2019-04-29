library(shiny)
library(leaflet)
library(xml2)

restaurants = read.csv("restaurantes.csv")
restaurants = head(restaurants, 8)
