```
bash <(curl -s https://raw.githubusercontent.com/noahdesu/dot-files/master/go.sh)
bash <(wget -O - https://raw.githubusercontent.com/noahdesu/dot-files/master/go.sh)
```

# Beta Setup Notes

```bash
firewall-cmd --get-default-zone
firewall-cmd --set-default-zone drop
firewall-cmd --state
firewall-cmd --get-active-zones
```

```
dnf update -y
dnf install -y vim-enhanced tmux texlive texlive-pbox texlive-appendix autoconf libtool
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

```
mkdir $HOME/src
pushd $HOME/src
git clone --recursive git@github.com:noahdesu/zlog.git
git clone --recursive git@github.com:noahdesu/dot-files.git
git clone --recursive git@github.com:noahdesu/java-legion.git
git clone --recursive git@github.com:noahdesu/thesis.git
git clone --recursive git@github.com:ceph/ceph.git
popd
```
