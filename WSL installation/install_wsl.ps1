$url ="https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi"

dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

wsl --install

Start-BitsTransfer -Source $url

Start-Process .\wsl_update_x64.msi