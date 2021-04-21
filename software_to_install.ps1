#####
# install Chocolatey and then software for new vm
##### 

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Software
choco install googlechrome -y
choco install git -y
choco install visualstudiocode -y
choco install visualstudio2019professional -y
choco install teamviewer -y

# choco install sql-server-2019
# choco install sql-server-2019-cumulative-update
