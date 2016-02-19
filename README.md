dotfiles
===================
Here's what my setup looks like at the moment with Vim/Tmux:

![screenshot](https://github.com/miriamtocino/dotfiles/blob/master/screenshot.png?raw=true)

### New to Vim? Tmux?
[Upcase: The Art of Vim.](https://upcase.com/vim)

[Upcase: Tmux.](https://upcase.com/tmux)

### Clone repo

First move your dotfiles (look for the files that you see under this repo and that you already have under your root folder) to a folder where you can find it later, so you can always go back to your previous configuration (just in case).

Clone this repo to your **home** directory (`/Users/username`).
```
$ cd ~
$ git clone https://github.com/miriamtocino/dotfiles.git
```

### Clean up git data

Remove the `.git` folder from it and the `.gitignore` and `.gitconfig` files (they belong to my repo ;-) ).

```
$ rm -rf .git/
$ rm .gitignore
$ rm .gitconfig
```

### Zshrc & Oh-My-ZSH!

Mkae sure you update `zshrc` with yout username. Look for `miriamtocino` and replace it ;-)

I use Oh-My-ZSH instead of Bash. Info & installation instructions here: https://github.com/robbyrussell/oh-my-zsh.

### Git Config

Make sure you update `gitconfig` with your own name and email address. Otherwise you'll be committing as me.

### Create symlinks

Install rcm:

```
$ brew tap thoughtbot/formulae
$ brew install rcm
```

Run rcm (this command expects that you cloned your dotfiles to `~/dotfiles/`)

```
$ env RCRC=$HOME/dotfiles/rcrc rcup
```

RCM creates dotfile symlinks (`.vimrc` -> `/dotfiles/vimrc`) from your home directory to your `/dotfiles/` directory.

### Installing Plugins

Plugins are listed in `vimrc.bundles`.

To install them you'll need vundle. Installation directions are here: https://github.com/gmarik/Vundle.vim.
Once vundle is installed. Open vim (`$ vim`) and type `:BundleInstall`. And then restart vim. You'll need to do this for all the plugins to work.

### Custom Fonts

You'll need to use a custom font for Airline to look nice. (Seeing weird symbols? This is why!). See here: https://github.com/Lokaltog/powerline-fonts.
I use **18pt Incosolata for Powerline**. Once installed, go into iterm2 and Profiles > Text. Change both fonts.

### iterm2

Use iterm2 instead of Terminal: http://iterm2.com/. There are two themes available for iterm2 inside this repository. Both solarized dark and light (to match vim!). Take a look at the `iterm2` directory.

### tmux

And last but not least, don't forget to install tmux if you haven't yet.

```
$ brew install tmux
$ brew install reattach-to-user-namespace
```

### About colors

Problems getting the right colors in iterm? Try going through the solutions proposed [here](http://stackoverflow.com/questions/7278267/incorrect-colors-with-vim-in-iterm2-using-solarized).

---

These dotfiles are a modified version of [Thoughtbot's](http://github.com/thoughtbot/dotfiles) and [Mike Coutermarsh's dotfiles](https://github.com/mscoutermarsh/dotfiles). You can check those repositories for further reference ;-)
