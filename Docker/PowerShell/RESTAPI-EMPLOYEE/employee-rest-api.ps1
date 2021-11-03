Start-PodeServer {
    Add-PodeEndpoint -Address * -Port 3000 -Protocol Http
    
    Add-PodeRoute -Method Get -Path '/employee' -ScriptBlock {             
        $Employee = Get-Content Docker\PowerShell\RESTAPI-EMPLOYEE\Database\employee.json -Raw
        Write-PodeJsonResponse -Value $($Employee)
    }

    Add-PodeRoute -Method Get -Path '/employee/:id' -ScriptBlock {             
        $Employee = ((Get-Content Docker\PowerShell\RESTAPI-EMPLOYEE\Database\employee.json -Raw  | ConvertFrom-Json).employee).Where(
            {
                ($_.Id -eq $WebEvent.Parameters['id'])
            }
        )
        Write-PodeJsonResponse -Value $($Employee)
    }
}