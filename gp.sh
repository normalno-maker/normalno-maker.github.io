#!/bin/bash
DT=$(date +"%Y-%m-%d-%H-%M-%S")
PN=~/normalno-maker.github.io/_posts/$DT.markdown
cp $1 ~/normalno-maker.github.io/assets/img/$DT.${1##*.}
touch $PN
echo '---' >> $PN
echo 'layout: post' >> $PN
echo 'title: ' >> $PN
echo $(date +"date: %Y-%m-%d %H:%M:%S %z") >> $PN
echo 'img: '$DT.${1##*.} >> $PN
echo 'tags: []' >> $PN
echo '---' >> $PN
nano $PN
cd ~/normalno-maker.github.io/
git add .
git commit -m 'automatic post from script' 
git push

