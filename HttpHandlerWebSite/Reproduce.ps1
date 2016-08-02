$ErrorActionPreference = 'Stop'

$good = Invoke-WebRequest "http://localhost:81/HttpHandlerApp/Good"
Write-Host "Good handler is good, status was $($good.StatusCode)."

try {
    $bad = Invoke-WebRequest "http://localhost:81/HttpHandlerApp/Bad"
    Write-Host "Bad handler is good, this was unexpected."
} 
catch {
    Write-Host "Bad handler was bad!"
    Write-Host "Don't forget to iisreset before rerunning this."
}
