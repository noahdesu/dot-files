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
* xcode-select --install

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

# fzf

https://github.com/junegunn/fzf#installation

# terminal

this is pretty sketchy stuff, just for some really nice colors. as a compromise,
try and use terminals and settings that allow us to avoid using base16-shell.

```bash
on gnome terminal use 256 color scheme, and use base16-shell
https://github.com/aaron-williamson/base16-gnome-terminal
https://github.com/chriskempson/base16-shell

git clone https://github.com/aaron-williamson/base16-gnome-terminal.git ~/.config/base16-gnome-terminal
.config/base16-gnome-terminal/color-scripts/base16-default-dark-256.sh

use 256 scheme and base16 shell. base16 shell use bash_profile on mac
https://github.com/martinlindhe/base16-iterm2
```

# pass

```bash
# >> move password db to ~/.password-store
gpg --import /path/to/public.key
gpg --allow-secret-key-import --import /path/to/private.key

# other
#  --list-keys
#  --list-secret-keys
#  --edit-key <key> + trust
```
