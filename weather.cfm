<!doctype html>
<html lang="en-us">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Weather forecast widget</title>   
    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/picnic/6.1.1/picnic.min.css">
    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/pure/0.6.0/pure-min.css">
    <link rel="stylesheet" type="text/css" href="Styles/weather.css">
</head>
<body>
<!--Components-->
<cfset weather = createObject("component", "ForecastCFML.Components.weather") />

<cfoutput>	
<article class="card">
<header>
  <h3>#weather.getWeather().headerCityZip#</h3>
</header>
<div class="pure-g WeatherForecast">
  <div class="pure-u-1-2 skycon_cls">                
	<input type="hidden" id="IconID" value="#weather.getWeather().Icon#"> <!--Forecast.io icon-->
    <canvas class="SkyConIs" width="75" height="85"></canvas>
  </div>
  <div class="pure-u-1-2">
	<span class="degree_cls">#Ceiling(weather.getWeather().Temp)#&deg;</span>
	<br>
	<span>#weather.getWeather().NowSummary#.</span>
	<br>
	<span>
	  Feels like <span class="feelsLike_cls">#Ceiling(weather.getWeather().FeelsLike)#&deg;</span>
	</span>
  </div>            
</div>
<footer>
  <p><span>#weather.getWeather().DailySummary#</span></p>
</footer>
</article>
</cfoutput>

<!--scripts-->
<script src="//cdnjs.cloudflare.com/ajax/libs/skycons/1396634940/skycons.min.js"></script>
<script src="Scripts/weather.js"></script>
</body>
</html>