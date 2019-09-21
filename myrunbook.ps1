#auto test dummy powershell script

Param
(
    	[Parameter(Mandatory=$false)][bool]$network = $false,
	[Parameter(Mandatory=$false)][bool]$info = $false
)


Write-Host "*** This is an Azure Automation Test ***"
Write-Host "****************************************"


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

