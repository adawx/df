# df
Just trying to complete my terminal development experience

Probably missing a bunch of stuff, but will tidy up later, once more lsp/lua stuff is done

Homebrew, ohmyzsh, iterm2, neovim, tmux, starship, git config, lazygit
Note: for Linux wezterm config is included

`brew install nvm fzf neovim ripgrep rust rust-analyzer jesseduffield/lazygit/lazygit go gopls`
`ncspot`

`:LspInstall` to install language servers, current installed servers `rust-analyzer, gopls, tsserver, tailwindcss`
`:TSUpdate` for treesitter
`:TSInstall <lang>` for treesitter language installs

Requires Vim-Plug
`sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`

Swapping to Lazy - Ongoing
Requires luarocks `brew install luarocks`

Requires TPM
`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

## Setup Guide 

This was taken as part of setting up fedora on a desktop, so may vary slightly.

If not on mac or zsh by default then install zsh, e.g.:
```
sudo dnf install zsh
chsh -s $(which zsh)
```

Then install oh-my-zsh: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
At this point we can go about installing a bunch of the above software before customising zsh. Importantly if its a new dev environment then languague/dev specific tool also need installing.

Below are important ones
- Homebrew
- nvm
- Ghostty
`fzf ripgrep neovim tmux rust cargo`

`sudo npm install -g nvm`

Update `.tmux.conf` in home directory to remap tmux keybinds
Update `.gitconfig` in home directory for alias, etc.
Also terminal specific config e.g. `.wezterm.lua`

Install lua formatter through cargo crates
`cargo install stylua`

Install Starship & lazygit here.
Copy across .zshrc and .zshenv
Copy across starship and stylua config

Worth installing a nerd font at this stage. Otherwise the starship config will look like missingno. Droid Sans Mono is the go to. Think ghostty has one built in. Make sure ghostty config is working here.

```
mkdir -p ~/.local/share/fonts

cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete Mono.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono.otf
```

Copy neovim config. Lazy.nvim should take care of setup/install. Might need to disable `core` import in `init.lua` to get lazy.nvim to work on first run.

Finally setup colourschemes for *aesthetics*.
Current: `spaceduck`

TODO:
- BUILD file autocomplete/format
- Update to include C formatting & include Clang tools in install process
- auto copy config 
