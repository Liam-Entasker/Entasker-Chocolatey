[CmdletBinding()]
param (
    [Parameter()]
    [switch]$InstallOffice = $false,
    [switch]$InstallVisualStudio = $false
)

#####
# install Chocolatey and then software for new vm
##### 

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Software
choco install powershell-core -y

$softwareList = @(
    @{name='googlechrome --ignore-checksums'; install=$true}
    @{name='git'; install=$true}
    @{name='visualstudiocode'; install=$true}
    @{name='teamviewer'; install=$true}
    @{name='dbatools'; install=$true}
    @{name='7zip'; install=$true}
    @{name='office365business'; install=$InstallOffice}
    @{name='visualstudio2019professional'; install=$InstallVisualStudio}
)

$procs = foreach ($software in $softwareList) {
    if ($software.install) {
        Start-Process pwsh '-c', "choco install $($software.name) -y;" -PassThru
    }
}

$procs | Wait-Process
Write-Verbose "Completed Software Install"