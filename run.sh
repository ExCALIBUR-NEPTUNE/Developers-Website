#!/bin/bash
set -x
if [ -d "./$1/" ] 
then
  #Determine if hash has changed for branch
  git rev-parse remotes/origin/$1 >> hash1.txt
  diff hash1.txt ./$1/hash.txt > /dev/null 2>&1
  error=$? 
  #If different check whether timestamp for documentation folder
  #in changed branch is more recent to one in Github pages folder
  if [ $error -eq 1 ]
  then 
  #Compile new documentation if needed
  rm index.html
  sudo add-apt-repository universe
  sudo add-apt-repository multiverse
  sudo add-apt-repository restricted
  sudo apt update
  sudo apt install -y perl texlive-latex-base
  sudo apt install -y texlive-bibtex-extra texlive-lang-japanese texlive-latex-extra texlive-latex-recommended gfortran
  sudo apt install -y biber cups inetutils-inetd update-inetd smbclient fonts-noto fonts-freefont-otf 
  sudo apt update
  sudo apt install -y latexmk inetutils-inetd
  sudo apt update
  rm -rf ./$1/
  mkdir $1
  git --work-tree=./$1/ checkout remotes/origin/$1 -- ./
  cd ./$1
  bash buildwebsite-githubpage.sh
  git rev-parse remotes/origin/$1 >> hash.txt
  cd ..
  gfortran homepage.f90
  ./a.out >> index.html
  rm a.out list.txt num.txt
  fi
  rm hash1.txt
else
  #Compile new documentation 
  rm index.html
  #sudo apt install -y biber latexmk texlive-bibtex-extra texlive-lang-japanese texlive-latex-extra texlive-latex-recommended gfortran
  sudo add-apt-repository universe
  sudo add-apt-repository multiverse
  sudo add-apt-repository restricted
  sudo apt update
  sudo apt install -y perl texlive-latex-base
  sudo apt install -y texlive-bibtex-extra texlive-lang-japanese texlive-latex-extra texlive-latex-recommended gfortran
  sudo apt install -y biber cups inetutils-inetd update-inetd smbclient fonts-noto fonts-freefont-otf 
  sudo apt update
  sudo apt install -y latexmk inetutils-inetd
  sudo apt update
  mkdir $1
  git --work-tree=./$1/ checkout remotes/origin/$1 -- ./
  cd ./$1
  bash buildwebsite-githubpage.sh
  git rev-parse remotes/origin/$1 >> hash.txt
  cd ..
  gfortran homepage.f90
  ./a.out >> index.html
  rm a.out list.txt num.txt
fi
