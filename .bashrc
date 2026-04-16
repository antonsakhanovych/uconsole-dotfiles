# Source everything from ~/.settings
for file in $(find ~/.settings -type f -o -type l); do
    . $file
done

# call starship prompt
eval "$(starship init bash)"
eval "$(fzf --bash)"
eval "$(zoxide init --cmd cd bash)"
