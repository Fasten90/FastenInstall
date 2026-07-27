
choco_res = choco --version
cd choco
if choco_res bad
    echo "choco (chocolatey) is missing, let us install that"
	exec .\install_choco_tools.ps1
else
    echo "choco is existing"

exec .\install_tools_with_choco.ps1


