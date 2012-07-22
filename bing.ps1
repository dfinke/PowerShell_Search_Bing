#requires -version 3

function Invoke-BingQuery  {
    param(
        [Parameter(Mandatory)]
        [string]$Query,
        [Switch]$Raw
    )

    $BingUrl = "https://api.datamarket.azure.com/Bing/Search/Web?Query='$($Query)'&`$format=JSON"

    $bytes  = [System.Text.Encoding]::UTF8.GetBytes("$($Env:BingAPIKey):$($Env:BingAPIKey)")
    $s = "Basic {0}" -f [System.Convert]::ToBase64String($bytes)

    $result = (Invoke-RestMethod -Uri $BingUrl -Headers @{Authorization=$s})
    
    if($Raw) {
        return $result
    }

    $result.d.results
}