## Ejercicio 5:

## Torneo de Bicicletas


**Esquema de BD:**

TORNEO<cod_torneo, nombre_torneo, cod_corredor, cod_bicicleta, marca_bicicleta, nyap_corredor, sponsor, DNI_presidente_sponsor, DNI_medico>

**Restricciones:**

a. El código del torneo (cod_torneo) es único y no se repite para diferentes torneos. Pero los nombres de torneo pueden repetirse entre diferentes torneos (por ejemplo, el "Tour de Francia" se desarrolla todos los años y siempre lleva el mismo nombre).

b. Un corredor corre varios torneos. Tiene un código único por torneo, pero en diferentes torneos tiene diferentes códigos.

c. Cada corredor tiene varias bicicletas asignadas para un torneo.

d. Los códigos de bicicleta (cod_bicicleta) pueden cambiar en diferentes torneos, pero dentro de un torneo son únicos.

e. Cada bicicleta tiene una sola marca (marca_bicicleta).

f. Cada corredor tiene varios sponsors en un torneo, y un sponsor puede representar a varios corredores.

g. Cada sponsor tiene un único presidente (DNI_presidente_sponsor) y un único médico (DNI_medico).

### Paso 1: Determinar las Dependencias Funcionales (DFs)
A partir del esquema y las restricciones dadas, podemos determinar las siguientes dependencias funcionales:

**cod_torneo → nombre_torneo**: Cada torneo tiene un código único, por lo que nombre_torneo depende funcionalmente de cod_torneo.

**cod_torneo, cod_corredor → nyap_corredor:** El código de corredor es único dentro de cada torneo, por lo que el nombre del corredor (nyap_corredor) depende de la combinación de cod_torneo y cod_corredor.

**cod_torneo, cod_bicicleta → marca_bicicleta** Dentro de cada torneo, el código de bicicleta es único, entonces marca_bicicleta depende de lla combinacion de cod_torneo y cod_bicicleta.

**sponsor → DNI_presidente_sponsor, DNI_medico:** Cada sponsor tiene un presidente y un médico específicos, por lo que ambos atributos dependen de sponsor.

**cod_torneo, cod_corredor, cod_bicicleta, sponsor:** la combinación en la tabla participacion identifica de forma única cada participación permitiendo que se registren las relacion entre corredores, bicicletas y sponsors en un torneo específico

### Paso 2: Determinar las Claves Candidatas
Para determinar las claves candidatas, buscamos un conjunto de atributos que identifique de forma única cada fila de la tabla TORNEO.

En este caso, tenemos:

La combinación de **cod_torneo, cod_corredor, y cod_bicicleta** identifica de manera única cada registro en la tabla, ya que:
**cod_torneo** identifica el torneo.
**cod_corredor** identifica un corredor dentro de un torneo específico.
**cod_bicicleta** identifica una bicicleta dentro de un torneo.
Por lo tanto, la clave candidata es:

**(cod_torneo, cod_corredor, cod_bicicleta)**
Esta combinación asegura que cada registro en la tabla sea único.

### Paso 3: Diseño en Tercera Forma Normal (3FN)
Para llevar el esquema a la Tercera Forma Normal (3FN), eliminamos dependencias transitivas y nos aseguramos de que cada atributo no clave dependa únicamente de la clave primaria completa. Esto implica dividir la tabla en varias tablas relacionadas para reducir la redundancia y asegurar la integridad de los datos.

Dividimos la tabla original en cuatro tablas (Torneo, Corredor, Bicicleta, Sponsor) para eliminar dependencias transitivas y garantizar que cada atributo no clave dependa únicamente de la clave primaria completa.

**El nuevo diseño en 3FN sería el siguiente**:

1. **Tabla Torneo**
    - `cod_torneo` (Clave primaria)
    - `nombre_torneo`

2. **Tabla Corredor**
    - `cod_torneo` (Clave foránea que referencia a Torneo)
    - `cod_corredor` (Clave primaria compuesta junto con     `cod_torneo`)
    - `nyap_corredor`

3. **Tabla Bicicleta**
    - `cod_torneo` (Clave foranea que referencia a Torneo)
    - `cod_bicicleta` (Clave primaria compuesta junto con `cod_torneo`)
    - `marca_bicicleta`

4. **Tabla Sponsor**
    - `sponsor (Clave primaria)`
    - `DNI_presidente_sponsor`
    - `DNI_medico`

5. **Tabla Participacion**
    - `cod_torneo` (Clave foránea que referencia a `Torneo`)
    - `cod_corredor` (Clave foránea que referencia a `Corredor`)
    - `cod_bicicleta` (Clave foránea que referencia a `Bicicleta`)
    - `sponsor` (Clave foránea que referencia a `Sponsor`)
    - Clave primaria compuesta: (cod_torneo, cod_corredor, cod_bicicleta, sponsor)
