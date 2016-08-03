# store all solarized files in one place
mkdir ~/.solarized
cd ~/.solarized

# http://www.webupd8.org/2011/04/solarized-must-have-color-paletter-for.html
git clone https://github.com/seebi/dircolors-solarized.git
eval `dircolors ~/.solarized/dircolors-solarized/dircolors.256dark`
ln -s ~/.solarized/dircolors-solarized/dircolors.256dark ~/.dir_colors

git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git
./gnome-terminal-colors-solarized/install.sh
rm -rf ./gnome-terminal-colors/solarized

# http://twoism.posterous.com/vim-janus-and-solarized-on-ubuntu-done-right
# git clone https://github.com/altercation/vim-colors-solarized.git

echo "
set term=screen-256color-bce
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme default " >> ~/.dotfiles/.vim/.vimrc
