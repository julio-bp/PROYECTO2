-- Creamos una tabla física que une tus hipótesis
-- 1. Indicamos la base de datos
USE mexico_stats;

-- Borramos la tabla previa para no tener conflictos
DROP TABLE IF EXISTS resultados_analisis;

-- Creamos la tabla con los nombres reales que descubrimos
CREATE TABLE resultados_analisis AS
SELECT 
    e.estados, 
    e.escolaridad_promedio AS escolaridad,
    v.acceso_internet AS internet,
    p.poblacion_total AS poblacion -- Usando el nombre que viste en poblacion
FROM educacion e
JOIN vivienda v ON TRIM(UPPER(e.estados)) = TRIM(UPPER(v.estados))
JOIN poblacion p ON TRIM(UPPER(e.estados)) = TRIM(UPPER(p.estados));

-- Verificamos la creación
SELECT * FROM resultados_analisis LIMIT 5;

