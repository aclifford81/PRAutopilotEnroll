$tenantID = "fba19210-32fa-4fbc-bd55-f9e1dc3bf117"
$applicationID = "c31e319e-7f40-4869-87df-0c27071d2baf"
$clientKey = "6RN8Q~qSZgsDWok0ZqQcnuS-.HMKt6rVfCkcdcas"
$url = "https://login.microsoftonline.com/$tenantId/oauth2/token"
$resource = "https://graph.microsoft.com/"
$restbody = @{
         grant_type    = 'client_credentials'
         client_id     = $applicationID
         client_secret = $clientKey
         resource      = $resource
}

$query = "https://graph.microsoft.com/beta/deviceManagement/importedWindowsAutopilotDeviceIdentities"

$token = Invoke-RestMethod -Method POST -Uri $url -Body $restbody

$header = @{
          'Authorization' = "$($Token.token_type) $($Token.access_token)"
         'Content-type'  = "application/json"
}


$DeviceHashData = (Get-WmiObject -Namespace "root/cimv2/mdm/dmmap" -Class "MDM_DevDetail_Ext01" -Filter "InstanceID='Ext' AND ParentID='./DevDetail'" -Verbose:$false).DeviceHardwareData
$SerialNumber = (Get-WmiObject -Class "Win32_BIOS" -Verbose:$false).SerialNumber
$ProductKey = (Get-WmiObject -Class "SoftwareLicensingService" -Verbose:$false).OA3xOriginalProductKey
 
 
 $AutopilotDeviceIdentity = [ordered]@{
        '@odata.type' = '#microsoft.graph.importedWindowsAutopilotDeviceIdentity'
        'groupTag' = if ($GroupTag) { "$($GroupTag)" } else { "" }
        'serialNumber' = "$($SerialNumber)"
        'productKey' = if ($ProductKey) { "$($ProductKey)" } else { "" }
        'hardwareIdentifier' = "$($DeviceHashData)"
        'assignedUserPrincipalName' = if ($UserPrincipalName) { "$($UserPrincipalName)" } else { "" }
        'state' = @{
            '@odata.type' = 'microsoft.graph.importedWindowsAutopilotDeviceIdentityState'
            'deviceImportStatus' = 'pending'
            'deviceRegistrationId' = ''
            'deviceErrorCode' = 0
            'deviceErrorName' = ''
        }
    }
    $AutopilotDeviceIdentityJSON = $AutopilotDeviceIdentity | ConvertTo-Json

   $AutopilotDeviceIdentityResponse= Invoke-RestMethod -Uri $query -Headers $header -ContentType application/json -Method post -Body $AutopilotDeviceIdentityJSON
