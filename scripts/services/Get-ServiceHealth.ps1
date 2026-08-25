[CmdletBinding()]
param(
    [string[]]$Name = @('Winmgmt','EventLog','Dnscache')
)

foreach ($serviceName in $Name) {
    $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue

    if ($null -eq $service) {
        [pscustomobject]@{
            Service = $serviceName
            State = 'NotFound'
            Status = 'FAIL'
        }
        continue
    }

    [pscustomobject]@{
        Service = $service.Name
        State = $service.Status
        Status = if ($service.Status -eq 'Running') { 'PASS' } else { 'CHECK' }
    }
}
