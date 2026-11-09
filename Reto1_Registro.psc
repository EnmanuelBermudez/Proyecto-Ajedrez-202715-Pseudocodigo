//{===================} {Funciones Auxiliares} {===================}

SubProceso pos = Buscar(cad, subcad)
	Definir i como Entero
	i = 1
	pos = 0
	verificacion = 0
	
	Mientras ((i <= Longitud(cad) - Longitud(subcad) + 1) y (verificacion = 0))
		Si (Subcadena(cad, i, i + Longitud(subcad) - 1) = subcad)
			pos = i
			verificacion = 1
		FinSi
		i = i + 1
	FinMientras
FinSubProceso

//{===================} {Procesamiento de los lemas de los ODS} {===================}

SubProceso RegistrarLemas(list_lemas Por Referencia, lema_ods)
	CargarLemas(list_lemas)
	Repetir
		Escribir("")
		Escribir("[-----------] [ LEMAS ALUSIVOS A LA O.D.S. ] [-----------]")
		Para i = 1 hasta 17 con paso 1 Hacer
			Escribir(list_lemas[i])
		FinPara
		Escribir("[--------------------------------------------------------]")
		Escribir sin saltar("Escoja un lema alusivo a los O.D.S. [Ingresando su numero correspondiente.]:" )
		Leer ods_escogido
		
		Si ((ods_escogido > 17) o (ods_escogido < 1)) Entonces
			Escribir("")
			Escribir("[ERROR]: Numero invalido. Intente nuevamente." )
			Escribir("")
		Sino
			lema_ods = list_lemas[ods_escogido]
		FinSi
	Hasta Que ((ods_escogido >= 1) y (ods_escogido <= 17))
FinSubProceso

SubProceso CargarLemas(list_lemas Por Referencia)
	list_lemas[1] = "1) -Fin de la Pobreza-"
	list_lemas[2] = "2) -Hambre cero-"
	list_lemas[3] = "3) -Salud y bienestar-"
	list_lemas[4] = "4) -Educacion de calidad-"
	list_lemas[5] = "5) -Igualdad de genero-"
	list_lemas[6] = "6) -Agua limpia y saneamiento-"
	list_lemas[7] = "7) -Energia asequible y no contaminante-"
	list_lemas[8] = "8) -Trabajo decente y crecimiento economico-"
	list_lemas[9] = "9) -Industria, innovacion e infraestructura-"
	list_lemas[10] = "10) -Reduccion de las desigualdades-"
	list_lemas[11] = "11) -Ciudades y comunidades sostenibles-"
	list_lemas[12] = "12) -Produccion y consumo responsables-"
	list_lemas[13] = "13) -Accion por el clima-"
	list_lemas[14] = "14) -Vida submarina-"
	list_lemas[15] = "15) -Vida de ecosistemas terrestres-"
	list_lemas[16] = "16) -Paz, justicia e instituciones solidas-"
	list_lemas[17] = "17) -Alianzas para lograr los objetivos-"
FinSubProceso

//{===================} {Procesamiento de Estados} {===================}
SubProceso RegistrarEstados(nombres_est Por Referencia, siglas_est Por Referencia)
	Definir siglas_list, nombres_list Como Cadena
	Definir cant_est, pos Como Entero
	Dimension siglas_list[25]
	Dimension nombres_list[25]
	
	CargarEstados(siglas_list, nombres_list, cant_est)
	
	Si (cant_est > 0) Entonces
		pos = SeleccionarEstado(siglas_list, nombres_list, cant_est)
		nombres_est = nombres_list[pos]
		siglas_est = siglas_list[pos]
		Escribir("")
		Escribir"[ Estado de procedencia seleccionado: ", siglas_est, " - ", nombres_est, " ]"
	Sino
		Escribir("")
		Escribir("[ERROR]: No se pudieron cargar los estados.")
	FinSi
FinSubProceso

SubProceso CargarEstados(siglas_list por Referencia, nombres_list por Referencia, cant_est por Referencia)
	cant_est = 25
	siglas_list[1] = "AMA"; nombres_list[1] = "Amazonas"
	siglas_list[2] = "ANZ"; nombres_list[2] = "Anzoategui"
	siglas_list[3] = "APU"; nombres_list[3] = "Apure"
	siglas_list[4] = "ARA"; nombres_list[4] = "Aragua"
	siglas_list[5] = "BAR"; nombres_list[5] = "Barinas"
	siglas_list[6] = "BOL"; nombres_list[6] = "Bolivar"
	siglas_list[7] = "CAR"; nombres_list[7] = "Carabobo"
	siglas_list[8] = "COJ"; nombres_list[8] = "Cojedes"
	siglas_list[9] = "DAM" ; nombres_list[9] = "Delta Amacuro"
	siglas_list[10] = "DC"; nombres_list[10] = "Distrito Capital"
	siglas_list[11] = "DF" ; nombres_list[11] = "Dependencias Federales"
	siglas_list[12] = "FAL" ; nombres_list[12] = "Falcon"
	siglas_list[13] = "GUA" ; nombres_list[13] = "Guarico"
	siglas_list[14] = "LAG" ; nombres_list[14] = "La Guaira"
	siglas_list[15] = "LAR" ; nombres_list[15] = "Lara"
	siglas_list[16] = "MER" ; nombres_list[16] = "Merida"
	siglas_list[17] = "MIR" ; nombres_list[17] = "Miranda"
	siglas_list[18] = "MON" ; nombres_list[18] = "Monagas"
	siglas_list[19] = "NE" ; nombres_list[19] = "Nueva Esparta"
	siglas_list[20] = "POR" ; nombres_list[20] = "Portuguesa"
	siglas_list[21] = "SUC" ; nombres_list[21] = "Sucre"
	siglas_list[22] = "TAC" ; nombres_list[22] = "Tachira"
	siglas_list[23] = "TRU" ; nombres_list[23] = "Trujillo"
	siglas_list[24] = "YAR" ; nombres_list[24] = "Yaracuy"
	siglas_list[25] = "ZUL" ; nombres_list[25] = "Zulia"
FinSubProceso

SubProceso MostrarEstados(siglas_list por Referencia, nombres_list por Referencia, cant_est por Referencia)
	Definir i Como Entero
	Escribir "[-----------] [ ESTADOS DE VENEZUELA ] [-----------]"
	Para i = 1 Hasta cant_est Con Paso 1 Hacer
		Escribir i, ") ", siglas_list[i], " - ", nombres_list[i]
	FinPara
FinSubProceso

Funcion opcion = SeleccionarEstado(siglas_list, nombres_list, cant_est)
	Definir opcion Como Entero
	
	MostrarEstados(siglas_list, nombres_list, cant_est)
	
	Repetir
		Escribir sin saltar ("Seleccione el numero de su estado de procedencia: ")
		Leer opcion
		
		Si ((opcion < 1) o (opcion > cant_est)) Entonces
			Escribir"[ERROR]: Opcion invalida. Debe estar entre 1 y ", cant_est, "."
		FinSi
	Hasta Que ((opcion >= 1) Y (opcion <= cant_est))
FinFuncion

//{===================} {Procesamiento de Clave} {===================}
Funcion tipo = ClasificarCaracter(c)
    tipo = 0
    Si (c >= 'A' y c <= 'Z') Entonces // 1. Mayúsculas (A - Z)
        Si (c <> 'Ñ') Entonces // Excluir Ñ
            tipo = 1
        FinSi
    FinSi
    Si (c >= 'a' y c <= 'z') Entonces // 2. Minúsculas (a - z)
        Si (c <> 'ñ') Entonces // Excluir ñ
            tipo = 2
        FinSi
    FinSi
    Si (c >= '0' y c <= '9') Entonces // 3. Números (0 - 9)
        tipo = 3
    FinSi
    Si (c = '*' o c = '.' o c = '-' o c = '_') Entonces // 4. Caracteres Especiales Permitidos
        tipo = 4
    FinSi
FinFuncion

Funcion resultado = ValidarClave(clave, i, terr Por Referencia, tmay Por Referencia, tmin Por Referencia, tnum Por Referencia, tesp Por Referencia, trep Por Referencia)
	Definir c Como Caracter
	Definir tipo Como Entero
    Si (i <= Longitud(clave)) Entonces // Final de la clave sin errores
		c = SubCadena(clave, i, i)
		tipo = ClasificarCaracter(c)
		Segun tipo Hacer
			0: terr = 0
			1: terr = 1 ; tmay = 1
			2: terr = 1 ; tmin = 1
			3: terr = 1 ; tnum = 1
			4: terr = 1 ; tesp = 1
		FinSegun
		
		Si (i > 2) Entonces // Repeticiones consecutivas (máximo 2 seguidas)
			Si ((c = SubCadena(clave, i - 1, i - 1)) y (c = SubCadena(clave, i - 2, i - 2))) Entonces
				Escribir "[X] El carácter ", c, " se repite 3 o más veces seguidas." 
				trep = 1
			FinSi
		FinSi
		// Llamada recursiva al siguiente índice
		resultado = ValidarClave(clave, i+1, terr, tmay, tmin, tnum, tesp, trep)
	Sino
		resultado = 1
	FinSi
FinFuncion

Funcion RegistrarClave(clave Por Referencia)
	Definir clave_final como Cadena
	Definir long_clave, res Como Entero
	Definir ferr, fmay, fmin, fnum, fesp, frep Como Entero
    Repetir
        Escribir("")
        Escribir("[-----------] [ REQUISITOS DE LA CLAVE DE SEGURIDAD ] [-----------]")
        Escribir("+ Longitud: 6-10 | Máximo 2 caracteres iguales consecutivos.")
        Escribir("+ Al menos una mayúscula, minúscula, número y especiales: |*|.|-|_|")
		Escribir("")
		
		Escribir("Ingrese su clave de seguridad: ")
        Leer clave // Entrada
		
        long_clave = Longitud(clave)
        ferr = 0; fmay = 0; fmin = 0; fnum = 0; fesp = 0; frep = 0
        Si (long_clave < 6 o long_clave > 10) Entonces // a) Validar longitud
            Escribir "[x] Debe tener entre 6 y 10 caracteres (Actual: ", long_clave, ")."
        FinSi
        res = ValidarClave(clave, 1, ferr, fmay, fmin, fnum, fesp, frep)
		
		Si (ferr = 0) Entonces
			Escribir("[x] Uno o varios caracteres no permitidos detectado.")
		FinSi
		
        Si (fmay = 0) Entonces
            Escribir("[x] Falta letra mayúscula.")
        FinSi
		
        Si (fmin = 0) Entonces
            Escribir("[x] Falta letra minúscula.")
        FinSi
		
        Si (fnum = 0) Entonces
            Escribir("[x] Falta un número.")
        FinSi
		
        Si (fesp = 0) Entonces
            Escribir("[x] Falta un carácter especial permitido.")
        FinSi
		
        Si (long_clave >= 6 y long_clave <= 10 y ferr = 1 y fmay = 1 y fmin = 1 y fnum = 1 y fesp = 1 y frep = 0) Entonces
			Escribir("")
			Escribir("[-----------] [ Clave validada con exito. ] [-----------]")
			Escribir("")
			res = 1
        Sino
			Escribir("")
            Escribir("[ERROR]: Clave rechazada. Revise los errores e intente de nuevo.")
            res = 0
        FinSi
    Hasta Que (res = 1)
	clave_final = clave
FinFuncion

//{===================} {Registro} {===================}
SubProceso Reto1_Registro
	Definir c como Caracter
	Definir respuesta, clave, cedula, nombre, fecha, email, list_lemas, lema_ods como Cadena
	Definir error_fecha, error_ced como Logico
	Dimensionar list_lemas[17]

	Repetir
		//Registro de N jugadores. Almacenar cedula, nom completo, fecha nacimiento, un correo electronico y lema alusivo al ODS.
		//No se pueden repetir las cedulas
		
		Escribir(" ")
		Escribir(" -------------------------------------------------------------- ")
		Escribir(" ")
		
		Repetir
			Escribir sin saltar("Ingrese su cedula: ")
			Leer cedula			
			
			error_ced = Falso
			
			Para i = 1 hasta Longitud(cedula) Hacer
				c = subcadena(cedula, i, i)
				Si ((c < '0') o (c > '9')) Entonces
					error_ced = Verdadero
				FinSi
			FinPara
			
			Si (Longitud(cedula) > 8) Entonces
				error_ced = Verdadero
			FinSi
			
			Si (error_ced = Verdadero) Entonces
				Escribir("")
				Escribir("[ERROR]: Cedula invalida. Intente nuevamente.")
				Escribir("")
			FinSi
		Hasta Que (error_ced = Falso)
		
		Repetir 
			Escribir sin saltar("Ingrese su nombre completo: ")
			Leer nombre
			
			error_nomb = Falso
			
			Para i = 1 hasta Longitud(nombre) Hacer
				c = subcadena(nombre, i, i)
				Si ((c < 'A' o c > 'Z') y (c < 'a' o c > 'z') y (c < 'Ç' o c > 'Ø') y (c < '?' o c > 'Ñ') y (c < 'Á' o c = 'À') y (c < 'ã' o c > 'Ã') y (c < 'ð' o c > 'Ï') y (c < 'Ó' o c > 'Ý'))  Entonces
					error_nomb = Verdadero
				FinSi
			FinPara
			
			Si (error_nomb = Verdadero)
				Escribir("")
				Escribir("[ERROR]: Nombre invalido. Intente nuevamente.")
				Escribir("")
			FinSi
		Hasta Que (error_nomb = Falso)
		
		Repetir
			Escribir sin saltar("Ingrese su fecha de nacimiento [DD-MM-AAAA]: ")
			Leer fecha
			error_fecha = Falso
			
			Si (Longitud(fecha) <> 10)
				error_fecha = Verdadero
			FinSi
			
			Para i = 1 hasta Longitud(fecha) Hacer
				c = subcadena(fecha, i, i)
				Si (((c < "0") o (c > "9")) y (c <> "-")) Entonces
					error_fecha = Verdadero
				FinSi
			FinPara
			
			Si ((Buscar(fecha, "-") <> 3) o (Buscar(Subcadena(fecha, 6, Longitud(Fecha)), "-") <> 1))
				error_fecha = Verdadero
			FinSi
			
			Si (error_fecha = Verdadero) Entonces
				Escribir("")
				Escribir("[ERROR]: Formato de fecha invalido. Intente nuevamente.")
			FinSi
		Hasta Que (error_fecha = Falso)
		
		RegistrarClave(clave)
		
		Repetir
			Escribir('Ingrese su correo electronico: ")
			Leer email
			
			Si (Buscar(email, "@") = 0) Entonces
				Escribir("[ERROR]: El email no es valido. Intente nuevamente.")
			FinSi
		Hasta Que (Buscar(email, "@") <> 0)
		
		RegistrarEstados(siglas, nombres)
		
		RegistrarLemas(list_lemas, lema_ods)
		Repetir
			Escribir("[-----------] [ ¿Desea ingresar otro jugador? ] [S / N] [-----------]: ")
			Leer respuesta
			
			Si ((respuesta <> 'S') y (respuesta <> 's') y (respuesta <> 'N') y (respuesta <> 'n'))
				Escribir("[ERROR]: Respuesta invalida. Intente nuevamente.")
			FinSi
		Hasta Que ((respuesta = 'S') o (respuesta = 's') o (respuesta = 'N') o (respuesta = 'n'))
	Hasta Que ((respuesta = 'N') o (respuesta = 'n')) 
FinSubProceso

Algoritmo Principal
	Reto1_Registro()
FinAlgoritmo