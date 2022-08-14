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

Worth installing a nerd font at this stage. Otherwise the starship config will look like missingno. Droid Sans Mono is the go to.

```
mkdir -p ~/.local/share/fonts

cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete Mono.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono.otf
```

Now we need to install Vim-Plug to manage neovim plugins. (Look into auto install?)
`sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`

Now we can go through setting up our nvim config, should just be able to copy across.

Finally setup colourschemes for *aesthetics*.
Current: `duskfox`

TODO:
- Better looking tmux
- Move init.vim to lua
- BUILD file autocomplete/format
