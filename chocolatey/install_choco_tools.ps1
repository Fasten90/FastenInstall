foreach ($tool in Get-Content tools.txt) {
    choco install -y $tool
}
