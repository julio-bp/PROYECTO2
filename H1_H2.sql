USE proyecto2;
SELECT DATABASE();


SHOW TABLES;

-- HIPÓTESIS 1

SELECT *
FROM h1_educacion_vivienda;

-- Ordenamos estados por nivel educativo

SELECT
estados,
porcentaje_educacion_superior,
indice_vivienda
FROM h1_educacion_vivienda
ORDER BY porcentaje_educacion_superior DESC;

-- Ordenamos por calidad de vivienda

SELECT
estados,
porcentaje_educacion_superior,
indice_vivienda
FROM h1_educacion_vivienda
ORDER BY indice_vivienda DESC;

-- Miramos niveles educativos mínimos y máximos

SELECT
    MIN(porcentaje_educacion_superior) AS min_edu,
    MAX(porcentaje_educacion_superior) AS max_edu
FROM h1_educacion_vivienda;


-- Agrupamos en niveles educativos


SELECT
estados,
CASE
	WHEN porcentaje_educacion_superior < 20 THEN 'BAJO'
	WHEN porcentaje_educacion_superior < 25 THEN 'MEDIO'
	ELSE 'ALTO'
END AS nivel_educativo,
ROUND(indice_vivienda, 2) AS indice_vivienda
FROM h1_educacion_vivienda
ORDER BY
CASE
	WHEN porcentaje_educacion_superior < 20 THEN 1
	WHEN porcentaje_educacion_superior < 25 THEN 2
	ELSE 3
END,
indice_vivienda DESC;


-- Hacemos un top 3

SELECT
estados,
ROUND(porcentaje_educacion_superior, 2) AS porcentaje_educacion_superior,
ROUND(indice_vivienda, 2) AS indice_vivienda
FROM h1_educacion_vivienda
WHERE porcentaje_educacion_superior >= 25
ORDER BY 
indice_vivienda DESC
LIMIT 3;




-- HIPÓTESIS 2


SELECT *
FROM h2_densidad_hacinamiento;


-- Observamos los máximos y mínimos en ambas variables

SELECT
MIN(densidad_poblacion) AS min_densidad,
MAX(densidad_poblacion) AS max_densidad,
MIN(indice_hacinamiento) AS min_hacinamiento,
MAX(indice_hacinamiento) AS max_hacinamiento
FROM h2_densidad_hacinamiento;


-- Ordenamos por estado

SELECT
estados,
densidad_poblacion,
indice_hacinamiento
FROM h2_densidad_hacinamiento
ORDER BY densidad_poblacion DESC; 

-- Agrupaos por niveles de densidad de población

SELECT
estados,
CASE
	WHEN densidad_poblacion < 100 THEN 'BAJA'
	WHEN densidad_poblacion < 300 THEN 'MEDIA'
	ELSE 'ALTA'
END AS nivel_densidad,
ROUND(indice_hacinamiento, 2) AS hacinamiento
FROM h2_densidad_hacinamiento
ORDER BY
CASE
	WHEN densidad_poblacion < 100 THEN 1
	WHEN densidad_poblacion < 300 THEN 2
	ELSE 3
END,
indice_hacinamiento DESC;

-- Hacemos un top 3

SELECT
estados,
ROUND(densidad_poblacion, 2) AS densidad_poblacion,
ROUND(indice_hacinamiento, 2) AS indice_hacinamiento
FROM h2_densidad_hacinamiento
WHERE densidad_poblacion < 100
ORDER BY 
indice_hacinamiento DESC
LIMIT 3;
