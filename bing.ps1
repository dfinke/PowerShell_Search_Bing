function Invoke-BingQuery ($query) {

    $BingUrl = "https://api.datamarket.azure.com/Bing/Search/Web?Query='$($query)'&`$format=JSON"

    $bytes  = [System.Text.Encoding]::UTF8.GetBytes("$($Env:BingAPIKey):$($Env:BingAPIKey)")
    $s = "Basic {0}" -f [System.Convert]::ToBase64String($bytes).ToString()

    (Invoke-RestMethod -Uri $BingUrl -Headers @{Authorization=$s}).d.results
}