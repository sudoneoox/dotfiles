if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Created by `pipx` on 2024-01-20 00:28:35
set PATH $PATH /home/diego/.local/bin

alias publicip='wget http://checkip.dyndns.org/ -O - -o /dev/null | cut -d: -f 2 | cut -d\< -f 1'
alias sync='rslsync && kitty sh -c "firefox http://localhost:8888"'
alias syncdrive='grive -s ~/Desktop/GoodNotes'
alias vncstart='x11vnc -display :0 -rfbauth ~/.vnc/passwd'
alias diffs='diff --side-by-side --suppress-common-lines'
alias clip='kitten clipboard'



# >>> mamba initialize >>>
# !! Contents within this block are managed by 'micromamba shell init' !!
set -gx MAMBA_EXE "/home/diego/.local/bin/micromamba"
set -gx MAMBA_ROOT_PREFIX "/home/diego/micromamba"
$MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<
alias mamba='micromamba'
alias screenfix='xrandr --output HDMI-0 --auto --output DP-5 --auto --left-of HDMI-0'
