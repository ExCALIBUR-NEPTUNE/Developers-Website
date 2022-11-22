PROGRAM homepage
    CHARACTER(len=80) :: a,b,k
    
    INTEGER :: i,max_lines,j
    
    CALL execute_command_line('find . -type f -name "*.html" >> list.txt' )
    CALL execute_command_line('wc -l list.txt >> num.txt' )
    OPEN(unit=55,file='num.txt') 
	READ(55,*) max_lines
	close(55)
	
		open(unit=55,file='list.txt') 
	WRITE(6,*) '<link rel="stylesheet" type="text/css" href="sans-serif-lwarp-sagebrush.css" />'
	WRITE(6,*) '<div class="bodyandsidetoc2">'
	WRITE(6,*) '<div class="wrap-collabsible">'
	WRITE(6,*) '<input id="collapsible" class="toggle" type="checkbox" style="opacity:0;">'
	WRITE(6,*) '<label for="collapsible" class="lbl-toggle"><p class="text">Menu</p></label>'
	WRITE(6,*) '<div class="collapsible-content">'
	WRITE(6,*) '<div class="content-inner">'
	WRITE(6,*) '<div class="sidetoccontainer2">'
	WRITE(6,*) '<nav class="sidetoc2">'
	WRITE(6,*) '<div class="sidetoccontents2">'
    DO i=1,max_lines
		READ(55,'(A80)') a
		IF(i > 1) then
		b=TRIM(a(3:))
		j=len(TRIM(b)) - 5
		WRITE(6,*) '<p ><a href="',TRIM(a),'" class="tocchapter">',b(1:j),'</a></p>'
		end if
    END DO
	close(55)
	WRITE(6,*) '</div>'
	WRITE(6,*) '</nav>'
	WRITE(6,*) '</div>'
	WRITE(6,*) '</div>'
	WRITE(6,*) '</div>'
	WRITE(6,*) '</div>'
	
	
	open(unit=55,file='list.txt') 
	WRITE(6,*) '<div class="bodyandsidetoc"><div class="sidetoccontainer">'
	WRITE(6,*) '<nav class="sidetoc">'
	WRITE(6,*) '<div class="sidetoctitle">'
	WRITE(6,*) '<p>'
	WRITE(6,*) '<span class="sidetocthetitle">main</span>'
	WRITE(6,*) '</p>'
	WRITE(6,*) '<p>'
	WRITE(6,*) 'Contents'
	WRITE(6,*) '</p>'
	WRITE(6,*) '</div>'
	WRITE(6,*) '<div class="sidetoccontents">'
    DO i=1,max_lines
		READ(55,'(A80)') a
		IF(i > 1) then
		b=TRIM(a(3:))
		j=len(TRIM(b)) - 5
		WRITE(6,*) '<p ><a href="',TRIM(a),'" class="tocchapter">',b(1:j),'</a></p>'
		end if
    END DO
	close(55)
	WRITE(6,*) '</div>'
	WRITE(6,*) '</nav>'
	WRITE(6,*) '</div>'

END PROGRAM homepage
