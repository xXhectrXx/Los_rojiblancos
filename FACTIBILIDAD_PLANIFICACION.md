# Estudio de Factibilidad y Planificación del Proyecto
## 1. Análisis de Factibilidad Multidimensional
- **Factibilidad Técnica:** Evaluación de lenguajes y librerías de análisis de datos (Python con Pandas, NumPy, Scikit-learn), herramientas de software SIG para procesamiento e integración de datos espaciales (QGIS con complemento QuickMapServices), y fuentes de información gubernamentales/institucionales oficiales (bases del SIDIS / Dirección General de Información en Salud, INEGI y CONAPO).


## 2. Cronograma de Trabajo y Diagrama de Gantt (Sintaxis Mermaid)
```mermaid
gantt
    title Cronograma del Proyecto Integrador - Datatón 2026
    dateFormat YYYY-MM-DD
    axisFormat %d/%m
    
    section Sesiones y Formacion
    Asistencia a Talleres del Dataton (Sesiones 1 a 4) :done, s1, 2026-09-23, 2026-10-07
    
    section Unidad 2: Analisis y Diseno
    Estudio de Factibilidad, SRS y Definicion de Reto     :a1, 2026-10-14, 7d
    Modelado UML y Definicion de Indicadores Simples     :a2, 2026-10-21, 7d
    Modelado Estructural y Limpieza de Datos SIDIS/ICE   :a3, 2026-10-28, 7d

    section Unidad 3: Construccion y Pruebas
    Ruta Metodologica (PCA, PCR, DP2) y Mapeo QGIS       :b1, 2026-11-04, 14d
    Pruebas de Modelos, Tableros y Despliegue Final      :b2, 2026-11-18, 7d
```
## 3. Matriz de Asignación de Responsabilidades (RACI)
| Tarea / Entregable | Integrante 1 | Integrante 2 | Integrante 3 | Integrante 4 |
| :Jessica Paola Guerra Garnica | Hector Alejandro Hernandez Rodriguez | Jose Guadalupe Pichardo Cerritos | 
| Estudio de Factibilidad | A | R | C |
| Redacción SRS IEEE 830 | R | A | C |
| Diagramación UML | C | C | R |
| Diseño de Base de Datos | R | C | A |