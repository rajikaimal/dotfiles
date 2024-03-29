#!/usr/bin/zsh

# source
source $HOME/.zshrc

code --install-extension cmstead.js-codeformer
code --install-extension cmstead.jsrefactor
code --install-extension denoland.vscode-deno
code --install-extension dhedgecock.radical-vscode
code --install-extension dracula-theme.theme-dracula
code --install-extension eamodio.gitlens
code --install-extension esbenp.prettier-vscode
code --install-extension golang.go
code --install-extension GraphQL.vscode-graphql
code --install-extension GraphQL.vscode-graphql-syntax
code --install-extension JuanBlanco.solidity
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension ms-toolsai.jupyter-keymap
code --install-extension ms-toolsai.jupyter-renderers
code --install-extension msjsdiag.vscode-react-native
code --install-extension redhat.vscode-xml
code --install-extension rvest.vs-code-prettier-eslint
code --install-extension vscodevim.vim
code --install-extension wix.vscode-import-cost
code --install-extension zhuangtongfa.material-theme

# copy settings file
cp vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json