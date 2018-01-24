# Dot Files

This is a small collection of my dotfiles, to help me keep them consistent across machines.

If they are a bit of a mess, it's because I work across MacOS, Windows, Linux and FreeBSD. Putting it on GitHub is my first step towards making things a bit more automated and consistent. 

Useful sources I have used for inspiration include:

- https://github.com/jessfraz/dotfiles
- https://dougblack.io/words/a-good-vimrc.html
- https://superuser.com/questions/596183/how-can-i-change-my-linux-terminals-appearance-when-i-ssh-in-to-a-remote-mach


## Installation

No fancy installation as yet.  Just copy things to the right places.  Ideally with symlinks so it is easy to update.

```
ln -sf ~/projects/dotfiles/.bashrc ~ 
ln -sf ~/projects/dotfiles/.vimrc ~
mkdir ~/.vim/colors/
ln -sf ~/projects/dotfiles/solarized.vim ~/.vim/colors
```

Or whatever equivalent is most relevant for your OS.

