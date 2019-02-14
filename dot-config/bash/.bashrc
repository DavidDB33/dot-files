cut_branch() {
    read data
    if (( ${#data} > 15 )); then
        data="${data:0:15}...)"
    fi
    echo $data
}

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' | cut_branch
}

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}:\[\033[33m\]$(parse_git_branch)\[\033[00m\]\w$ '
else
    PS1='${debian_chroot:+($debian_chroot)}:$(parse_git_branch)\w$ '
fi

