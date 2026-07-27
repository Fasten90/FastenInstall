

pushd chocolatey
if (Get-Command choco -ErrorAction SilentlyContinue) {
    Write-Host "choco is existing"
}
else {
    Write-Host "choco (chocolatey) is missing, let us install that"
    & ".\install_chocolatey.ps1"
}

& ".\install_tools_with_choco.ps1"

popd
