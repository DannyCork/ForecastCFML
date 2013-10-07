ForecastCFML
=========
ForecastCFML is a wrapper for the Forecast.io v2 api. Forecast.io claims to be "The easiest, most advanced, weather API on the web". https://developer.forecast.io/


Usage
-----------

You need an account with Forecast.io. Replace ForecastIOApiKey with your valid api key.   
To use, call the getWeather() function which takes three arguments:

* apiKey (optional)
* latitude (required)
* longitude (required)

Example
-----------  
Two sample calls to the getWeather() function are included.Place index.cfm on a cfml server and call it.
```sh
#getWeather()#
```
This returns the temp for two hardcoded variables lat and long.   


```sh
#getWeather(lat=52.5167,long=13.3833)#   
```
This calls the Forecast.io api and returns the temperature for 52.5167,13.3833 (Berlin, Germany)

Version
----

1.0 Written by DannyD http://www.ColdFusion10.com

License
----

Apache


Testing
----

Tested against Railo 4. Should work with ColdFusion (might have to import the https cert for https://api.forecast.io/forecast).