# env-setup-files

Removing headaches from setups (and life) one automation at a time.

Ideally, to get started with the script:

```
git clone https://github.com/Chinmay1743/env-setup-files.git; \
cd env-setup-files.git; \
chmod +x temporaryscript; \
./temporaryscript
```

But since a lot of necessary packages are not available in first place (including git), here is the core snippet that you need to run first:

```
sudo apt update;
sudo apt upgrade -y;
sudo apt install \
git curl locate neofetch awscli python3-pip ncurses-hexedit neovim \
htop ca-certificates gnupg libssl-dev pkg-config build-essential cmake \
meson libzip-dev zlib1g-dev qtbase5-dev libqt5svg5-dev qttools5-dev \
qttools5-dev-tools libkf5syntaxhighlighting-dev libgraphviz-dev \
libshiboken2-dev libpyside2-dev qtdeclarative5-dev nodejs npm
```


