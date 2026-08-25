[CmdletBinding()]
param(
    [string]$Gateway = '10.10.20.1',
    [string]$DnsServer = '10.10.30.10',
    [string]$Target = '10.10.30.10'
)

$tests = @(
    [pscustomobject]@{ Test = 'Gateway'; Target = $Gateway },
    [pscustomobject]@{ Test = 'DNS server'; Target = $DnsServer },
    [pscustomobject]@{ Test = 'Target'; Target = $Target }
)

$results = foreach ($test in $tests) {
    $reply = Test-Connection -ComputerName $test.Target -Count 2 -Quiet -ErrorAction SilentlyContinue
    [pscustomobject]@{
        Test = $test.Test
        Target = $test.Target
        Reachable = $reply
        Status = if ($reply) { 'PASS' } else { 'FAIL' }
    }
}

$results
