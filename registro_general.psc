Algoritmo registro_general
	//Registro de N jugadores. Almacenar cedula, nom completo, fecha nacimiento, un correo electronico y lema alusivo al ODS.
	//No se pueden repetir las cedulas
	//NOTA: RECORDAR ALMACERNAR TODO ESTO EN ARCHIVOS UNA VEZ QUE SE PASE A C (EL ARCHIVO PUEDE LLAMARSE "Jugadores")
	definir i, j, k,ods,od, odsescogido como entero
	definir ced, nom,fecha,email,evafecha como cadena
	definir dma como entero //dia mes año
	definir verifyfecha,verifycedula Como Logico
	definir lemasods,lemaods como caracter
	dimensionar lemasods[17]

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
		
		escribir sin saltar 'Ingrese el nombre completo del jugador: '
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
		
		escribir 'Ingrese un correo electronico vinculado al jugador: '
		leer email[i]
		
		escribir 'Ingrese un lema alusivo a los ODS: '
		loslemas(lemasods,odsescogido)
		escribir 'Usted ha escogido el lema: ',lemasods[odsescogido]
		lemaods[i]=lemasods[odsescogido]
	FinPara
	
	
FinAlgoritmo

SubProceso loslemas(lemasods,odsescogido Por Referencia)
	lemasods[1]='1. -Fin de la Pobreza-'
	lemasods[2]='2. -Hambre cero-'
	lemasods[3]='3.-Salud y bienestar-'
	lemasods[4]='4. -Educacion de calidad-'
	lemasods[5]='5. -Igualdad de genero-'
	lemasods[6]='6. -Agua limpia y saneamiento-'
	lemasods[7]='7. -Energia asequible y no contaminante-'
	lemasods[8]='8. -Trabajo decente y crecimiento economico-'
	lemasods[9]='9. -Industria, innovacion e infraestructura-'
	lemasods[10]='10. -Reduccion de las desigualdades-'
	lemasods[11]='11. -Ciudades y comunidades sostenibles-'
	lemasods[12]='12. -Produccion y consumo responsables-'
	lemasods[13]='13. -Accion por el clima-'
	lemasods[14]='14. -Vida submarina-'
	lemasods[15]='15. -Vida de ecosistemas terrestres-'
	lemasods[16]='16. -Paz, justicia e instituciones solidas-'
	lemasods[17]='17. -Alianzas para lograr los objetivos-'
	Repetir
		escribir ''
		escribir '--------------------------------------'
		para od=1 hasta 17 con paso 1 Hacer
			escribir lemasods[od]
		FinPara
		escribir '--------------------------------------'
		escribir sin saltar 'Escoja un lema alusivo a los ODS (Ingrese numero del 1 al 17): '
		leer odsescogido
		si odsescogido>17 o odsescogido<1 Entonces
			escribir ''
			Escribir 'Fuera del Rango. Escoja de nuevo'
			escribir ''
		FinSi
	Hasta Que odsescogido>=1 y odsescogido<=17
	
FinSubProceso
