# Arquitectura e Interfaces del Sistema (ChivIA)

## 1. Justificación del Patrón Arquitectónico
Se adopta una **arquitectura en capas** (Presentación, Lógica de Negocio y Datos), ya que separa con claridad la interfaz de carga/visualización del motor de limpieza y análisis de datos, y de la persistencia de resultados. Esto permite modificar o reemplazar cualquier capa (por ejemplo, cambiar el motor de análisis o el almacenamiento) sin afectar a las demás, lo cual favorece la mantenibilidad exigida en el RNF-03 del SRS.

- **Capa de Presentación:** Interfaz web para subir el archivo (CSV/Excel) y visualizar el dashboard con gráficas y resultados.
- **Capa de Lógica de Negocio:** Módulos de validación, limpieza (Pandas) y análisis/modelos predictivos (Scikit-learn).
- **Capa de Datos:** Base de datos relacional (ver `database/schema.sql`) para metadatos de datasets, resultados de análisis y reportes generados.

## 2. Wireframes de Pantallas Principales (descripción textual)

**Pantalla 1 — Carga de Archivo**