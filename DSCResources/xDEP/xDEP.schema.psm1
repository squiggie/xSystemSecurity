Configuration xDEP
{
    param
    (
        [parameter(Mandatory = $true)]
        [ValidateSet("AlwaysOff","AlwaysOn","OptIn","OptOut")]
        [System.String]
        $Setting
    )

    #Initialize variables to default values which is to NotifyChanges.
    $Setting = "AlwaysOn"

    switch ($Setting)
    {
        "AlwaysOn"
        {
            Start-Process bcdedit '/set nx AlwaysOn'
        }
        "AlwaysOff"
        {
            Start-Process bcdedit '/set nx AlwaysOff'
        }
        "OptIn"
        {
            Start-Process bcdedit '/set nx OptIn'
        }
        "OptOut"
        {
            Start-Process bcdedit '/set nx OptOut'
        }
    }
}
