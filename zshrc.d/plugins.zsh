#zinit ice depth=1
#zinit light romkatv/powerlevel10k

# Load starship theme
zinit ice as"command" from"gh-r" \
    atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
    atpull"%atclone" src"init.zsh"
zinit light starship/starship

zinit wait"1" lucid light-mode for \
    from"gh" sbin"doasedit" monesonn/doasedit

# zinit wait"1" lucid from"gh-r" null for \
#    sbin"**/dnote" dnote/dnote \
#    sbin"**/bat" @sharkdp/bat \
#    sbin"**/fd" @sharkdp/fd \
#    sbin"**/lsd -> ls" Peltoche/lsd \
#    sbin"**/rg" BurntSushi/ripgrep \
#    sbin"**/fzf" junegunn/fzf \

zinit wait"1" lucid as"completion" for \
    OMZP::ripgrep/_ripgrep
    # OMZP::dnote/_dnote \

zinit wait lucid light-mode for \
    atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" zdharma-continuum/fast-syntax-highlighting \
    blockf zsh-users/zsh-completions \
    atload"!_zsh_autosuggest_start" zsh-users/zsh-autosuggestions \
    anatolykopyl/doas-zsh-plugin \
    hlissner/zsh-autopair \
    zdharma-continuum/history-search-multi-word \
    djui/alias-tips \
    peterhurford/up.zsh \
    OMZL::key-bindings.zsh \
    OMZL::completion.zsh \
    OMZL::correction.zsh \
    OMZL::compfix.zsh \
    OMZP::extract \

eval "$(zoxide init zsh)"

