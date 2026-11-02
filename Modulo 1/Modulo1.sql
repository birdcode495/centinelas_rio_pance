-- Habilitar el esquema centinelas
SET search_path TO centinelas, public;

-- Consulta de nombres de comercios por vereda y tipo
SELECT 
	c.nombre AS Establecimiento, c.tipo AS Tipo
FROM 
	establecimientos_comerciales c
INNER JOIN
	veredas_pance v
ON
	ST_CONTAINS(v.geom, c.geom) AND c.tipo = --'Ingresa aquí el tipo de comercio'-- 
	AND v.vernombre = --'Ingresa aquí el nombre de la vereda'--
ORDER BY
	c.nombre ASC;

	