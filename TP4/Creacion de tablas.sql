DROP TABLE IF EXISTS Productos;
DROP TABLE IF EXISTS CompetenciaPrecios;

CREATE TABLE Productos (
    ProductoId INT PRIMARY KEY AUTO_INCREMENT,
    NombreProducto VARCHAR(100) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    Categoria VARCHAR(50) NOT NULL
);

CREATE TABLE CompetenciaPrecios (
    CompetenciaId INT PRIMARY KEY AUTO_INCREMENT,
    NombreProducto VARCHAR(100) NOT NULL,
    PrecioCompetencia DECIMAL(10,2) NOT NULL,
    Categoria VARCHAR(50) NOT NULL
);
