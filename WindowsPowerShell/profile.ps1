Set-Location C:\Users\Fredric\OneDrive
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
$psdir = "C:\Users\Fredric\Documents\WindowsPowerShell"

# Check if git is set up
if (!(Test-Path "$psdir\posh-git")) {
    Write-Host "Directory $psdir\posh-git does not exist, did you init and clone submodules before moving the directory?"
} else {
    . "$psdir\posh-git\profile.example.ps1"
}

# Setup PSReadLine. First, ensure that import-module exists
if (!(Get-Command Import-Module -errorAction SilentlyContinue)) {
    Write-Host 'Please install wmf 5.0. This can be found here: http://www.microsoft.com/en-us/download/details.aspx?id=45883'
}  else {
    # Now, attempt to import psreadline. If not successfull, print the error
    try {
        Import-Module PSReadline
    } catch [system.exception] {
        Write-Host "Could not import PSReadline. Has it been installed?"
        Write-Host $_
    }
}

# If we haven't setup the colors, then install scoop, concfg, and import our settings. Otherwise, continue
$setupFile = 'PowershellInstalled'
if (!(Test-Path "$psdir\$setupFile")) {
    iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
    scoop install concfg
    concfg import "$psdir\settings.json" --non-interactive
    echo "" > "$psdir\$setupFile"
}