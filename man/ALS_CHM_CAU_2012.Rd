\name{ALS_CHM_CAU_2012}
\alias{ALS_CHM_CAU_2012}
\docType{data}
\title{ALS-derived CHM - Fazenda Cauaxi 2012}
\description{
The Airborne Laser Scanning (ALS)-derived Canopy Height Model - (CHM) provided as an example dataset collected in 2012 
at Fazenda Cauaxi in the Paragominas Municipality of Pará State,
Brazil, in the eastern Amazon.
}
\usage{data(ALS_CHM_CAU_2012)}
\format{
  The format is:'RasterLayer'
}
\details{
The 1-m ALS-CHM was generated using Lastools software (Isenburg 2016)
}
\source{
ALS data were acquired with support from USAID and the US Department of State with the technical assistance of the Brazilian Corporation
for Agricultural Research (EMBRAPA) and the US Forest Service Office of International Programs via the Sustainable Landscapes Brazil 
Project (Keller, M. 2018).  
}

\references{
Keller, M. 2018. Available online: https://www.paisagenslidar.cnptia.embrapa.br/webgis/

Isenburg, M. LAStools—Efficient Tools for Lidar Processing. 2018. Available online: http://www.cs.unc.
edu/~isenburg/lastools/ (accessed on 3 October 2018).
}
\examples{
library(raster)

data(ALS_CHM_CAU_2012)
plot(ALS_CHM_CAU_2012)
}
\keyword{ALS_CHM_CAU_2012}
