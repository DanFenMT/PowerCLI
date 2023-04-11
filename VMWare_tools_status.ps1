# Needs to be connected to VIServer

Get-VM | Select-Object -Property Name,@{Name='ToolsVersion';Expression={$_.Guest.ToolsVersion}},@{Name="ToolStatus"; Expression={$_.ExtensionData.Guest.ToolsVersionStatus}},@{Name="GuestOS"; Expression={$_.ExtensionData.Guest.GuestFullName}} | Export-CSV C:....test.csv
