ForecastCFML
=========
ForecastCFML is a wrapper for the Forecast.io v2 api. Forecast.io claims to be "The easiest, most advanced, weather API on the web". https://developer.forecast.io/


Usage
-----------

You need an account with Forecast.io. 
In the ```config.cfc```, replace _YOUR_APIKEY_GOES_HERE_ with your valid api key along with your _latitude_ and _longitude_
You may find your citys' coordinates by going to [LatLong.net.](http://www.latlong.net/)

To use, call the ```getWeather()``` function which takes four arguments:
* baseURL (required, which is _https://api.forecast.io/forecast_)
* apiKey (required)
* latitude (required)
* longitude (required)
 
Output
----
After plugging in with your parameters, code will generate this.

![this.](https://cloud.githubusercontent.com/assets/4027889/16498972/4c0cf05a-3ecc-11e6-9d8e-c2faa64f4e8b.PNG)


Scripts
----
css
---
* [Picnic](http://picnicss.com/)
* [Pure](http://purecss.io/)

js
---
* [Skycons](https://darkskyapp.github.io/skycons/)



Version
----

1.0 Written by DannyD

2.0 Written by [damiththa](https://github.com/damiththa)

License
----

Apache


Testing
----

Tested against Railo 4. Should work with ColdFusion (might have to import the https cert for https://api.forecast.io/forecast).
