[CmdletBinding()]
param()

$computer = Get-CimInstance Win32_ComputerSystem
$os = Get-CimInstance Win32_OperatingSystem

[pscustomobject]@{
    ComputerName = $computer.Name
    Manufacturer = $computer.Manufacturer
    Model = $computer.Model
    OS = $os.Caption
    Version = $os.Version
    Architecture = $os.OSArchitecture
    LastBoot = $os.LastBootUpTime
    TotalMemoryGB = [math]::Round($computer.TotalPhysicalMemory / 1GB, 2)
}
