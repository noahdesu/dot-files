```
bash <(curl -s https://raw.githubusercontent.com/noahdesu/dot-files/master/go.sh)
bash <(wget -O - https://raw.githubusercontent.com/noahdesu/dot-files/master/go.sh)
```

vim ~/.local/share/applications/mimeapps.list

Gnome terminal profile settings

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

# macOS

* install xcode
  * open xcode to accept license
* install homebrew
* brew bundle
* install docker
  * https://www.docker.com/docker-mac
* gcloud auth login

# ssh

``` bash
ssh-keygen -t rsa -b 4096 -C "noahwatkins@gmail.com"
ssh-add ~/.ssh/KEYNAME

$ cat .ssh/config
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/github
```

# terminal

```bash
https://github.com/aaron-williamson/base16-gnome-terminal
git clone https://github.com/aaron-williamson/base16-gnome-terminal.git ~/.config/base16-gnome-terminal
.config/base16-gnome-terminal/color-scripts/base16-default-dark-256.sh
https://github.com/martinlindhe/base16-iterm2
```
