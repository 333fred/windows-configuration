Set-Location C:\Users\Fredric\OneDrive
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
$psdir = "C:\Users\Fredric\Documents\WindowsPowerShell"
Get-ChildItem "${psdir}\Get-Link.ps1" | %{.$_}
Get-ChildItem "${psdir}\Scripts\*.ps1" | %{.$_}