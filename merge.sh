#!/bin/sh

ls shap/*.shp| awk '{sub("shap", "", $0); print "shp2json  --encoding shift-jis", "shap/"$0, ">", "geojson/"$0".geojson"}'|sh
geojson-merge geojson/*.geojson > merge.geojson