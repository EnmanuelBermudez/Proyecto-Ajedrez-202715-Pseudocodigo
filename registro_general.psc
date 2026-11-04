Algoritmo registro_general
	//Registro de N jugadores. Almacenar cedula, nom completo, fecha nacimiento, un correo electronico y lema alusivo al ODS.
	//No se pueden repetir las cedulas
	//NOTA: RECORDAR ALMACERNAR TODO ESTO EN ARCHIVOS UNA VEZ QUE SE PASE A C (EL ARCHIVO PUEDE LLAMARSE "Jugadores")
	definir i, j, k como entero
	definir ced, nom,fecha,email,lemaods,evafecha como cadena
	definir dma como entero //dia mes año
	definir verifyfecha,verifycedula Como Logico

	escribir sin saltar 'Ingrese la cantidad de Jugadores del evento: '
	leer N
	
	evafecha=''
	dimensionar fecha[N]
	dimensionar ced[N]   
	dimensionar nom[N]
	dimensionar email[N]
	dimensionar lemaods[N]
	
	dimensionar dma[3]
	
	dma[1]=1
	dma[2]=1
	dma[3]=1
	evafecha=''
	
	para i=1 hasta N con paso 1 Hacer
		escribir ' '
		escribir ' -------------------------------------------------------------- '
		escribir ' '
		verifycedula=falso
		mientras verifycedula=Falso Hacer
			escribir sin saltar 'Ingrese la cedula del jugador ','(',i,' de ',N,'): '
			leer ced[i]
			verifycedula=Verdadero
			para k=1 hasta i-1 con paso 1 Hacer
				si ced[i]=ced[k] Entonces
					verifycedula=Falso
				FinSi
			FinPara
			si verifycedula=falso Entonces
				escribir ''
				escribir '-Cedula descartada porque ya se encuentra registrada. Por favor, ingrese una nueva-'
				escribir ''
			FinSi
		FinMientras
		
		escribir sin saltar 'Ingrese el nombre completo del jugador ','(',i,' de ',N,'): '
		leer nom[i]
		
		escribir ''
		escribir 'A continuacion, ingrese la fecha de nacimiento (Dia-(1-31),Meses-(1-12),año-(Cualquiera)): '
		escribir ''
		
		verifyfecha=Falso
		mientras verifyfecha = Falso Hacer
			escribir sin saltar 'Ingrese dia de nacimiento: '
			leer dma[1]
			escribir sin saltar 'Ingrese mes de nacimiento: '
			leer dma[2]
			escribir sin saltar 'Ingrese año de nacimiento: '
			leer dma[3]
			si dma[1]<=31 y dma[2]<=12 entonces
				para j=1 hasta 3 con paso 1 Hacer
					evafecha=evafecha+ConvertirATexto(dma[j])
					si j<>3 Entonces
						evafecha=evafecha+'/'
					FinSi
				FinPara
				fecha[i]=evafecha
				verifyfecha=Verdadero
			SiNo
				escribir ''
				escribir '-Formato de fecha invalida. Introdujo fechas no existentes. Intente otra vez- '
				escribir ''
			FinSi
			dma[1]=1
			dma[2]=1
			dma[3]=1
			evafecha=''
		FinMientras
		
		escribir 'Ingrese un correo electronico vinculado al jugador ','(',i,' de ',N,'): '
		leer email[i]
		
		escribir 'Ingrese un lema alusivo a los ODS ','(',i,' de ',N,'): '
		leer lemaods[i]
	FinPara
	
FinAlgoritmo
