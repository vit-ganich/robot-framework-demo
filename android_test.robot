*** Settings ***
Library  AppiumLibrary

#<add key="MobileDeviceModel" value="Nexus 7 2012 API 28" />
#    <!-- MobileLayout accepts "Portrait" or "Landscape"-->
#    <add key="MobileLayout" value="Portrait" />
#    <!-- MobileOSType accepts "Android" or "iOS"-->
#    <add key="MobileOSType" value="Android" />
#    <add key="AppiumIPAddress" value="10.50.17.14" />
#    <add key="AppiumPort" value="4723" />
#    <add key="AppiumUdid" value="emulator-5554" />
#    <!-- AppiumPlatformVersion is only necessary for testing against iOS and accepts a numerical version (e.g., 12.1)-->
#    <add key="AppiumPlatformVersion" value="9" />
#    <!-- AppiumWdaLocalPort is only necessary for Parallel iOS Tests,default is 8100 -->
#    <add key="AppiumWdaLocalPort" value="8100" />



*** Variables ***
${appium_host}=         http://10.50.17.14:4723/wd/hub
${platform_name}=       Android
${platform_ver}=        9
${udid}=                emulator-5554
${device_name}=         Nexus 7 2012 API 28
${app_url}=             https://cltqacep1490.csiqa.local


*** Test Cases ***
Open app on Android
    open application   ${appium_host}
                        ...     platformName=${platform_name}
                        ...     deviceName=${device_name}
                        ...     udid=${udid}
                        ...     platformVersion=${platform_ver}
                        ...     app=${app_url}