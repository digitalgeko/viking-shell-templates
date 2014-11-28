if exist "%CATALINA_HOME%/jre1.6.0_20/win" (
	if not "%JAVA_HOME%" == "" (
		set JAVA_HOME=
	)

	set "JRE_HOME=%CATALINA_HOME%/jre1.6.0_20/win"
)

set "JMX_OPTS=-Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.port=8099 -Dcom.sun.management.jmxremote.ssl=false"
set "CUSTOM_OPTS=-Dfile.encoding=UTF8 -Djava.net.preferIPv4Stack=true  -Dorg.apache.catalina.loader.WebappClassLoader.ENABLE_CLEAR_REFERENCES=false -Duser.timezone=GMT -Xmx2048m -XX:MaxPermSize=768m"
set "CATALINA_OPTS=%CATALINA_OPTS% %CUSTOM_OPTS% %JMX_OPTS%"