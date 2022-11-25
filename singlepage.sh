#Produces pdf version of website contents, alongside lwarp files needed
#to create the website for a single .tex file
#Compiles website using lwarp package
function singlepage() {
  rm -rf public
  mkdir -p public
  
  for i in PN BD RB TS DJF DDF MGT MF OP proxyapps REF IND bib png pics corpics Animations
  do cp -r "$(pwd)/$i" ./public/
  done
  mv ./mainbody.tex ./mainbody_backup.tex
  echo $1 > mainbody.tex
  cp {*.tex,*.css,*.txt} public/
  cd ./public
  pdflatex  main.tex
  biber main.bcf
  pdflatex main.tex
  pdflatex main.tex
  lwarpmk html
  cd ..
  rm mainbody.tex
  mv ./mainbody_backup.tex ./mainbody.tex
}

singlepage $1
