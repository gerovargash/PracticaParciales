
-- Punto 2
SELECT * FROM vCantidadProductos WHERE idOrden = 216711 OR idOrden = 217500;

SELECT * FROM vCantidadProductos;


-- Punto 3
SET @mensaje = NULL;
CALL spAltaEnvio('450002', NULL, NULL, '259702', DATE(now()), DATE(DATE_ADD(NOW(), INTERVAL 1 WEEK)), NULL, 'gola', 1, @mensaje);
CALL spAltaEnvio('450002', NULL, NULL, '259702', DATE(now()), DATE(DATE_ADD(NOW(), INTERVAL 1 WEEK)), NULL, 'gola', 1, @mensaje);

CALL spAltaEnvio('450003', NULL, NULL, '259702', DATE(now()), DATE(DATE_ADD(NOW(), INTERVAL -1 WEEK)), NULL, 'gola', 1, @mensaje);
SELECT @mensaje;


-- Punto 4
SELECT * FROM Envios;

SET @mensaje = NULL;
CALL spConsultaEnvio('242815', @mensaje);
CALL spConsultaEnvio('245701', @mensaje);
SELECT @mensaje;

SELECT * FROM Ordenes WHERE idOrden = '245701';
SELECT * FROM Envios WHERE idOrden = '245701';
SELECT * FROM Seguimientos WHERE idEnvio = '351202';