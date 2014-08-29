#' @title Normalized Burn Ratio
#'
#' @description
#' \code{NBR} Given two bands corresponding to LANDSAT bands 4 and 7, outputs the 
#'
#' @details
#' This function is a simple helper function that takes two rasters, or bands, subtracts them,
#' and divides them by adding them. Band 1 corresponds to band 4 and band2 corresponds to
#' band 7.
#' 
#' @param band1 Raster of Landsat 5 and Landsat 7 band 4 or, for Landsat 8, band 5.
#' @param band2 Raster of band 7 for Landsat 5, 7, or 8.
#' 
#' @examples
#' 
#' Band7 <- raster("Data/Band7.tif")
#' Band4 <- raster(Data/Band4.tif")
#' 
#' # Assuming the values above are color corrected...
#' 
#' MyFire_NBR <- NBR(Band4,Band7)

NBR <- function(band1,band2){
  NBRscratch <- (band1 - band2) / (band1 + band2)
  return(NBRscratch)
}

