$Logfile = "C:\Users\KH\Desktop\copying"
$DesktopPath = [Environment]::GetFolderPath("Desktop")
function GetTime {
    Write-Host "[{0:MM/dd/yy} {0:HH:mm:ss}]"
    return "[{0:MM/dd/yy} {0:HH:mm:ss}]"
}

function NewFile {
    for ($i = 0; $i -lt 50; $i++) {
    New-Item $DesktopPath\KHisThEbEsT$i.txt
    Add-Content $DesktopPath\KHisThEbEsT$i.txt "KH is the best!!!! $i"
    }
}

NewFile

Start-Process -FilePath "C:\Riot Games\Riot Client\RiotClientServices.exe" -ArgumentList "--launch-product=league_of_legends --launch-patchline=live"
Start-Process "https://www.youtube.com/watch?v=vbM36yfIVAw"

$location = Get-Location

set-itemproperty -path "HKCU:Control Panel\Desktop" -name "wallpaper" -value "$location\picture.jpg"
rundll32.exe user32.dll, UpdatePerUserSystemParameters

