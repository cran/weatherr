\name{locationforecast}
\alias{locationforecast}

\title{Weather forecast for a specified place}

\description{Obtaining weather forecasts from api.met.no Locationforecast service. Note that using this function you are agreeing to the Norwegian Meteorologisk Institutt conditions of service at http://api.met.no/conditions_service.html.
Also, using the location query option you are agreeing to the Google Maps API Terms of Service at https://developers.google.com/maps/terms.
}

\usage{
locationforecast(lat,lon,elevation=NULL,location=NULL,exact=TRUE,tz=Sys.timezone())
}
\arguments{
  \item{lat, lon}{numeric objects. latitude and longitude of a location in decimal degrees}

  \item{elevation}{optional numeric object. metres above sea level}

  \item{location}{optional character object. query latitude, longitude and elevation of the location using Google map service}

  \item{exact}{logical, indicating an exact time or an interval period forecasts}

  \item{tz}{time zone format. system time zone by default}

}
\details{ If exact=FALSE, precipitation and temperature range can be obtained since these are computed as interval quantities.}

\value{ If exact=TRUE, A data frame is returned with the following quantities:

\item{time}{time of the forecasts}
\item{temperature}{temperature (Celcius)}
\item{windDirection}{wind direction (degree)}
\item{windSpeed_mps}{wind speed (mps)}
\item{windSpeed_beaufort}{wind speed (Beaufort scale)}
\item{windSpeed_name}{wind speed category}
\item{windGust}{gust (mps)}
\item{humidity}{humidity (percentage)}
\item{pressure}{atomospheric pressure (hPa)}
\item{cloudiness}{clouds cover (percentage)}
\item{lowClouds}{low clouds cover (percentage)}
\item{mediumClouds}{medium clouds cover (percentage)}
\item{highClouds}{high clouds cover (percentage)}
\item{dewpointTemperature}{dewpoint temperature (Celcius)}

If exact=FALSE, A data frame is returned with the following quantities:

\item{timefrom}{the start time of interval for the forecasts}
\item{timeto}{the end time of interval for the forecasts}
\item{precipitation}{precipitation amount (mm)}
\item{minTemperature}{minimum temperature in the interval (Celcius)}
\item{maxTemperature}{maximum temperature in the interval (Celcius)}
\item{weather_id}{weather category}
}

\author{Stan Yip}

\examples{
\dontrun{
# Get exact time location forecast of Hong Kong
locationforecast(lat=22.39643,lon=114.1095)
# Get time interval location forecast of Malta
locationforecast(lat=35.9375,lon=14.37542,exact=FALSE)
# Get exact time location forecast of Cape Town, South Africa with timezone 'Africa/Johannesburg'
locationforecast(location='Cape Town, South Africa', tz='Africa/Johannesburg')
}
}
