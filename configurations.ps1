read -p "E-mail: " email
ssh-keygen -t ed25519 -C "$email"

cat ~/.ssh/id_ed25519.pub
cet C/Users/$USER/.ssh/id_ed25519.pub
