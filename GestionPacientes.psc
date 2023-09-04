Algoritmo GestionPacientes
    // Definición de estructuras de datos
    Dimension pacientes[50] // Array de pacientes
    Dimension historiasClinicas[50] // Array de historias clínicas
    Dimension obrasSociales[50] // Array de obras sociales
    Definir opcionMenu Como Entero
	Definir cantPacientes como entero
	cantPacientes = 50
	
    // Bucle principal
    Repetir
        Escribir "¿Qué desea hacer?"
        Escribir "1. Agregar paciente"
        Escribir "2. Modificar paciente"
        Escribir "3. Eliminar paciente"
        Escribir "4. Mostrar lista de pacientes"
        Escribir "5. Salir"
        Leer opcionMenu
		
        Segun opcionMenu
            Caso 1:
                // Agregar paciente
                Escribir "Ingrese el nombre del paciente:"
                Leer pacientes[cantPacientes]
                Escribir "Ingrese la historia clínica del paciente:"
                Leer historiasClinicas[cantPacientes]
                Escribir "Ingrese la obra social del paciente:"
                Leer obrasSociales[cantPacientes]
                cantPacientes <- cantPacientes + 1
                Escribir "Paciente agregado exitosamente."
            
			
			Caso 2:
			// Modificar paciente
			Si cantPacientes > 0 Entonces
				Mostrar "Lista de pacientes:"
				Para i <- 1 Hasta cantPacientes - 1
					Mostrar i + 1, ". ", pacientes[i]
				Fin Para
				
				Escribir "Ingrese el número de paciente a modificar:"
				Leer numPaciente
				
				Si numPaciente >= 1 Y numPaciente <= cantPacientes Entonces
					numPaciente <- numPaciente - 1
					Escribir "Ingrese el nuevo nombre del paciente:"
					Leer pacientes[numPaciente]
					Escribir "Ingrese la nueva historia clínica del paciente:"
					Leer historiasClinicas[numPaciente]
					Escribir "Ingrese la nueva obra social del paciente:"
					Leer obrasSociales[numPaciente]
					Escribir "Paciente modificado exitosamente."
				SiNo
					Escribir "Número de paciente no válido."
				Fin Si
			SiNo
				Escribir "No hay pacientes para modificar."
			Fin Si
		
		
			Caso 3:
			// Eliminar paciente
			Si cantPacientes > 0 Entonces
				Mostrar "Lista de pacientes:"
				Para i <- 1 Hasta cantPacientes - 1
					Mostrar i + 1, ". ", pacientes[i]
				Fin Para
			
				Escribir "Ingrese el número de paciente a eliminar:"
				Leer numPaciente
			
			Si numPaciente >= 1 Y numPaciente <= cantPacientes Entonces
				numPaciente <- numPaciente - 1
				// Eliminar el paciente seleccionado moviendo los otros elementos
				Para i <- numPaciente Hasta cantPacientes - 2
					pacientes[i] <- pacientes[i + 1]
					historiasClinicas[i] <- historiasClinicas[i + 1]
					obrasSociales[i] <- obrasSociales[i + 1]
				Fin Para
				cantPacientes <- cantPacientes - 1
				Escribir "Paciente eliminado exitosamente."
			SiNo
				Escribir "Número de paciente no válido."
			Fin Si
		SiNo
			Escribir "No hay pacientes para eliminar."
		Fin Si
	
	
			Caso 4:
			// Mostrar lista de pacientes
				Si cantPacientes > 0 Entonces
					Mostrar "Lista de pacientes:"
				Para i <- 1 Hasta cantPacientes - 1
					Mostrar i + 1, ". ", "Nombre: ", pacientes[i], " - Historia Clínica: ", historiasClinicas[i], " - Obra Social: ", obrasSociales[i]
				Fin Para
		SiNo
			Escribir "No hay pacientes registrados."
		Fin Si

			Caso 5:
			// Salir
				Escribir "Saliendo del programa."

			De Otro Modo:
				Escribir "Opción no válida."

		Fin Segun
	Hasta Que opcionMenu = 5
Fin Algoritmo
