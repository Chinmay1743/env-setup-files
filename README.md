# env-setup-files

Removing headaches from setups (and life) one environment and tool at a time.

Since a lot of necessary packages are not available in first place (including git), here is the core snippet that you need to run first (strictly for Ubuntu):

```
sudo apt update; sudo apt upgrade -y;
sudo apt install \
git curl locate neofetch python3-pip ncurses-hexedit neovim wget \
htop ca-certificates gnupg libssl-dev pkg-config build-essential cmake \
meson libzip-dev zlib1g-dev qtbase5-dev libqt5svg5-dev qttools5-dev \
qttools5-dev-tools libkf5syntaxhighlighting-dev libgraphviz-dev \
libshiboken2-dev libpyside2-dev qtdeclarative5-dev \
libgtk-3-dev libayatana-appindicator3-dev librsvg2-dev file \
qt6-base-dev qt6-tools-dev qt6-charts-dev qt6-declarative-dev
```


### ToDo :
- create more snippets for Kali, Fedora, Debian vanilla, etc...
- change NPM and node setup since repositry has older versions
### Update: Please do not run ubuntu script in other distros. Things such as docker are prone to break updates.






