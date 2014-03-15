#
# setup the vim bundle manager first 
#

target_dir=~/.vim/bundle/vundle
if [ ! -e "$target_dir" ]
then
  echo
  echo "Install vundle plugin to $target_dir ..."
  echo
  git clone https://github.com/gmarik/vundle.git $target_dir
fi

#
# get our global vim config file 
#

echo 
echo "Generating ~/.vimrc ..."
echo 
cp dot.vimrc ~/.vimrc

echo "Done."

