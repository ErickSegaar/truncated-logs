function Run
{
    [CmdletBinding()]
    param()

    for ($i = 0; $i -lt 10000; $i++) 
    {
        Write-Output "Keep on counting $i"
    }
}

Run