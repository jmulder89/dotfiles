# Run additional user specific scripts from ~/.profile.d/*.sh
if [ -d "$HOME/.profile.d" ]; then
    for i in "$HOME/.profile.d/"*.sh; do
        if [ -r "$i" ]; then
          . "$i"
        fi
    done
    unset i
fi
