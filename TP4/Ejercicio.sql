DROP PROCEDURE IF EXISTS AjustarPreciosCompetitivos;

DELIMITER //

CREATE PROCEDURE AjustarPreciosCompetitivos()
BEGIN
    DECLARE fin_cursor BOOLEAN DEFAULT FALSE;
    DECLARE v_ProductoId INT;
    DECLARE v_Precio DECIMAL(10,2);
    DECLARE v_Categoria VARCHAR(50);
    DECLARE v_PrecioPromedioCompetencia DECIMAL(10,2);
    
 
    DECLARE cursor_productos CURSOR FOR
        SELECT ProductoId, Precio, Categoria
        FROM Productos;
    

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin_cursor = TRUE;
    

    START TRANSACTION;
    

    OPEN cursor_productos;
    
    leer_loop: LOOP

        FETCH cursor_productos INTO v_ProductoId, v_Precio, v_Categoria;
        
        IF fin_cursor THEN
            LEAVE leer_loop;
        END IF;
        

        SELECT AVG(PrecioCompetencia)
        INTO v_PrecioPromedioCompetencia
        FROM CompetenciaPrecios
        WHERE Categoria = v_Categoria;
        

        IF v_Precio > v_PrecioPromedioCompetencia * 1.05 THEN

            UPDATE Productos
            SET Precio = Precio * 0.95
            WHERE ProductoId = v_ProductoId;
        ELSEIF v_Precio < v_PrecioPromedioCompetencia * 0.95 THEN

            UPDATE Productos
            SET Precio = Precio * 1.05
            WHERE ProductoId = v_ProductoId;
        END IF;
        
    END LOOP;
    

    CLOSE cursor_productos;
    

    COMMIT;
END //

DELIMITER ;
