try {
$tenantID = ""
$applicationID = ""
$clientKey = ""
$url = "https://login.microsoftonline.com/$tenantId/oauth2/token"
$resource = "https://graph.microsoft.com/"
$restbody = @{
         grant_type    = 'client_credentials'
         client_id     = $applicationID
         client_secret = $clientKey
         resource      = $resource
}

$query = "https://graph.microsoft.com/v1.0/deviceManagement/windowsAutopilotDeviceIdentities"

$token = Invoke-RestMethod -Method POST -Uri $url -Body $restbody

$header = @{
          'Authorization' = "$($Token.token_type) $($Token.access_token)"
         'Content-type'  = "application/json"
}

$Devices = (Invoke-RestMethod -Uri $query -Headers $header -ContentType application/json).Value
$serial =  (Get-WmiObject -Class "Win32_BIOS" -Verbose:$false).SerialNumber



If ($devices.serialNumber -contains $serial)
{
#Write-Host "Device is already enrolled"
Exit 0
} else {
#Write-Host "Enrolling device"
Exit 1
}

} catch {
Write-Host "Error" $_
}