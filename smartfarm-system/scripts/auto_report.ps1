Write-Output "========================================" > "backup/bao-cao-su-co.txt"
Write-Output "BAO CAO SU CO - SMARTFARM" >> "backup/bao-cao-su-co.txt"
Write-Output "Ngay gio: $(Get-Date -Format 'dd/MM/yyyy HH:mm')" >> "backup/bao-cao-su-co.txt"
Write-Output "========================================" >> "backup/bao-cao-su-co.txt"

Get-Content "..\log-he-thong.log" | Select-String "ERROR" >> "backup/bao-cao-su-co.txt"

Write-Output "----------------------------------------" >> "backup/bao-cao-su-co.txt"
Write-Output "TONG SO SU CO:" >> "backup/bao-cao-su-co.txt"

(Get-Content "..\log-he-thong.log").Count >> "backup/bao-cao-su-co.txt"
