<cfcomponent output="no">
  <!--Global variables-->  	
  <cfset variables.secrets_arr = ArrayNew(2)>  
   
  <!---init Function--->
  <cffunction name="init" output="no" access="public" returntype="any" hint="Initializing variable component">
      <!--Secrets variables-->
	  <cfset variables.secrets_arr[1][1] = 'https://api.forecast.io/forecast'>
      <cfset variables.secrets_arr[1][2] = 'YOUR_APIKEY_GOES_HERE'>
      <cfset variables.secrets_arr[1][3] = 'Philadelphia, PA (19104)'>      
      <cfset variables.secrets_arr[1][4] = '39.958359'> <!--latitude-->
      <cfset variables.secrets_arr[1][5] = '-75.195393'> <!--longitude--> 	
    <cfreturn this>
  </cffunction>
  
  <!---Get Secrets--->
  <cffunction name="getSecrets" output="no" access="remote" returntype="string" hint="Returns secrets">
  	<cfargument name="secretWht" type="numeric" required="yes">
    <cfreturn variables.secrets_arr[1][#ARGUMENTS.secretWht#]>
  </cffunction>
</cfcomponent>  