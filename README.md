```
bash <(curl -s https://raw.githubusercontent.com/noahdesu/dot-files/master/go.sh)
bash <(wget -O - https://raw.githubusercontent.com/noahdesu/dot-files/master/go.sh)
```

vim ~/.local/share/applications/mimeapps.list

Gnome terminal profile settings

sudoers
Defaults    env_reset,timestamp_timeout=30

# Notes

```
cat << 'EOF' > $HOME/.ssh/config
Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/github
EOF
chmod 600 $HOME/.ssh/config
```
