#auto test dummy powershell script

Write-Host "*** This is an Azure Automation Test ***"
Write-Host "****************************************"

param
(
    	[Parameter(Mandatory=$true)][bool]$network = $false,
	[Parameter(Mandatory=$true)][bool]$info = $false
)


if($network) {
   Get-NetIPAddress | Format-Table
}else {
   Write-Output ("Network output disabled. Please add parameter value.")
}

if($info) {
   Get-CimInstance -ClassName Win32_ComputerSystem
}else {
   Write-Output ("Info output disabled. Please add parameter value.")
}

