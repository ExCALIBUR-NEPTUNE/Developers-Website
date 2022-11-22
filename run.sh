#!/bin/bash
#Determine if hash has changed for branch
git rev-parse remotes/origin/main >> hash1.txt
diff hash1.txt ./main/hash.txt > /dev/null 2>&1
error=$? 
#If different check whether timestamp for documentation folder
#in changed branch is more recent to one in Github pages folder
if [ $error -eq 1 ]
then
num1=$(git log -1 --pretty="format:%ct" ./main)
num2=$(git log Deployment..remotes/origin/main -1 --pretty="format:%ct" ./main)
if (( $num2 > $num1 ))
then 
#Compile new documentation if needed
rm index.html
sudo apt install -y biber latexmk texlive-bibtex-extra texlive-lang-japanese texlive-latex-extra texlive-latex-recommended gfortran
rm -rf ./main/
git checkout remotes/origin/main -- main
cd ./main
bash buildwebsite-githubpage.sh
rm hash.txt
git rev-parse remotes/origin/main >> hash.txt
cd ..
gfortran homepage.f90
./a.out >> index.html
rm a.out hash1.txt hash2.txt list.txt num.txt
fi
fi
