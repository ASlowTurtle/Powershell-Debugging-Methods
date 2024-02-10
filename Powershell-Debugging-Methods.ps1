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