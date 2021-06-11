######################################################################################################################### NAVIGATIONAL
########################################################################################################################

alias home="cd ~/Documents/code"
alias md="cd ~/Documents/code/md"
alias scripts="cd ~/Documents/code/scripts"
alias side="cd ~/Documents/code/side"
alias work="cd ~/Documents/code/work"

########################################################################################################################
# OPENERS
########################################################################################################################

# Opens file (argument) in Chrome
alias chrome="open -a \"Google Chrome\""
# Opens oh-my-zsh config directory and .zshrc
alias profile='code ~/Documents/code/workspaces/profile.code-workspace && code ~/.zshrc'
# Opens custom snippets and vs-code extensions
alias snippets="code ~/Documents/code/workspaces/snippets.code-workspace"
# opens personal zoom room and copies link to clipboard
alias zoom="open 'https://us04web.zoom.us/j/6770871604?pwd=eFFpdXpUbkxDaWhUSGdFOUZudFdhUT09' && echo 'https://us04web.zoom.us/j/6770871604?pwd=eFFpdXpUbkxDaWhUSGdFOUZudFdhUT09' | pbcopy"

########################################################################################################################
# UTILITIES
########################################################################################################################

# Finds and deletes all node_modules within `~/Documents/code`
alias delete_all_nm="find ~/Documents/code -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;"
# Find All node_modules within a given folder
alias find_nm="find . -name 'node_modules' -type d -prune -print | xargs du -chs"
# removes node related generated files from a directory
alias flush='rm -rf node_modules yarn.lock package-lock.json .cache dist'
# pipes working directory to clipboard
alias pwd-copy='pwd | pbcopy'
# re-sources zshrc
alias refresh='source ~/.zshrc'

# yarn aliases
alias yf='yarn format'
alias ync='yarn new-component'
alias ys='yarn start'
alias ys-p='yarn start:playground'
alias ys-s='yarn start:styleguidist'
alias ys-w='yarn start:watch'
alias yt='yarn test'
alias yt-w='yarn test:watch'
alias yv='yarn validate'
alias yys='yarn && yarn start'

########################################################################################################################
# FUNCTIONS
########################################################################################################################

# takes a .mov file ($1 - first arg), converts it to a .gif with filename ($2 - second arg), and deletes the original file
movToGif(){
  ffmpeg -i "$1" -r 25 -f gif - | gifsicle --optimize=3 > ~/Documents/Screenshots/gifs/"$2".gif && rm "$1"
}
