Start-PodeServer {
    Add-PodeEndpoint -Address * -Port 8080 -Protocol Http

    Add-PodeRoute -Method Get -Path '/' -ScriptBlock {
        Write-PodeViewResponse -Path 'index'
    }

    Add-PodeRoute -Method Get -Path '/userInformation' -ScriptBlock {
        Write-PodeViewResponse -Path 'userInformation'
    }

    Add-PodeRoute -Method Post -Path '/userInformationResult' -ScriptBlock {
        $Body = [System.Web.HttpUtility]::UrlDecode($WebEvent.Request.Body)
        $Data = @{}
        $Body.split('&') | %{
            $part = $_.split('=')
            $Data.add($part[0], $part[1])
        }
        Write-PodeJsonResponse -Value $($Data)
    }
}