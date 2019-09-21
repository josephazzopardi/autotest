# script to trigger a web hook for azure automation

$uri = "https://s2events.azure-automation.net/webhooks?token=Pvrpcy%2fwVqFNqwkz6uCRrnaKSTpfgenHCmADICJK8G8%3d"

$parameters  = @(
                    @{ network="$true"},
                    @{ info="$true"}
               )

$body = ConvertTo-Json -InputObject $parameters

$header = @{ message="StartedbyJosephWebHook"}

$response = Invoke-WebRequest -Method Post -Uri $uri -Body $body -Headers $header

$jobid = (ConvertFrom-Json ($response.Content)).jobids[0] 
