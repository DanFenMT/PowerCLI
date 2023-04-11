# Needs to be connected to VIServer

Get-VM | Select Name, @{N="IP Address";E={@($_.guest.IPAddress[0])}}, @{N='NetworkName';Expression={($_ | Get-NetworkAdapter).NetworkName}} | Sort-Object NetworkName
