% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fh1.2.R
\name{fh1.2}
\alias{fh1.2}
\title{Function to return the FH1 and FH2 hydrologic indicator statistics for a given data frame}
\usage{
fh1.2(qfiletempf, pref = "mean")
}
\arguments{
\item{qfiletempf}{data frame containing a "discharge" column containing daily flow values}

\item{pref}{string containing a "mean" or "median" preference}
}
\value{
fh1.2 list of FH1 and FH2 for the given data frame
}
\description{
This function accepts a data frame that contains a column named "discharge" and calculates 
FH1; High flood pulse count. Compute the average number of flow events with flows above a threshold equal to 
the 75th percentile value for the entire flow record. FH1 is the average (or median-Use Preference option) 
number of events (number of events/year-temporal). 
FH2; Variability in high pulse count. Compute the standard deviation in the annual pulse counts for FH1. FH2 
is 100 times the standard deviation divided by the mean pulse count (number of events/year-spatial).
}
\examples{
qfiletempf<-sampleData
fh1.2(qfiletempf)
}

