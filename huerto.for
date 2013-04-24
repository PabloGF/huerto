        real*8 P
        integer*4 huertos,nos,gent,i,j,sorteo
	character pal
!---------------------------------------------------------------------        
	nos=3

	write(6,*) 'Cuanta gente hay?'
	read(5,*) gent
	write(6,*) 'Numero de huertos?'
	read(5,*) huertos
!---------------------------------------------------------------------	
		
	sorteo=1
	do i=huertos,1,-1
	
	
	numerador=(huertos)*(nos)*(nos-1)*(gent-huertos)*(gent-huertos-1)
	denominador=((gent)*(gent-1)*(gent-2)*2)
	P=numerador/denominador
	P=P*100

	gent=gent-1

	write(6,*) '*********************************'
	write(6,*) 'sorteo numero :',sorteo	
	write(6,*) 'Aun quedan un ',P,'%'
	write(6,*) '*********************************'
	write(6,*) 'continuar? (cualquier letra)'
	read(5,*) pal


	sorteo=sorteo+1
	huertos=huertos-1

	
	enddo


	
	end