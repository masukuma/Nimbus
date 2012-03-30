<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="NimbusSAAS" generation="1" functional="0" release="0" Id="45ef02be-31ee-4bd3-9451-42d6cee59d58" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="NimbusSAASGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="NimbusWebservice:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/NimbusSAAS/NimbusSAASGroup/LB:NimbusWebservice:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="Nimbus:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/NimbusSAAS/NimbusSAASGroup/LB:Nimbus:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="NimbusWebserviceInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbusWebserviceInstances" />
          </maps>
        </aCS>
        <aCS name="NimbusInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbusInstances" />
          </maps>
        </aCS>
        <aCS name="NimbusCruncherInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbusCruncherInstances" />
          </maps>
        </aCS>
        <aCS name="NimbusWebservice:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbusWebservice:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="NimbusWebservice:?IsSimulationEnvironment?" defaultValue="">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbusWebservice:?IsSimulationEnvironment?" />
          </maps>
        </aCS>
        <aCS name="NimbusWebservice:?RoleHostDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbusWebservice:?RoleHostDebugger?" />
          </maps>
        </aCS>
        <aCS name="NimbusWebservice:?StartupTaskDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbusWebservice:?StartupTaskDebugger?" />
          </maps>
        </aCS>
        <aCS name="Nimbus:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbus:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="Nimbus:?IsSimulationEnvironment?" defaultValue="">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbus:?IsSimulationEnvironment?" />
          </maps>
        </aCS>
        <aCS name="Nimbus:?RoleHostDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbus:?RoleHostDebugger?" />
          </maps>
        </aCS>
        <aCS name="Nimbus:?StartupTaskDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbus:?StartupTaskDebugger?" />
          </maps>
        </aCS>
        <aCS name="NimbusCruncher:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbusCruncher:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="NimbusCruncher:?IsSimulationEnvironment?" defaultValue="">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbusCruncher:?IsSimulationEnvironment?" />
          </maps>
        </aCS>
        <aCS name="NimbusCruncher:?RoleHostDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbusCruncher:?RoleHostDebugger?" />
          </maps>
        </aCS>
        <aCS name="NimbusCruncher:?StartupTaskDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbusCruncher:?StartupTaskDebugger?" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:NimbusWebservice:Endpoint1">
          <toPorts>
            <inPortMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusWebservice/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:Nimbus:Endpoint1">
          <toPorts>
            <inPortMoniker name="/NimbusSAAS/NimbusSAASGroup/Nimbus/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapNimbusWebserviceInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusWebserviceInstances" />
          </setting>
        </map>
        <map name="MapNimbusInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusInstances" />
          </setting>
        </map>
        <map name="MapNimbusCruncherInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusCruncherInstances" />
          </setting>
        </map>
        <map name="MapNimbusWebservice:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusWebservice/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapNimbusWebservice:?IsSimulationEnvironment?" kind="Identity">
          <setting>
            <aCSMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusWebservice/?IsSimulationEnvironment?" />
          </setting>
        </map>
        <map name="MapNimbusWebservice:?RoleHostDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusWebservice/?RoleHostDebugger?" />
          </setting>
        </map>
        <map name="MapNimbusWebservice:?StartupTaskDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusWebservice/?StartupTaskDebugger?" />
          </setting>
        </map>
        <map name="MapNimbus:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/NimbusSAAS/NimbusSAASGroup/Nimbus/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapNimbus:?IsSimulationEnvironment?" kind="Identity">
          <setting>
            <aCSMoniker name="/NimbusSAAS/NimbusSAASGroup/Nimbus/?IsSimulationEnvironment?" />
          </setting>
        </map>
        <map name="MapNimbus:?RoleHostDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/NimbusSAAS/NimbusSAASGroup/Nimbus/?RoleHostDebugger?" />
          </setting>
        </map>
        <map name="MapNimbus:?StartupTaskDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/NimbusSAAS/NimbusSAASGroup/Nimbus/?StartupTaskDebugger?" />
          </setting>
        </map>
        <map name="MapNimbusCruncher:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusCruncher/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapNimbusCruncher:?IsSimulationEnvironment?" kind="Identity">
          <setting>
            <aCSMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusCruncher/?IsSimulationEnvironment?" />
          </setting>
        </map>
        <map name="MapNimbusCruncher:?RoleHostDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusCruncher/?RoleHostDebugger?" />
          </setting>
        </map>
        <map name="MapNimbusCruncher:?StartupTaskDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusCruncher/?StartupTaskDebugger?" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="NimbusWebservice" generation="1" functional="0" release="0" software="C:\dropbox\My Dropbox\Work\Noble Design Labs\Nimbus\NimbusSAAS\bin\Debug\NimbusSAAS.csx\roles\NimbusWebservice" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="8080" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="?IsSimulationEnvironment?" defaultValue="" />
              <aCS name="?RoleHostDebugger?" defaultValue="" />
              <aCS name="?StartupTaskDebugger?" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;NimbusWebservice&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;NimbusWebservice&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;Nimbus&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;NimbusCruncher&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="NimbusWebservice.svclog" defaultAmount="[1000,1000,1000]" defaultSticky="true" kind="Directory" />
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusWebserviceInstances" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="Nimbus" generation="1" functional="0" release="0" software="C:\dropbox\My Dropbox\Work\Noble Design Labs\Nimbus\NimbusSAAS\bin\Debug\NimbusSAAS.csx\roles\Nimbus" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="?IsSimulationEnvironment?" defaultValue="" />
              <aCS name="?RoleHostDebugger?" defaultValue="" />
              <aCS name="?StartupTaskDebugger?" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;Nimbus&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;NimbusWebservice&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;Nimbus&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;NimbusCruncher&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusInstances" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="NimbusCruncher" generation="1" functional="0" release="0" software="C:\dropbox\My Dropbox\Work\Noble Design Labs\Nimbus\NimbusSAAS\bin\Debug\NimbusSAAS.csx\roles\NimbusCruncher" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="1792" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="?IsSimulationEnvironment?" defaultValue="" />
              <aCS name="?RoleHostDebugger?" defaultValue="" />
              <aCS name="?StartupTaskDebugger?" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;NimbusCruncher&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;NimbusWebservice&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;Nimbus&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;NimbusCruncher&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusCruncherInstances" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyID name="NimbusWebserviceInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="NimbusInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="NimbusCruncherInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="7f15f1c2-ca79-4836-b43d-d85fe3005220" ref="Microsoft.RedDog.Contract\ServiceContract\NimbusSAASContract@ServiceDefinition.build">
      <interfacereferences>
        <interfaceReference Id="e8832d5e-8dd2-4954-9db2-cd64042f1cdf" ref="Microsoft.RedDog.Contract\Interface\NimbusWebservice:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusWebservice:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="813ce646-0f26-408a-9257-144b6aaefa2f" ref="Microsoft.RedDog.Contract\Interface\Nimbus:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/NimbusSAAS/NimbusSAASGroup/Nimbus:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>