#####
# install Chocolatey and then software for new vm
##### 

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Software
choco install googlechrome -y --ignore-checksums
choco install git -y
choco install visualstudiocode -y
choco install teamviewer -y
choco install powershell-core -y
choco install dbatools -y
choco install 7zip -y
