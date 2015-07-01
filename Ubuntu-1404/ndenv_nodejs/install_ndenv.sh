#!/bin/bash
set -e

# use ndenv to freeze nodejs version
rm -rf $HOME/.ndenv
git clone https://github.com/riywo/ndenv $HOME/.ndenv

#freeze version
cd $HOME/.ndenv && git checkout c669ff2
echo 'export PATH="$HOME/.ndenv/bin:$HOME/.ndenv/shims:$HOME/.local/bin:$PATH"' >> $HOME/.bashrc
echo 'eval "$(ndenv init -)"' >> $HOME/.bashrc

export PATH="$HOME/.ndenv/bin:$HOME/.ndenv/shims:$HOME/.local/bin:$PATH"

git clone https://github.com/riywo/node-build.git $HOME/.ndenv/plugins/node-build
#version lock
cd $HOME/.ndenv/plugins/node-build && git checkout 1c6a35e

echo 'export PATH="$HOME/.local/bin:$PATH"' >> $HOME/.bashrc
export PATH="$HOME/.local/bin:$PATH"

rm -rf $HOME/.local/lib/node_modules
echo "prefix = ~/.local
root = ~/.local/lib/node_modules
binroot = ~/.local/bin
manroot = ~/.local/share/man" | tee $HOME/.npmrc

rm -rf $HOME/.local/bin/karma
mkdir -p $HOME/.local/bin/
ln -s $HOME/.local/lib/node_modules/karma/bin/karma $HOME/.local/bin/karma

#List available NodeJS/IO.js versions
#ndenv install -l

#install specific version locally
#ndenv install v0.12.5 && ndenv local v0.12.5 && ndenv rehash

#read more here https://github.com/riywo/ndenv and here https://github.com/sstephenson/rbenv (rbenv has better documentaion)
#https://mysite.cegeka.com/personal/andreip/Blog/Lists/Posts/Post.aspx?ID=11
