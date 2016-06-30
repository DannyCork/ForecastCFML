<cfcomponent output="no">
  <cfset config=createObject("component", "ForecastCFML.Components.weather") />
  <cfset config.init()>
  
  <!---Get weather from Forecast.io--->  
  <cffunction name="getWeather" access="remote" output="no" description="Get current weather from forecast.io" returntype="struct">
    <cfargument name="baseURL" Type="string" required="true" default="#config.getSecrets(1)#">
    <cfargument name="apiKey" Type="string" required="true" default="#config.getSecrets(2)#">
	<cfargument name="lat" Type="string" required="true" default="#config.getSecrets(4)#">
	<cfargument name="long" Type="string" required="true" default="#config.getSecrets(5)#">
    
    <cfset Forecast_struct = StructNew()> <!--Structure to hold Forecast call returns-->
    
    <cfset entireURL = "#baseURL#/#apiKey#/#lat#,#long#">
    <!--URL resolve-->
    <cfhttp url="#entireUrl#" method="GET" resolveurl="Yes" result="result"/>
	  <cfif result.statuscode eq "200 OK">
		<cfset cfData = DeserializeJSON(result.filecontent)>
        <cfset Forecast_struct.headerCityZip = config.getSecrets(3)>	
		<cfset Forecast_struct.Temp = cfData.currently.temperature>
        <cfset Forecast_struct.NowSummary = cfData.currently.summary>
        <cfset Forecast_struct.FeelsLike  = cfData.currently.apparentTemperature>
        <cfset Forecast_struct.Icon  = cfData.currently.Icon>	
        <cfset Forecast_struct.DailySummary  = cfData.daily.data[1].summary> 	
	  </cfif>
    <cfreturn Forecast_struct>
  </cffunction>
</cfcomponent>  
