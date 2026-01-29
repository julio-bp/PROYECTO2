# PROYECTO 2 - Análisis descriptivo de educación, población y vivienda en México (2020)


## Equipo

-  Julio Beltrán Peiró
-  Juan Cruz Mogordoy


## Descripción del Proyecto:

Este proyecto tiene como objetivo analizar la interconexión entre el nivel educativo, la dinámica poblacional y la calidad de la infraestructura de vivienda en los distintos estados de México. A través de un pipeline de datos que abarca desde la extracción hasta la visualización, buscamos identificar patrones de desigualdad y desarrollo regional.


## Hipótesis de Investigación:

Para guiar nuestra exploración, hemos definido los siguientes objetivos de investigación:

1. **Hipótesis 1** Los estados con mayor nivel educativo presentan mejores condiciones generales de vivienda (materiales y servicios).
2. **Hipótesis 2** Los estados con mayor presión demográfica presentan mayores niveles de hacinamiento en la vivienda.
3. **Hipótesis 3** Los estados con mayor nivel educativo concentran una mayor proporción de población en edad productiva y presentan menores índices de envejecimiento.
4. **Hipótesis 4** Los estados con mayor nivel educativo presentan un mayor acceso a internet y tecnologías de la información en las viviendas.


## Estructura de la Base de Datos:

El proyecto integra tres fuentes de datos relacionadas mediante la columna común `estados`:
- **Tabla Educación:** Datos sobre años de escolaridad y tasas de alfabetismo.
- **Tabla Población:** Datos sobre densidad poblacional y rangos de edad.
- **Tabla Vivienda:** Datos sobre acceso a servicios básicos (agua, luz) y conectividad (internet).


## Tecnologías y Metodología:

- **Extracción y Limpieza:** Python (Pandas) para el preprocesamiento de los datasets originales.
- **Almacenamiento:** MySQL para la creación del modelo relacional y ejecución de consultas analíticas.
- **Análisis:** Consultas SQL avanzadas (JOINs, Group By, etc..).
- **Visualización:** Python (Matplotlib/Seaborn) para la representación gráfica de los hallazgos.


## Conclusiones:

- Los estados con mayor nivel educativo presentan, en promedio, un índice de calidad de vivienda ligeramente superior, aunque las diferencias no son muy marcadas.

-Los estados con menor densidad poblacional muestran mayores niveles de hacinamiento, lo que indica que la densidad no determina directamente este fenómeno.

- Los estados con mayor nivel educativo tienden a presentar índices de envejecimiento poblacional más elevados.

-Existe una relación positiva entre el nivel educativo y el acceso a internet en las viviendas, con algunas excepciones regionales.


## Implicaciones del estudio:

- Identificar desigualdades territoriales en educación, vivienda y acceso digital entre estados.

- Apoyar el diseño de políticas públicas diferenciadas según el perfil educativo y demográfico de cada estado.

- Orientar inversiones en infraestructura digital en estados con menor nivel educativo.

- Anticipar necesidades sociales futuras, como servicios para adultos mayores en estados con mayor envejecimiento.


## Cómo replicar el proyecto
1. Clonar el repositorio.
2. Instalar las librerías necesarias (`pandas`, `numpy`, `matplotlib`, `seaborn`).
3. Ejecutar el notebook a través de github.