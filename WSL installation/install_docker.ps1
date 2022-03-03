$docker_descktop_url = "https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe"

Start-BitsTransfer -Source "https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe"
Start-Process .\Docker%20Desktop%20Installer.exe

