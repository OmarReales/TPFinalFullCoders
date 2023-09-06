Algoritmo GestionPacientes
	// Definici�n de estructuras de datos
	Dimensionar pacientes(50)
	Dimensionar historiasClinicas(50) // Array de pacientes
	Dimensionar obrasSociales(50) // Array de historias cl�nicas
	Definir opcionMenu Como Entero // Array de obras sociales
	Definir cantPacientes Como Entero
	cantPacientes = 0
	// Bucle principal
	Repetir
		Escribir '�Qu� desea hacer?'
		Escribir '1. Agregar paciente'
		Escribir '2. Modificar paciente'
		Escribir '3. Eliminar paciente'
		Escribir '4. Mostrar lista de pacientes'
		Escribir '5. Salir'
		Leer opcionMenu
		Seg�n opcionMenu Hacer
			1:
				// Agregar paciente
				Escribir 'Ingrese el nombre del paciente:'
				Leer pacientes[cantPacientes+1]
				Escribir 'Ingrese la historia cl�nica del paciente:'
				Leer historiasClinicas[cantPacientes+1]
				Escribir 'Ingrese la obra social del paciente:'
				Leer obrasSociales[cantPacientes+1]
				cantPacientes = cantPacientes+1
				Escribir 'Paciente agregado exitosamente.'
			2:
				// Modificar paciente
				Si cantPacientes>0 Entonces
					Escribir 'Lista de pacientes:'
					Para i=1 Hasta cantPacientes Hacer
						Escribir i, '. ', pacientes[i]
					FinPara
					Escribir 'Ingrese el n�mero de paciente a modificar:'
					Leer numPaciente
					Si numPaciente>=1 Y numPaciente<=cantPacientes Entonces
						
						Escribir 'Ingrese el nuevo nombre del paciente:'
						Leer pacientes[numPaciente]
						Escribir 'Ingrese la nueva historia cl�nica del paciente:'
						Leer historiasClinicas[numPaciente]
						Escribir 'Ingrese la nueva obra social del paciente:'
						Leer obrasSociales[numPaciente]
						Escribir 'Paciente modificado exitosamente.'
					SiNo
						Escribir 'N�mero de paciente no v�lido.'
					FinSi
				SiNo
					Escribir 'No hay pacientes para modificar.'
				FinSi
			3:
				// Eliminar paciente
				Si cantPacientes>0 Entonces
					Escribir 'Lista de pacientes:'
					Para i<-1 Hasta cantPacientes Hacer
						Escribir i, '. ', pacientes[i]
					FinPara
					Escribir 'Ingrese el n�mero de paciente a eliminar:'
					Leer numPaciente
					Si numPaciente>=1 Y numPaciente<cantPacientes Entonces
						// numPaciente <- numPaciente - 1
						// Eliminar el paciente seleccionado moviendo los otros elementos
						Para i=numPaciente Hasta cantPacientes-1 Hacer
							pacientes[i] = pacientes[i+1]
							historiasClinicas[i] = historiasClinicas[i+1]
							obrasSociales[i] = obrasSociales[i+1]
						FinPara
						cantPacientes = cantPacientes-1
						Escribir 'Paciente eliminado exitosamente.'
					SiNo
						Si numPaciente==cantPacientes Entonces
							cantPacientes = cantPacientes-1
						SiNo
							Escribir 'N�mero de paciente no v�lido.'
						FinSi
					FinSi
				SiNo
					Escribir 'No hay pacientes para eliminar.'
				FinSi
			4:
				// Mostrar lista de pacientes
				Si cantPacientes>0 Entonces
					Escribir 'Lista de pacientes:'
					Para i=1 Hasta cantPacientes Hacer
						Escribir i, '. ', 'Nombre: ', pacientes[i], ' - Historia Cl�nica: ', historiasClinicas[i], ' - Obra Social: ', obrasSociales[i]
					FinPara
				SiNo
					Escribir 'No hay pacientes registrados.'
				FinSi
			5:
				// Salir
				Escribir 'Saliendo del programa.'
			De Otro Modo:
				Escribir 'Opci�n no v�lida.'
		FinSeg�n
	Hasta Que opcionMenu=5
FinAlgoritmo
