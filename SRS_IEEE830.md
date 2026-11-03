# Especificación de Requisitos de Software (SRS) - IEEE Std 830-1998
## 1. Introducción y Propósito
### 1.1 Alcance del Sistema
[Descripción detallada de la solución de software, límites del sistema y valor para el
negocio]
[El software tiene el objetivo de realizar análisis de datos mediante él envió de dataset's en csv o Excel, en el cual primero se realizará la limpieza del archivo para después realizar el análisis mediante gráficas y datos numéricos más importantes. 
Los requerimientos del sistema serán los mínimos ya que depende del tamaño del dataset los requisitos que serán necesarios.
Este programa es de gran ayuda en un negocio ya que permite analizar datos de forma más rápida y eficiente.]
## 2. Requerimientos Funcionales (RF)
| Código | Nombre del Requisito | Descripción | Prioridad | Actor Principal |
| :--- | :--- | :--- | :---: | :--- |
| RF-01 | Ingreso de Datos | Espacio indicado para subir los archivos csv y Excel, con verificación para evitar archivos vacíos o formatos no permitidos. | Alta | Sistema |
| RF-02 | Procesamiento de Datos | El programa realizará un análisis de datos buscando la información más importante y destacada. | Alta | Sistema |
| RF-03 | Generación de Reportes | El programa generará gráficas y modelos predictivos que podrán ser descargados por el usuario. | Media | Sistema |
## 3. Requerimientos No Funcionales (RNF - ISO/IEC 25010)
- **RNF-01 (Rendimiento):** El tiempo de respuesta del programa para realizar análisis y modelos predictivos dependerá del tamaño del archivo, entre más grande el archivo requerirá mas tiempo de respuesta..
- **RNF-02 (Seguridad):** La seguridad utilizara un modelo en el cual los datos serán cifrados desde que el usuario los envía hasta que llevan al sistema, para vigilar que nadie robe los datos en el camino.
- **RNF-03 (Mantenibilidad):** El código será fácil de modificar según las necesidades que surjan en el camino hasta completar este. Además de alcanzar un periodo de finalización casi al 100 %.
## 4. Diagrama de Casos de Uso (Mermaid) y Descripción Tabular
```mermaid
usecaseDiagram
    actor Usuario

    package "Sistema de Análisis de Datos" {
        usecase "CU-01: Cargar Datos" as CU1
        usecase "CU-02: Consultar Dashboard" as CU2
        usecase "CU-03: Descargar Reportes" as CU3
    }

    Usuario --> CU1
    Usuario --> CU2
    Usuario --> CU3


