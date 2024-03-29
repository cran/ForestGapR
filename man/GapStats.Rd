% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GapsStats.R
\name{GapStats}
\alias{GapStats}
\title{Forest Canopy Gaps Stats}
\usage{
GapStats(gap_layer, chm_layer)
}
\arguments{
\item{gap_layer}{ALS-derived gap as \code{\link[raster:Raster-classes]{raster::RasterLayer}} object (output of  \code{\link[=getForestGaps]{getForestGaps()}} function). An object of the class RasterLayer.}

\item{chm_layer}{ALS-derived Canopy Height Model (CHM) \code{\link[raster:Raster-classes]{raster::RasterLayer}} used in \code{\link[=getForestGaps]{getForestGaps()}} function. An object of the class \code{\link[raster:Raster-classes]{raster::RasterLayer}}.}
}
\value{
A data.frame containing forest canopy gap statistics
}
\description{
This function computes a series of forest canopy gap statistics
}
\section{List of forest gaps statistics:}{
\itemize{
\item gap_id: gap id
\item gap_area - area of gap (m2)
\item chm_max - Maximum canopy height (m) within gap boundary
\item chm_min - Minimum canopy height (m) within gap boundary
\item chm_mean - Mean canopy height (m) within gap boundary
\item chm_sd - Standard Deviation of canopy heights (m) within gap boundary
\item chm_gini - Gini Coefficient of canopy heights (m) within gap boundary
\item chm_range - Range of canopy heights (m) within gap boundary
}
}

\examples{
# Loading raster library
library(raster)

# ALS-derived CHM over Adolpho Ducke Forest Reserve - Brazilian tropical forest
data(ALS_CHM_CAU_2012)

# set height thresholds (e.g. 10 meters)
threshold <- 10
size <- c(5, 10^4) # m2

# Detecting forest gaps
gaps_duc <- getForestGaps(chm_layer = ALS_CHM_DUC, threshold = threshold, size = size)

# Computing basic statistis of forest gap
gaps_stats <- GapStats(gap_layer = gaps_duc, chm_layer = ALS_CHM_DUC)
}
\author{
Carlos Alberto Silva.
}
