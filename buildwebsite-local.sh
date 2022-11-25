#Produces pdf version of website contents, alongside lwarp files needed
#to create the website
#Compiles website using lwarp package
function buildwebsite() {
  rm -rf public
  mkdir -p public
  
  for i in PN BD RB TS DJF DDF MGT MF OP proxyapps REF IND bib png pics corpics Animations
  do cp -r "$(pwd)/$i" ./public/
  done
  
  cp {*.tex,*.css,*.txt} public/
  cd ./public
  pdflatex  main.tex
  biber main.bcf
  pdflatex main.tex
  pdflatex main.tex
  if [ "$1" != "PDF" ]
  then
  lwarpmk html
  rm main_html.html    
  #Add in download link for pdf version of webpage
  sed -i -e '/<div class="center">/r link.txt' main.html
  #Remove first occrance of /<div class="center">  in mainpage
  sed -i -e '0,/<div class="center">/{s// /}' main.html
  #Locate and create drop down menu for website
  test=$(grep -r -n 'bodyandsidetoc' ./Engineering-Requirements-Baseline.html | cut -f1 -d:)
  test2=$(grep -r -n 'bodycontainer' ./Engineering-Requirements-Baseline.html | cut -f1 -d:)
  test3=$( expr $test2 - 3)
  test4=$( expr $test + 1)
  sed -n "${test4},${test3}p" Engineering-Requirements-Baseline.html >> sidebar.txt
  cat menustart.txt sidebar.txt menuend.txt > sidebar2.txt
  test=$(grep -r -n '<div class="sidetoctitle">' sidebar2.txt | cut -f1 -d:)
  test2=$( expr $test + 9)
  sed -i -e "$test,$test2 d" sidebar2.txt
  sed -i -e 's/bodyandsidetoc/bodyandsidetoc2/g' sidebar2.txt
  sed -i -e 's/sidetoccontents/sidetoccontents2/g' sidebar2.txt
  sed -i -e 's/sidetoccontainer/sidetoccontainer2/g' sidebar2.txt
  sed -i -e 's/sidetoc"/sidetoc2"/g' sidebar2.txt
  sed -i -e 's/<p>/<p class="text">/g' sidebar2.txt
  #Insert drop down menu onto mainpage
  sed -i -e '/<div class="bodywithoutsidetoc">/r sidebar.txt' main.html
  sed -i -e '$d' sidebar2.txt
  sed -i -e '/<div class="bodyandsidetoc">/r sidebar2.txt' *.html
  sed -i -e '0,/bodyandsidetoc/{s//bodyandsidetoc2/}' *.html
  sed -i -e 's/<div class="sidetoccontainer">/<div class="bodyandsidetoc"><div class="sidetoccontainer">/g' *.html
  sed -i -e '/<div class="bodywithoutsidetoc">/r sidebar2.txt' main.html
  sed -i -e 's/bodywithoutsidetoc/bodyandsidetoc2/g' main.html
  #Delete line due to mainpage now containing menu
  #Change drop down menu header to Neptune for homepage
  sed -i "s,Menu,Neptune,g" main.html
  #Remove homepage navigation bar
  mv main.html ../
  for file in *.html; do test=$(grep -r -n 'topnavigation' ${file} | cut -f1 -d:); test2=$( expr $test + 1); sed -i -e "${test},${test2} d" ${file}; done
  for file in *.html; do test=$(grep -r -n 'botnavigation' ${file} | cut -f1 -d:); test2=$( expr $test + 1); sed -i -e "${test},${test2} d" ${file}; done 
  mv ../main.html ./
  #Bring back homepage
  #Delete second download link which was created
  test=$(grep -r -n 'Download' ./main.html  | tail -n 1 | cut -f1 -d:)
  test2=$( expr $test - 1)
  sed -i -e "$test,$test2 d" main.html
  #Remove headers and place title inside drop down menu
  for file in *.html; do file2="${file/-/ }";file3="${file2/-/ }" ; sed -i "s,<h1>main</h1>, ,g" ${file}; done
  for file in *.html; do file2="${file/-/ }";file3="${file2/-/ }" ; file4="${file3/-/ }" ; file5="${file4/-/ }" ; file6="${file5/-/ }" ; sed -i "s,Menu,${file6::-5},g" ${file}; done
  #Remove table of contents needed by lwarp for homepage
  test4=$(grep -r -n '<h3 id' ./main.html | cut -f1 -d:)
  test5=$(grep -r -n '</nav>' ./main.html | tail -n 1 | cut -f1 -d:)
  sed -i -e "$test4,$test5 d" main.html
  #Make homepage for github pages
  cp main.html index.html
  #Rename reference webpage header
  sed -i -e 's/Index 0/Index/g' Index-0.html
  #Insert video html
  sed -i -e '/videoinsert/r videos.txt' Videos.html
  sed -i -e 's/videoinsert//g' Videos.html
  #Resize images on webpages
  sed -i -e 's/304/500/g' Software-Engineering-Response.html
  sed -i -e 's/412/800/g' Technical-Specification.html
  sed -i -e 's/304/500/g' Technical-Specification.html
  sed -i -e '0,/304/{s//600/}' Objects-classes.html
  sed -i -e 's/304/800/g' Objects-classes.html
  fi
}

buildwebsite $1
