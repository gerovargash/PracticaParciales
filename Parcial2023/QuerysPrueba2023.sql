
-- Punto 2
SELECT * FROM VEntregas;


-- Punto 3
SET @mensaje = NULL;

CALL NuevoProducto("Prueba 1", NULL,  @mensaje);
SELECT  @mensaje;
CALL NuevoProducto("", 100,  @mensaje);
SELECT  @mensaje;

CALL NuevoProducto("Prueba 1", -100,  @mensaje);
SELECT  @mensaje;

CALL NuevoProducto("Prueba 1", 100,  @mensaje);
SELECT  @mensaje;

SELECT * FROM Productos;


-- Punto 4
SELECT * FROM Pedidos;

SET @mensaje = NULL;
CALL BuscarPedidos(1, @mensaje);
CALL BuscarPedidos(2, @mensaje);
CALL BuscarPedidos(6, @mensaje);
CALL BuscarPedidos(7, @mensaje);


-- Punto 5
DELETE FROM Productos WHERE idProducto = 1;

DELETE FROM Productos WHERE idProducto = 6;