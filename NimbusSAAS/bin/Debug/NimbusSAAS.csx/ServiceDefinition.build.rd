<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="NimbusSAAS" generation="1" functional="0" release="0" Id="2d467adc-66ae-4085-bcf0-4148ef352151" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="NimbusSAASGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="NimbusWeb:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/NimbusSAAS/NimbusSAASGroup/LB:NimbusWeb:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="NimbusWebservice:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/NimbusSAAS/NimbusSAASGroup/LB:NimbusWebservice:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="NimbusWebInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbusWebInstances" />
          </maps>
        </aCS>
        <aCS name="NimbusWebserviceInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbusWebserviceInstances" />
          </maps>
        </aCS>
        <aCS name="NimbusCruncherInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbusCruncherInstances" />
          </maps>
        </aCS>
        <aCS name="NimbusWeb:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbusWeb:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="NimbusWeb:?IsSimulationEnvironment?" defaultValue="">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbusWeb:?IsSimulationEnvironment?" />
          </maps>
        </aCS>
        <aCS name="NimbusWeb:?RoleHostDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbusWeb:?RoleHostDebugger?" />
          </maps>
        </aCS>
        <aCS name="NimbusWeb:?StartupTaskDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/NimbusSAAS/NimbusSAASGroup/MapNimbusWeb:?StartupTaskDebugger?" />
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
        <lBChannel name="LB:NimbusWeb:Endpoint1">
          <toPorts>
            <inPortMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusWeb/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:NimbusWebservice:Endpoint1">
          <toPorts>
            <inPortMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusWebservice/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapNimbusWebInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusWebInstances" />
          </setting>
        </map>
        <map name="MapNimbusWebserviceInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusWebserviceInstances" />
          </setting>
        </map>
        <map name="MapNimbusCruncherInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusCruncherInstances" />
          </setting>
        </map>
        <map name="MapNimbusWeb:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusWeb/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapNimbusWeb:?IsSimulationEnvironment?" kind="Identity">
          <setting>
            <aCSMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusWeb/?IsSimulationEnvironment?" />
          </setting>
        </map>
        <map name="MapNimbusWeb:?RoleHostDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusWeb/?RoleHostDebugger?" />
          </setting>
        </map>
        <map name="MapNimbusWeb:?StartupTaskDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusWeb/?StartupTaskDebugger?" />
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
          <role name="NimbusWeb" generation="1" functional="0" release="0" software="C:\dropbox\My Dropbox\Work\Noble Design Labs\Nimbus\NimbusSAAS\bin\Debug\NimbusSAAS.csx\roles\NimbusWeb" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="?IsSimulationEnvironment?" defaultValue="" />
              <aCS name="?RoleHostDebugger?" defaultValue="" />
              <aCS name="?StartupTaskDebugger?" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;NimbusWeb&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;NimbusWeb&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;NimbusWebservice&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;NimbusCruncher&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusWebInstances" />
          </sCSPolicy>
        </groupHascomponents>
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
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;NimbusWebservice&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;NimbusWeb&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;NimbusWebservice&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;NimbusCruncher&quot; /&gt;&lt;/m&gt;" />
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
          <role name="NimbusCruncher" generation="1" functional="0" release="0" software="C:\dropbox\My Dropbox\Work\Noble Design Labs\Nimbus\NimbusSAAS\bin\Debug\NimbusSAAS.csx\roles\NimbusCruncher" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="1792" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="?IsSimulationEnvironment?" defaultValue="" />
              <aCS name="?RoleHostDebugger?" defaultValue="" />
              <aCS name="?StartupTaskDebugger?" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;NimbusCruncher&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;NimbusWeb&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;NimbusWebservice&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;NimbusCruncher&quot; /&gt;&lt;/m&gt;" />
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
        <sCSPolicyID name="NimbusWebInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="NimbusWebserviceInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="NimbusCruncherInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="4a4acad0-4f3e-4c0a-bccb-97ac83795203" ref="Microsoft.RedDog.Contract\ServiceContract\NimbusSAASContract@ServiceDefinition.build">
      <interfacereferences>
        <interfaceReference Id="c7a443e7-c14c-4918-9d6e-031a5211774f" ref="Microsoft.RedDog.Contract\Interface\NimbusWeb:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusWeb:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="54154553-4d8b-4a34-b07e-f4449bf25336" ref="Microsoft.RedDog.Contract\Interface\NimbusWebservice:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/NimbusSAAS/NimbusSAASGroup/NimbusWebservice:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>