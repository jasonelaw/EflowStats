% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SiteGoF.R
\name{SiteGoF}
\alias{SiteGoF}
\title{Function to calculate GoF statistics for given observed and modeled data sets}
\usage{
SiteGoF(Modeled, Gaged, site_no = "")
}
\arguments{
\item{Modeled}{data frame of daily flow data}

\item{Gaged}{data frame of daily flow data}

\item{site_no}{Optional site number identifier to be included with output}
}
\value{
Output data frame of calculated statistics
}
\description{
This function accepts observed and modeled data frames of daily flow data and returns a data frame of 
calculated GoF statistics
}
\examples{
load_data<-sampleData
load_mod<-sampleData
Gaged<-load_data
Modeled<-load_mod
SiteGoF(Modeled,Gaged)
}

