# Run this after build to push files and manifest to GitHub
$branch = "main"

Write-Host "Generating manifest..."
Start-Process -NoNewWindow -Wait -FilePath ".\ManifestGenerate.exe" -ArgumentList "https://raw.githubusercontent.com/zx-devstudio/WinNow/main/"

Write-Host "Uploading files to GitHub..."
git add .
git commit -m "Update version and files"
# git push origin $branch

Write-Host "Upload complete."