export QT_QPA_PLATFORMTHEME=qt5ct
export DOOMDIR="/home/alcestide/.config/doom/"
export VISUAL='emacs'
export EDITOR='nvim'
export TERMINAL='xterm-256color'
export BROWSER='firefox'
export BORG_STORAGE_QUOTA="10GB"
export CALIBRE_USE_DARK_PALETTE=1
export PATH="/home/alcestide/.local/share/gem/ruby/3.0.0/bin:$PATH"
PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"

export CC=/usr/bin/gcc
export CXX=/usr/bin/gcc

export GIT=/home/$USER/Documents/Git/
ZSH_TMUX_AUTOSTART=true
# Pywal

(cat ~/.cache/wal/sequences &)

autoload -Uz add-zsh-hook
autoload -Uz vcs_info
precmd () { vcs_info }
_comp_options+=(globdots)

zstyle ':completion:*' verbose true
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS} 'ma=48;5;197;1'
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:warnings' format "%B%F{red}No matches for:%f %F{magenta}%d%b"
zstyle ':completion:*:descriptions' format '%F{yellow}[-- %d --]%f'
zstyle ':vcs_info:*' formats ' %B%s-[%F{magenta}%f %F{yellow}%b%f]-'

expand-or-complete-with-dots() {
  echo -n "\e[31m…\e[0m"
  zle expand-or-complete
  zle redisplay
}
zle -N expand-or-complete-with-dots
#bindkey "^I" expand-or-complete-with-dots

HISTFILE=~/.zhistory
HISTSIZE=5000
SAVEHIST=5000

setopt AUTOCD              # change directory just by typing its name
setopt PROMPT_SUBST        # enable command substitution in prompt
setopt MENU_COMPLETE       # Automatically highlight first element of completion menu
setopt LIST_PACKED		   # The completion menu takes less space.
setopt AUTO_LIST           # Automatically list choices on ambiguous completion.
setopt HIST_IGNORE_DUPS	   # Do not write events to history that are duplicates of previous events
setopt HIST_FIND_NO_DUPS   # When searching history don't display results already cycled through twice
setopt COMPLETE_IN_WORD    # Complete from both ends of a word.

PROMPT='%B%F{blue}󰣇%f%b %B%F{cyan}%n%f%b %B%F{red}%~%f%b${vcs_info_msg_0_}%b %(?.%B%F{green}✓.%F{red}✕)%f%b %B%F{green}➜%f%b '
#PROMPT='%B%F{blue}󰣇%f%b  %B%F{magenta}%n%f%b %B%F{red}%~%f%b${vcs_info_msg_0_}%b %(?.%B%F{green}✓.%F{red}✕)%f%b %B%F{green}%f%b '

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
#bindkey '^[[A' history-substring-search-up
#bindkey '^[[B' history-substring-search-down

function xterm_title_precmd () {
	print -Pn -- '\e]2;%n@%m %~\a'
	[[ "$TERM" == 'screen'* ]] && print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-}\e\\'
}

function xterm_title_preexec () {
	print -Pn -- '\e]2;%n@%m %~ %# ' && print -n -- "${(q)1}\a"
	[[ "$TERM" == 'screen'* ]] && { print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-} %# ' && print -n -- "${(q)1}\e\\"; }
}

if [[ "$TERM" == (kitty*|alacritty*|termite*|gnome*|konsole*|kterm*|putty*|rxvt*|screen*|tmux*|xterm*) ]]; then
	add-zsh-hook -Uz precmd xterm_title_precmd
	add-zsh-hook -Uz preexec xterm_title_preexec
fi


setopt append_history          # append to history file
setopt extended_history        # write the history file in the ':start:elapsed;command' format
unsetopt hist_beep             # don't beep when attempting to access a missing history entry
setopt hist_expire_dups_first  # expire a duplicate event first when trimming history
setopt hist_find_no_dups       # don't display a previously found event
setopt hist_ignore_all_dups    # delete an old recorded event if a new event is a duplicate
setopt hist_ignore_dups        # don't record an event that was just recorded again
setopt hist_ignore_space       # don't record an event starting with a space
setopt hist_no_store           # don't store history commands
setopt hist_reduce_blanks      # remove superfluous blanks from each command line being added to the history list
setopt hist_save_no_dups       # don't write a duplicate event to the history file
setopt hist_verify             # don't execute immediately upon history expansion
setopt inc_append_history      # write to the history file immediately, not when the shell exits
unsetopt share_history         # don't share history between all sessions

# ============================== #

#===========#
#  Aliases  #
#===========#

alias r='ranger'
alias g='cd $GIT'
alias p='cd $GIT/personal'
alias t='thunar &'
alias get_idf='. $HOME/Documents/ESP/esp-idf/export.sh'
alias sudo='nocorrect sudo -E '
alias vim='nvim'
alias ls='eza -l --git --hyperlink --icons'
alias quitx='killall Xorg'
alias flesh='sudo sshfs -o allow_other alcestide@192.168.1.230:/mnt /mnt/sshfs'
alias rwp='~/Documents/Scripts/random_wal.sh'
alias disks='sudo fdisk -l'
alias vpn='cd /home/alcestide/Documents && ./fortinet_asl.sh'

# ============================== #

if [ -t 0 ] && [[ -z $TMUX ]] && [[ $- = *i* ]]; then exec tmux; fi

function clear-screen-and-scrollback() {
  builtin echoti civis >"$TTY"
  builtin print -rn -- $'\e[H\e[2J' >"$TTY"
  builtin zle .reset-prompt
  builtin zle -R
  builtin print -rn -- $'\e[3J' >"$TTY"
  builtin echoti cnorm >"$TTY"
}

zle -N clear-screen-and-scrollback
bindkey '^L' clear-screen-and-scrollback
bindkey "^w" forward-word
bindkey "^b" backward-word
bindkey "^a" beginning-of-line
bindkey "^e" end-of-line
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

eval "$(zoxide init zsh)"
autoload -U compinit && compinit
