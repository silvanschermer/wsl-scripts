$wslKernelDownloadUrl ="https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi"

# Enable WSl and Virtual nmaching Platform Windows Services
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Install Wsl and set it to wsl2
wsl --install
wsl --set-default-version 2

# Download the wsl kernel and excute the installer
Start-BitsTransfer -Source $wslKernelDownloadUrl
Start-Process .\wsl_update_x64.msi

