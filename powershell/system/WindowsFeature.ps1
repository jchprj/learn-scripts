# https://baditboys.netlify.app/posts/winfeaturepost/

Get-WindowsFeature

Get-WindowsFeature | Where-Object {$_. name-match ".Net"} | Format-List Name,DisplayName, Installstate | more


# https://stackoverflow.com/questions/51789863/powershell-how-to-use-get-windowsoptionalfeature-command-to-turn-windows-feat
Get-WindowsOptionalFeature -Online -FeatureName '*'