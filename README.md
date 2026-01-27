# SQL: From Data to Insight - Desarrollo Social en México
## :siluetas_de_bustos: Equipo
-  Julio Beltran
-  Juan Cruz Mogordoy
---
## :nota: Descripción del Proyecto
Este proyecto tiene como objetivo analizar la interconexión entre el nivel educativo, la dinámica poblacional y la calidad de la infraestructura de vivienda en los distintos estados de México. A través de un pipeline de datos que abarca desde la extracción hasta la visualización, buscamos identificar patrones de desigualdad y desarrollo regional.
## :dardo: Hipótesis de Investigación
Para guiar nuestra exploración, hemos definido los siguientes objetivos de investigación:
1. **Bienestar e Infraestructura:(Julio B.)** Los estados con mayor nivel educativo presentan mejores condiciones generales de vivienda (materiales y servicios).
2. **Presión Demográfica:(Julio B.)** Los estados con mayor presión demográfica presentan mayores niveles de hacinamiento en la vivienda.
******************************************
3. **Dinámica Poblacional:(Juan C)** Los estados con mayor nivel educativo concentran una mayor proporción de población en edad productiva y presentan menores índices de envejecimiento.
4. **Brecha Digital:(Juan C)** Los estados con mayor nivel educativo presentan un mayor acceso a internet y tecnologías de la información en las viviendas.
## :carpeta_abierta: Estructura de la Base de Datos
El proyecto integra tres fuentes de datos relacionadas mediante la columna común `estados`:
- **Tabla Educación:** Datos sobre años de escolaridad y tasas de alfabetismo.
- **Tabla Población:** Datos sobre densidad poblacional y rangos de edad.
- **Tabla Vivienda:** Datos sobre acceso a servicios básicos (agua, luz) y conectividad (internet).
## :martillo_y_llave_inglesa: Tecnologías y Metodología
- **Extracción y Limpieza:** Python (Pandas) para el preprocesamiento de los datasets originales.
- **Almacenamiento:** MySQL para la creación del modelo relacional y ejecución de consultas analíticas.
- **Análisis:** Consultas SQL avanzadas (JOINs, Group By, Subqueries).
- **Visualización:** Python (Matplotlib/Seaborn) para la representación gráfica de los hallazgos.
## :cohete: División de Tareas (Day 1)
- **Extracción de datos:**
- **Definición de hipótesis y lógica de negocio:**
- **Configuración del repositorio y documentación inicial:**
