<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="Azure.Web.Azure" generation="1" functional="0" release="0" Id="7aed3b73-2b36-49ce-8fac-236d4ed5ee6e" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="Azure.Web.AzureGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="Azure.Web:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/Azure.Web.Azure/Azure.Web.AzureGroup/LB:Azure.Web:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Azure.Web:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/Azure.Web.Azure/Azure.Web.AzureGroup/MapAzure.Web:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="Azure.WebInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/Azure.Web.Azure/Azure.Web.AzureGroup/MapAzure.WebInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:Azure.Web:Endpoint1">
          <toPorts>
            <inPortMoniker name="/Azure.Web.Azure/Azure.Web.AzureGroup/Azure.Web/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapAzure.Web:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/Azure.Web.Azure/Azure.Web.AzureGroup/Azure.Web/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapAzure.WebInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/Azure.Web.Azure/Azure.Web.AzureGroup/Azure.WebInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="Azure.Web" generation="1" functional="0" release="0" software="C:\Dropbox\Projects\Azure\Azure.Web.Azure\csx\Release\roles\Azure.Web" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;Azure.Web&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;Azure.Web&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/Azure.Web.Azure/Azure.Web.AzureGroup/Azure.WebInstances" />
            <sCSPolicyFaultDomainMoniker name="/Azure.Web.Azure/Azure.Web.AzureGroup/Azure.WebFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyFaultDomain name="Azure.WebFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="Azure.WebInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="b1cc3be1-7e45-45e7-824c-3d0b73f73b02" ref="Microsoft.RedDog.Contract\ServiceContract\Azure.Web.AzureContract@ServiceDefinition.build">
      <interfacereferences>
        <interfaceReference Id="35c38a94-91bb-4fe4-84d0-8535b628556f" ref="Microsoft.RedDog.Contract\Interface\Azure.Web:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/Azure.Web.Azure/Azure.Web.AzureGroup/Azure.Web:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>