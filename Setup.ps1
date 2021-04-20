Set-ExecutionPolicy remotesigned

function downloadbuilder {
Invoke-WebRequest -Uri "https://github.com/williamyoung2196/Lansweeper-Deployment/archive/refs/heads/main.zip" -OutFile "C:\PurpleJelly\LansweeperInstall.zip"
Expand-Archive C:\PurpleJelly\LansweeperInstall.zip -DestinationPath C:\PurpleJelly\
}

function SoftwareInstall {
CD C:\PurpleJelly\Lansweeper-Deployment-main
.\LsAgent-windows.exe /verysilent 
}

downloadbuilder
SoftwareInstall


