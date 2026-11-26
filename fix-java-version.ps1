# Fix Java version to 17 in all Capacitor build files
Write-Host "Fixing Java versions to 17..." -ForegroundColor Yellow

$files = @(
    "android\app\capacitor.build.gradle",
    "android\capacitor-cordova-android-plugins\build.gradle",
    "node_modules\@capacitor\android\capacitor\build.gradle",
    "node_modules\@capacitor\filesystem\android\build.gradle",
    "node_modules\@capacitor\share\android\build.gradle",
    "node_modules\@capacitor-community\speech-recognition\android\build.gradle",
    "node_modules\@capacitor-community\text-to-speech\android\build.gradle"
)

foreach ($file in $files) {
    if (Test-Path $file) {
        $content = Get-Content $file -Raw
        $content = $content -replace 'JavaVersion\.VERSION_21', 'JavaVersion.VERSION_17'
        $content = $content -replace 'jvmToolchain\(21\)', 'jvmToolchain(17)'
        Set-Content $file -Value $content -NoNewline
        Write-Host "Fixed: $file" -ForegroundColor Green
    } else {
        Write-Host "Not found: $file" -ForegroundColor Red
    }
}

Write-Host "All Java versions fixed to 17!" -ForegroundColor Green
