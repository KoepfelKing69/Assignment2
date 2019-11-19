echo off
title preprocessing
ogr2ogr -t_srs EPSG:25832 forests.geojson forest.geojson
ogr2ogr -t_srs EPSG:25832 motorways.geojson motorway.geojson
ogr2ogr -t_srs EPSG:25832 gadm36_DEU_2.shp admin_neu.shp
ogr2ogr -where "GID_2 in ('DEU.1.35_1','DEU.1.15_1','DEU.1.26_1','DEU.7.1_1')" admin_cut.shp admin_neu.shp
echo preprocessing executed.
pause