# Proyecto Final - Base de Datos
**Universidad Tecnológica Nacional - Facultad Regional Bahía Blanca**  
**Materia:** Base de Datos  
**Año:** 2024  
---

## Descripción del Proyecto  
**Este proyecto consiste en:**

Diseñar e implementar una base de datos que permita:  

- Registrar y gestionar la información de **pacientes** (datos personales).  
- Administrar los datos de **médicos** (especialidad y contacto).  
- Programar, buscar y cancelar **turnos médicos**.  
- Generar **reportes de turnos** para análisis y seguimiento.  
- Realizar **búsquedas avanzadas** para consultas específicas.  
---

## Dependencias Funcionales (DFs)  
| Dependencia Funcional       | Descripción                                                                 |
|-----------------------------|-----------------------------------------------------------------------------|
| **id_paciente**             | Determina (nombre, edad, género, dirección, teléfono).                     |
| **id_medico**               | Determina (nombre, especialidad, teléfono).                                |
| **id_cita**                 | Determina (id_paciente, id_medico, fecha_cita).                            |
| **id_paciente, id_medico**  | Determina (fecha_cita).                                                    |

---

## Claves Candidatas  
| Tabla       | Clave Candidata                 |
|-------------|---------------------------------|
| **Paciente** | (`id_paciente`)                |
| **Médico**   | (`id_medico`)                  |
| **Cita**     | (`id_paciente`, `id_medico`, `fecha_cita`) |


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

**Tercera Forma Normal (3NF):**
Regla: Debe estar en 2NF y no debe haber dependencias transitivas (una columna no clave depende de otra columna no clave).

Cumple, ya que:
No hay dependencias transitivas en ninguna tabla. Todas las columnas no clave dependen directamente de la clave primaria.

**Nuevo diseño en la 3NF**

1. **Tabla Paciente**
    - `id_paciente` (Clave primaria)
    - `nombre`
    - `edad`
    - `genero`
    - `direccion`
    - `telefono`

2. **Tabla Medico**
    - `id_medico` (Clave primaria)
    - `nombre` 
    - `especialidad`
    - `telefono`

3. **Tabla Cita**
    - `id_cita` 
    - `id_paciente` (Clave foránea que referencia a `Paciente`)
    - `id_medico`  (Clave foránea que referencia a `Medico`)
    - `fecha_cita` 
    - `hora_cita`
    - Clave primaria compuesta: (`id_paciente`, `id_medico`, `fecha_cita`)


---
## ✨Objetivos  
-  Optimizar la gestión de información.
-  Facilitar la programación y gestión de turnos.
-  Implementar funcionalidades avanzadas.
-  Simular un entorno realista.
-  Mejorar habilidades técnicas.

---

## Capturas y Diagrama






---


## Autores
- **Belatti, Mateo Adaalberto**
- **Burgos, Belén**
- **Peratta, Lucas**
- **Robles, Gianfranco**



---

## Estado del Proyecto
- ✅ Diseño completado.
- 🕗 Testing de consultas avanzadas en progreso.
- 🚀⏳ Proyecto em proceso.

