#' Function to return the DL14 hydrologic indicator statistic for a given data frame
#' 
#' This function accepts a data frame that contains a column named "discharge" and calculates 
#' DL14; Low exceedence flows. Compute the 75-percent exceedence value for the entire flow record. DL14 is 
#' the exceedence value divided by the median for the entire record (dimensionless-spatial).
#' 
#' @param qfiletempf data frame containing a "discharge" column containing daily flow values
#' @return dl14 numeric containing DL14 for the given data frame
#' @export
#' @examples
#' qfiletempf<-sampleData
#' dl14(qfiletempf)
dl14 <- function(qfiletempf) {
  isolateq <- qfiletempf$discharge
  sortq <- sort(isolateq)
  hfcrit <- quantile(sortq,.25,type=6)
  medianq <- median(qfiletempf$discharge)
  dl14 <- round(hfcrit/medianq,digits=2)
  return(dl14)
}