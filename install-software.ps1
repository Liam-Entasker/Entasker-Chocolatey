[CmdletBinding()]
param (
    [Parameter()]
    [bool]$InstallOffice = $false,
    [bool]$InstallVisualStudio = $false
)

#####
# install Chocolatey and then software for new vm
##### 

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Software
choco install powershell-core -y

# open new process to install the other software
Start-Process pwsh '-c', 'choco install googlechrome -y --ignore-checksums; choco install git -y; choco install visualstudiocode -y; choco install teamviewer -y; choco install dbatools -y; choco install 7zip -y;'

# install office 365
if ($InstallOffice) {
    Start-Process pwsh '-c', 'choco install office365business -y;'
}

# install visual studio
if (InstallVisualStudio) {
    Start-Process pwsh '-c', 'choco install visualstudio2019professional -y'
}