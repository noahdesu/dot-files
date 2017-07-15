```
bash <(curl -s https://raw.githubusercontent.com/noahdesu/dot-files/master/go.sh)
bash <(wget -O - https://raw.githubusercontent.com/noahdesu/dot-files/master/go.sh)
```

vim ~/.local/share/applications/mimeapps.list

# Notes

```
sudo passwd -l root
```

```bash
firewall-cmd --get-default-zone
firewall-cmd --set-default-zone drop
firewall-cmd --state
firewall-cmd --get-active-zones
```

```
dnf update -y
```

```
dnf install -y vim-enhanced tmux texlive texlive-pbox texlive-appendix autoconf libtool
```

```
setup2.sh
```

```
cat << 'EOF' > $HOME/.ssh/config
Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/github
EOF
chmod 600 $HOME/.ssh/config
```
