# Reporte Técnico de Selección y Justificación Metodológica

**Asignatura:** Ingeniería de Software (IS-2026) | **Unidad 1:**   
**Proyecto Final:** ChivIA[cite: 4]  
**Equipo de Desarrollo:** Los rojiblancos[cite: 10] | **Fecha:** 23 de agosto de 2026[cite: 3]  

---

## 1. Caracterización del Sistema y Entorno de Proyecto
- **Ámbito de Dominio:** Ingeniería en Datos e Inteligencia Artificial (Análisis de datos tabular y modelos predictivos mediante interfaz conversacional)[cite: 3, 4, 5].
- **Problema Principal a Resolver:** Analizar archivos CSV resulta complicado para personas sin conocimientos de programación o estadística[cite: 4]. Se requiere una aplicación intuitiva donde el usuario suba un CSV e interactúe con un chatbot para limpiar datos y obtener predicciones[cite: 4].
- **Complejidad Técnica y Criticidad:** Complejidad media-alta por la integración de limpieza automatizada de datos, modelos de machine learning y procesamiento de lenguaje natural[cite: 4, 5]. Criticidad enfocada en mantenibilidad y confiabilidad[cite: 2].
- **Perfil de Integrantes y Cliente:** Equipo de 3 estudiantes con experiencia previa en minería y análisis de datos[cite: 8, 10]:
  - Héctor Alejandro Hernández Rodríguez[cite: 3]
  - Jessica Paola Guerra Garnica[cite: 3]
  - José Guadalupe Pichardo Cerritos[cite: 3]

## 2. Evaluación Multicriterio de Alternativas Metodológicas

| Criterio de Evaluación | Enfoque Clásico (Cascada) | Enfoque Ágil (Scrum/XP) | Enfoque Híbrido / Incremental Propuesto |
|---|---|---|---|
| **Gestión de Cambios** | Exige requerimientos fijos; cambios generan retrasos y costos elevados[cite: 6, 7]. | Alta adaptabilidad e iteración por Sprints[cite: 1]. | Alta: Absorbe cambios (como archivos pesados o MFA) reprogramándolos en incrementos posteriores sin detener el proyecto[cite: 7]. |
| **Documentación Exigida** | Exhaustiva y formal en cada etapa[cite: 1, 7]. | Mínima suficiente enfocada en software funcional[cite: 1]. | Equilibrada: Estándar IEEE 830, reglas de paradigma y control de calidad[cite: 1, 2, 10]. |
| **Participación del Cliente** | Puntos fijos de revisión al inicio y final[cite: 1]. | Continua en cada revisión de Sprint[cite: 1]. | Continua: Evaluación de entregables funcionales en cada incremento[cite: 6, 8]. |
| **Velocidad de Entrega** | Producto final entregado al terminar el ciclo[cite: 1]. | Incrementos funcionales cortos de 1 a 2 semanas[cite: 1]. | Entrega por módulos funcionales (Carga/Limpieza -> Motor analítico -> Chatbot)[cite: 6]. |

## 3. Justificación Fundada de la Metodología Seleccionada
- **Metodología Seleccionada:** Modelo de Desarrollo Incremental / Ágil (Sommerville Cap. 2 y 3)[cite: 6, 8, 10].
- **Argumentación Técnica Fundamentada:** Se selecciona el modelo Incremental porque permite entregar primero la funcionalidad de carga y limpieza de CSV antes de abordar la complejidad del chatbot y del modelo predictivo[cite: 6, 8]. Esto minimiza riesgos técnicos y permite absorber cambios en el Backlog sin descartar código ni documentación previa[cite: 7, 8].

## 4. Definición del Proceso Adaptado y Artefactos
- **Fases o Ciclos del Proceso:** 4 Incrementos funcionales[cite: 6]:
  1. *Incremento 1:* Interfaz y módulo de carga/limpieza de CSV[cite: 6].
  2. *Incremento 2:* Motor analítico y modelo predictivo[cite: 6].
  3. *Incremento 3:* Chatbot conversacional e integración[cite: 6].
  4. *Incremento 4:* Pruebas integrales, ajustes y entrega final[cite: 6].
- **Artefactos Obligatorios a Generar:** SRS IEEE 830, PARADIGMA.md, CALIDAD.md, REPORTE_METODOLOGIA.md, Tablero Kanban y Release v1.0-u1[cite: 1, 2, 10].
- **Matriz de Responsabilidades de Equipo:**
  - **José Guadalupe Pichardo Cerritos:** Carga local de CSV, Gestión de BD e Historial[cite: 11].
  - **Héctor Alejandro Hernández Rodríguez:** Limpieza, normalización y minería de datos[cite: 11].
  - **Jessica Paola Guerra Garnica:** Interacción conversacional del Chatbot y consultas predictivas[cite: 11].

## 5. Compromiso de Calidad y Gobernanza de Código
- **Alineación con PARADIGMA.md y CALIDAD.md:** Adhesión a estándar PEP 8 (Flake8), funciones menores a 15 líneas, manejo explícito de excepciones y exclusión de credenciales vía `.gitignore`[cite: 2, 10].
- **Mecanismos de Control de Cambios:** Convención de commits (`feat:`, `fix:`, `docs:`), prohibido el push directo a `main` y revisión obligatoria entre pares por Pull Request[cite: 10].