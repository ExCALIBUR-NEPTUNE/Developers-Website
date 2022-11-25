#!/bin/bash
#Determine if hash has changed for branch
git rev-parse remotes/origin/$1 >> hash1.txt
diff hash1.txt ./$1/hash.txt > /dev/null 2>&1
error=$? 
#If different check whether timestamp for documentation folder
#in changed branch is more recent to one in Github pages folder
if [ $error -eq 1 ]
then
num1=$(git log -1 --pretty="format:%ct" ./main)
num2=$(git log Github-Pages..remotes/origin/$1 -1 --pretty="format:%ct" ./main)
if (( $num2 > $num1 ))
then 
#Compile new documentation if needed
rm index.html
sudo apt install -y biber latexmk texlive-bibtex-extra texlive-lang-japanese texlive-latex-extra texlive-latex-recommended gfortran
rm -rf ./$1/
git checkout remotes/origin/$1 -- main
cd ./$1
bash buildwebsite-githubpage.sh
rm hash.txt
git rev-parse remotes/origin/$1 >> hash.txt
cd ..
gfortran homepage.f90
./a.out >> index.html
rm a.out list.txt num.txt
fi
fi
rm hash1.txt
