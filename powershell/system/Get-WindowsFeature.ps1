# https://baditboys.netlify.app/posts/winfeaturepost/

Get-WindowsFeature

Get-WindowsFeature | Where-Object {$_. name-match ".Net"} | Format-List Name,DisplayName, Installstate | more