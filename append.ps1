param (
    [string]$text,
    [string]$path
)

$files = Get-ChildItem -Path $path -Filter "*.txt" -File

foreach ($file in $files) {
    $filePath = $file.FullName
    Add-Content -Path $filePath -Value $text
}

Write-Host "Text appended to all .txt files."