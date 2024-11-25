# Proyecto Final - Base de Datos
**Universidad Tecnológica Nacional - Facultad Regional Bahía Blanca**  
**Materia:** Base de Datos  
**Año:** 2024  

---

## Descripción del Proyecto  
**Este proyecto consiste en:**

Desarrollar un sistema para gestionar un hospital que incluya pacientes, médicos y turnos de consulta médica.

**Incluye:**  
-   Gestión de pacientes.
-   Gestión de doctores.
-   Manejo de turnos.
-   Búsquedas avanzadas.
-   Reporte de turnos.
-   Cancelación de turnos.

---

## Dependencias Funcionales (DFs)
- **id_paciente** -> (nombre, edad, género, dirección, teléfono)
- **id_medico** -> (nombre, especialidad, teléfono)
- **id_cita** -> (id_paciente, id_medico, fecha_cita)
- **id_paciente, id_medico** -> fecha_cita
  
---
## Claves Candidatas
- Tabla Paciente: (`id_paciente`)
- Tabla Médico: (`id_medico`)
- Tabla Cita: (`id_paciente`, `id_medico`, `fecha_cita`)







---
## Justificación del diseño:

**Primera Forma Normal (1NF):**
Regla: Cada columna debe contener valores atómicos (sin listas o conjuntos), y cada fila debe ser única.

Cumple, ya que:
Las columnas solo almacenan valores atómicos (un solo valor por celda).
Cada tabla tiene una clave primaria definida, garantizando filas únicas.

**Segunda Forma Normal (2NF):**
Regla: Debe estar en 1NF y no debe haber dependencias parciales (las columnas no clave dependen completamente de la clave primaria).

Cumple, ya que:
Todas las columnas dependen completamente de la clave primaria de sus respectivas tablas. Por ejemplo:
En Paciente, cada columna depende de id_paciente.
En Cita, id_paciente y id_medico son claves externas correctamente referenciadas.

**Tercera Forma Normal (23NF):**
Regla: Debe estar en 2NF y no debe haber dependencias transitivas (una columna no clave depende de otra columna no clave).

Cumple, ya que:
No hay dependencias transitivas en ninguna tabla. Todas las columnas no clave dependen directamente de la clave primaria.


---
## Objetivos  
-  Optimizar la gestión de información.
-  Facilitar la programación y gestión de turnos.
-  Implementar funcionalidades avanzadas.
-  Simular un entorno realista.
-  Mejorar habilidades técnicas.

---

## Capturas y Diagrama






---


## Autores
- Belatti, Mateo Adaalberto
- Burgos, Belén
- Peratta, Lucas
- Robles, Gianfranco



---

## Estado del Proyecto
**En proceso...**
