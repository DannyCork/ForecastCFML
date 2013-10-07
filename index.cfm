<cfoutput>
	#getWeather(lat=52.5167,long=13.3833)#<br>
	#getWeather()#
</cfoutput>

<cffunction name="getWeather" description="Get current weather from forecast.io">
	<cfargument name="apiKey" Type="string" required="false" default="yourForecastIOApiKey">
	<cfargument name="lat" Type="string" required="false" default="16.7753">
	<cfargument name="long" Type="string" required="false" default="-3.0083">

	<cfset baseUrl="http://api.forecast.io/forecast">
	<cfset entireUrl="#baseUrl#/#apiKey#/#lat#,#long#">
	<cfhttp url="#entireUrl#" method="GET" resolveurl="Yes" result="result"/>
		<cfoutput>
			<cfif result.statuscode eq "200 OK">
				<cfset cfData=DeserializeJSON(result.filecontent)>
				Temperature #lsDateFormat(Now(), "ddd dd mmmm, yyyy")# at #lat#,#long# is <b>#cfData.currently.temperature# °F</b>
			<cfelse>
				Error, did not get a 200 back.
			</cfif>
		</cfoutput>
</cffunction>
