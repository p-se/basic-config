for f in $( \
    find ~ \
        -maxdepth 1 \
        -type f \
        -name '.*_aliases' \
        ! -name '.bash_aliases' \
        ! -name '.zsh_aliases'
    ) ; do
    source $f;
done
