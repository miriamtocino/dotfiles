dotfiles
===================

**rcm**

Run rcm (this command expects that you cloned your dotfiles to `~/dotfiles/`)
```
$ env RCRC=$HOME/dotfiles/rcrc rcup
```
RCM creates dotfile symlinks (`.vimrc` -> `/dotfiles/vimrc`) from your home directory to your `/dotfiles/` directory.

**plugins**

Plugins are listed in `vimrc.bundles`.

To install them vundle is necessary. Installation directions are here: https://github.com/gmarik/Vundle.vim.
Once vundle is installed. Open vim (`$ vim`) and type `:BundleInstall`. And then restart vim. You'll need to do this for all the plugins to work.

**iterm2**  

Some themes are available for iterm2 inside this repository. Take a look at the `iterm2` directory.

**Oh-My-ZSH!**  

I use Oh-My-ZSH instead of Bash. Info & installation instructions here: https://github.com/robbyrussell/oh-my-zsh

---
These are a modified version of Thoughtbot's and Mike Coutermarsh's dotfiles. More detailed instructions are available here: http://github.com/thoughtbot/dotfiles and https://github.com/mscoutermarsh/dotfiles.
