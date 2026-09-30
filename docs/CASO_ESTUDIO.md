# CASO DE ESTUDIO: ChivIA

## 1. Definición del Problema Real
Analizar archivos de datos (como tablas en formato CSV) suele ser complicado para personas que no tienen conocimientos de programación o estadística, ya que generalmente limpiar la información y crear modelos para predecir resultados requiere software complejo y conocimientos técnicos especializados.

Hace falta una aplicación sencilla e intuitiva donde cualquier persona pueda subir su archivo CSV y, a través de una charla con un chatbot, limpiar su información y hacerle preguntas directas para obtener predicciones sobre sus datos de manera rápida, sin necesidad de saber programar ni estadística.

## 2. Objetivos del Sistema
- **Objetivo General:** Desarrollar una aplicación (web o de escritorio) mediante el modelo de desarrollo incremental, integrando un chatbot que reciba archivos CSV, limpie los datos automáticamente y responda preguntas del usuario generando predicciones.
- **Objetivos Específicos:**
  1. Diseñar el módulo para que la aplicación pueda recibir y leer archivos CSV.
  2. Programar en el chatbot la capacidad de procesar y limpiar los datos del archivo subido.
  3. Crear el modelo predictivo que analice la información cargada en la tabla, y conectar el chatbot con dicho modelo para responder preguntas del usuario en tiempo real.

## 3. Actores del Sistema (Usuarios)
| Actor | Rol y Responsabilidad | Perfil Técnico | Access Level |
|---|---|---|---|
| Usuario Final | Sube su archivo CSV, conversa con el chatbot para limpiar datos y solicitar predicciones | Básico (sin conocimientos técnicos) | Read/Write |
| Desarrollador/Administrador | Da mantenimiento al modelo predictivo, ajusta el motor de limpieza y supervisa el desempeño del chatbot | Técnico alto | Full |

## 4. Alcance y Límites del Proyecto
- **Incluye:** Diseño e implementación de una aplicación (web o de escritorio) que combine carga y limpieza automática de archivos CSV, un chatbot interactivo en lenguaje natural, y un modelo predictivo básico sobre los datos cargados; desarrollo bajo metodología incremental en 4 incrementos (carga/limpieza CSV, motor analítico y modelo predictivo, chatbot integrado, pruebas y ajustes finales).
- **No incluye:** Procesamiento de archivos CSV pesados en tiempo real ni autenticación multifactor (MFA) dentro del alcance base del cuatrimestre — estas quedan planeadas como mejoras a incorporar en incrementos posteriores (Incremento 4 o siguiente iteración) si el cliente las solicita como cambio.