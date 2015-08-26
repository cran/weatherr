\name{ggele}
\alias{ggele}

\title{Elevation of a set of specific locations}

\description{Obtaining elevation at a set of given locations. Note that using this function you are agreeing to the Google Maps API Terms of Service at https://developers.google.com/maps/terms.
}

\usage{ggele(lat=0,lon=0, output=c('elevation','elevation/resolution','all'))}
\arguments{
  \item{lat, lon}{numeric objects. latitude and longitude of a location in decimal degrees}

  \item{output}{elevation; elevation and its corresponding resolution or the original JSON output (in a list format)}

}
\value{ 
   \item{}{If output="elevation", a numeric vector is returned with the elevation in metres.}
   \item{}{If output="elevation/resolution", a data frame is return with the elevation and its corresponding resolution in metres.}
   \item{}{If output="all", a list is returned with full JSON query output.}
}

\author{Stan Yip}

\examples{
# Get the elevation of a location in Hong Kong
ggele(lat=22.39643,lon=114.1095)
}
