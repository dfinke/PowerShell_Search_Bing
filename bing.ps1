#requires -Version 3 
function Invoke-BingQuery
{
    Param(
        [Parameter(Mandatory = $true)]
        $Query,
        [Parameter(Mandatory = $true)]
        $APIAuthorizationKey,
        [Parameter()]
        [Switch]$RawData
        
    )
    begin
    {
        
        $bytes  = [System.Text.Encoding]::UTF8.GetBytes("$APIAuthorizationKey`:$APIAuthorizationKey")
        $Authorization = 'Basic {0}' -f [System.Convert]::ToBase64String($bytes)
    
    }
    process
    {
        foreach($BingQuery in $Query)
        {
            $BingUrl = "https://api.datamarket.azure.com/Bing/Search/Web?Query='$($BingQuery)'&`$format=JSON"
            
            Write-Verbose -Message "Query URL is $BingUrl"
            
            Write-Verbose -Message 'Will perform the query now...'
            
            $results = (Invoke-RestMethod -Uri $BingUrl -Headers @{
                    Authorization = $Authorization
            })
            
            Write-Verbose -Message 'Processing results'
            If(-not ($RawData))
            {
                Write-Verbose -Message 'Displaying results as objects'
                foreach($result in $($results.d.results))
                {
                    [PSCustomObject][Ordered]@{
                        Title       = $result.title
                        Description = $result.description
                        URI         = $result.URL
                    }
                }
            }
            else
            {
                Write-Verbose -Message 'Displaying results as Raw Data'
                Write-Output -InputObject $results
            }
        }             
    }
    end
    {
    }
}
