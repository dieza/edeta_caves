# edeta_caves
This repository is linked to a forthcoming paper in Zephyrus "Analysing the sacred landscape in the Iberian Iron Age: GIS, caves and ritual performance" by Sonia Machause López and Agustín Diez Castillo. DOI: [https://doi.org/10.14201/zephyrus202290135158](https://doi.org/10.14201/zephyrus202290135158).

Here you can find the Digital Terrain Model -DTM- used to create visilibity and network paths. Our DTM has been build merging several sheets -666, 667, 668, 694, 695, 696, 720, 721, 722- of the Digital Terrain Model known as DTM05 that can be downloaded from the Centro Nacional Información Geográfica -CNIG- "[Centro de Descargas](https://centrodedescargas.cnig.es/CentroDescargas/locale?request_locale=en)" -download hub-, the Spanish Goverment official provider of Geographic Information. The original product is described as a Digital Terrain Model 1st Coverage with 5 m grid spacing. The nine sheets were merged and croped to a final DTM of 7600 by 5600 with the following corner coordinates:\
Upper Left  (  680000.000, 4403000.000) \
Lower Left  (  680000.000, 4375000.000) \
Upper Right (  718000.000, 4403000.000) \
Lower Right (  718000.000, 4375000.000) \
Center      (  699000.000, 4389000.000)  

The [DTM](https://doi.org/10.5281/zenodo.7365195) is fed to our [R script](code/smez.R) along with the [mock archaeological data of sites](data/smez.gpkg) in the territory of Edeta.

[![DOI](https://zenodo.org/badge/568890774.svg)](https://zenodo.org/badge/latestdoi/568890774)


There are two folders in the release: data [1] and code [2].
[1] Firstly, there are two Excel files referenced in the text


[sup1](https://github.com/dieza/edeta_caves/blob/main/data/SupplementaryMaterial_1_ToMerinel_MoreAlgorithms.xlsx)


Supplementary Material 1: Table with alternative paths to Cueva Merinel. Ls: Llobera and Sluckin; Ug: Uriarte; ree: relative energetic expenditure cost function; hrz: Hezorg’s metabolic cost function; vl: Van Leusen’s metabolic cost function; p: Pandolf et al.’s metabolic energy expenditure cost function; icofp: Irmischer-Clarke’s hiking function (male, off-path); alb: Alberti (see Alberti 2019: 4).


[sup2](https://github.com/dieza/edeta_caves/raw/main/data/SupplementaryMaterial_2_ToSapo_MoreAlgorithms.xlsx)


Supplementary Material 2: Table with alternative paths to Cueva del Sapo. Ls: Llobera and Sluckin; Ug: Uriarte; ree: relative energetic expenditure cost function; hrz: Hezorg’s metabolic cost function; vl: Van Leusen’s metabolic cost function; p: Pandolf et al.’s metabolic energy expenditure cost function; icofp: Irmischer-Clarke’s hiking function (male, off-path); alb: Alberti (see Alberti 2019: 4).

Two maps referenced in the text like 
[sup 3](https://github.com/dieza/edeta_caves/blob/main/data/SupplementaryMaterial_3_Map_BoundariesOppida.jpeg)

Supplementary material 3: Possible boundaries between each oppida territory, applying the Ardigo et al. (2003) algorithm, as implemented in the Movecost package (Alberti, 2019). The red symbols represent Sapo -south one- and Merinel caves. The green dots represent the location of the main oppida neighbours of Edeta -E-. A=Arse, C=Carència, CMC=Castellar de Meca, CV=Cerro Viejo, IK=Ikalesken, K=Kelin, SA=SAITI, SU=Sucro. The numbers express the area of each oppidum in Km2.


and 
[sup 4](https://github.com/dieza/edeta_caves/blob/main/data/SupplementaryMaterial_4_Map_Road%20network.jpg)

Supplementary material 4: Map of Edeta’s road network (white) and transhumant historical cattle pathways of different width (green: 75,22 m; brown: 37,61 m; orange: 20,89 m; yellow: variable).


There are also several datasets that can be found in Zenodo.
[2] Two R scripts:
[alloc_zephyrus.R](https://github.com/dieza/edeta_caves/blob/main/code/alloc_zephyrus.R)
This one allocate the land of each of the 9 oppida contained in a [Rdata file](https://doi.org/10.5281/zenodo.7385524) using as
[Digital Elevation Model](https://doi.org/10.5281/zenodo.7385836) a 200x200 grid of the area.
[smez.R](https://github.com/dieza/edeta_caves/blob/main/code/smez.R)
This one calculates the optimal and not so optimal files using [data from](https://doi.org/10.5281/zenodo.7365243) the territory of Edeta using as
[Digital Elevation Model](https://doi.org/10.5281/zenodo.7365195) a 5x5 grid of the area.


Diez Castillo, Agustín, & Machause López, Sonia. (2022). dieza/edeta_caves: Analysing the sacred landscape in the Iberian Iron Age: GIS, caves and ritual performance (v1.0.0). Zenodo. https://doi.org/10.5281/zenodo.7365757


Diez Castillo, Agustín, & Machause López, Sonia. (2022). Oppida in the central coast of mediterranean Spain (Version 1). Zenodo. https://doi.org/10.5281/zenodo.7385524


Diez Castillo, Agustín, & Machause López, Sonia. (2022). Digital Terrain Model of Edeta's land (Version 1) [Data set]. Zenodo. https://doi.org/10.5281/zenodo.7365195
