# zsh
alias zr="exec zsh"
alias zshrc="nvim $ZDOTDIR"

#files
alias rmf="rm -rf"
alias dd='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias take='function _take() { mkdir -p $1 && cd $1 }; _take $1'

# npm
alias regpub="npm config set registry https://registry.npmjs.org"
alias regwix="npm config set registry http://npm.dev.wixpress.com"

#vm
alias and_emu="~/Library/Android/sdk/emulator/emulator"
alias avd='(and_emu -netdelay none -netspeed full -avd Pixel_2_API_28 > $HOME/.android-avd.log &)'
alias sim="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
alias avdw='(and_emu -netdelay none -netspeed full -avd Pixel_2_API_28 -writable-system > $HOME/.android-avd.log &)'
alias adb="~/Library/Android/sdk/platform-tools/adb"

#yarn
alias yys="yarn && yarn start"
alias ys="yarn start"
alias yl="yarn link"
alias yld="rm -rf ~/.config/yarn/link/"
alias ya="yarn add"
alias ye="yarn e2e"
alias yb="yarn build"
alias yyb="yarn && yarn build"
alias yaw="yarn add -W"
alias yt="yarn test"
alias yyt="yarn && yarn test"

#apps
alias firefox='function _fox(){ (cd /Applications/Firefox\ Developer\ Edition.app/Contents/MacOS && ./firefox $1) }; _fox $1'
alias firefox_hardened='function _hfox(){ (cd /Applications/Firefox\ Developer\ Edition.app/Contents/MacOS && ./firefox -new-instance -P hardened $1) }; _hfox $1'
alias ff='firefox NUL &'
alias fh='firefox_hardened NUL &'
alias nvim='NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvim'
alias nvr='NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvr'
alias nn='nvim -u ~/.config/nvim/init.vim -S `pwd`/Session.vim'
alias pw='keepassxc-cli show ~/IDrive-Sync/Documents/keepass/pw.kdbx'
alias man='batman'
alias cat='bat'

alias bi="brew install"
alias bu="brew uninstall"
alias bl="brew list"

alias ww='w3m -no-mouse'
alias -g CL="| xargs wc -l"
alias -g G="| grep"
alias ll='exa -lah --git'
if [ -n "$(alias fd)" ]; then
  unalias fd
fi

#tmux
alias zz='tmuxp load -y zettel'
alias olo='tmuxp load -y olo'
alias tls='tmux list-sessions'

#git
alias gmm='gcm && gup && gco - && gm master'
alias gcmrg='function _merge(){ git commit -m "Merge branch master into $1" };_merge `git branch --show-current`'
alias gcmrgn='function _merge(){ git commit -m "Merge branch master into $1" -n };_merge `git branch --show-current`'

# fuzzy
alias gde='$XDG_CONFIG_HOME/zsh/gde'
