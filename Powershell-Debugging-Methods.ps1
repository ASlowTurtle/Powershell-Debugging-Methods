<#
    Using Set-PSDebug
#>
Set-PSDebug -Step
foreach ($number in 1..10) {
    $number
}
<#
    During the prompt press 'S' to enter debugging
    (to e. g. change or read values of variables),
    'Y' to continue to the next step, 'A' to continue and
    stop interrupting the script and 'L' or 'N' to stop the execution.
    Check the nested prompt level using $NestedPromptLevel
    Each level adds anoth '>' to the powershell prompt.
#>


<#
    Creating a runspace to debug
#>
$rsp = [RunspaceFactory]::CreateRunspace()
$rsp.Open()
$ps = [powershell]::Create()
$ps.Runspace = $rsp
[void]$ps.AddScript('C:\Users\min\Desktop\IT\git\Powershell-Debugging-Methods\testscript.ps1')
$as = $ps.BeginInvoke()

$ps.Stop()
$rsp.Close()
$rsp.Dispose()

<#
    Useful cmdlets for remote debugging.
#>

Debug-Runspace
Enter-PSHostProcess
Get-PSHostProcessInfo
Exit-PSHostProcess