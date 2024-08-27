source .config/zsh/.zshenv

cp .config/zsh/.zshenv $HOME

# Environment Variables
source $DOTFILES/.env

# defined in .config/zsh/.zshenv
for dir in $ALIASES $FUNCTIONS $MODULES; do
    for file in "$dir"/.*.sh; do
        [ -f "$file" ] && source "$file"
    done
done

./detect-os.sh