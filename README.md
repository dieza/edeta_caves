# edeta_caves
This repository is linked to a forthcoming paper in Zephyrus "Analysing the sacred landscape in the Iberian Iron Age: GIS, caves and ritual performance" by Sonia Machause López and Agustín Diez Castillo.

Here you can find the Digital Terrain Model -DTM- used to create visilibity and network paths. Our DTM has been build merging several sheets -666, 667, 668, 694, 695, 696, 720, 721, 722- of the Digital Terrain Model known as DTM05 that can be downloaded from the Centro Nacional Información Geográfica -CNIG- "[Centro de Descargas] (https://centrodedescargas.cnig.es/CentroDescargas/locale?request_locale=en)" -download hub-, the Spanish Goverment official provider of Geographic Information. The original product is described as a Digital Terrain Model 1st Coverage with 5 m grid spacing. The nine sheets were merged and croped to a final DTM of 7600 by 5600 with the following corner coordinates:\
Upper Left  (  680000.000, 4403000.000) \
Lower Left  (  680000.000, 4375000.000) \
Upper Right (  718000.000, 4403000.000) \
Lower Right (  718000.000, 4375000.000) \
Center      (  699000.000, 4389000.000)  

The DTM is fed to our [R script] (code/smez.R) along with the [archaeological data of sites] (data/smez.gpkg) in the territory of Edeta.

[![DOI](https://zenodo.org/badge/568890774.svg)](https://zenodo.org/badge/latestdoi/568890774)
