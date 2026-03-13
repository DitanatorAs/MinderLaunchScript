# Minder launch
Write-Host "Launch Minder..." -ForegroundColor Green

# Запускаем Minder 
wsl minder

# После закрытия Minder проверяем код возврата
if ($LASTEXITCODE -eq 0 -or $LASTEXITCODE -eq 130) { #если код возврата равен 0 или 130 - то программа завершилась без ошибок
    Write-Host "Minder close. Closing of the WSL..." -ForegroundColor Yellow
    wsl --shutdown
    Write-Host "WSL stoped." -ForegroundColor Green
} else {
    Write-Host "Minder closing with error (code: $LASTEXITCODE)." -ForegroundColor Red
}