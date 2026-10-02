# Inventario de Historias de Usuario - Proyecto Final

## Historia de Usuario HU-01: Carga Local de Archivos CSV
- **ID:** HU-01
- **Nombre:** [Carga Local de Archivos CSV para Análisis]
- **Como:** [Analista de Datos / Usuario del Chatbot]
- **Quiero:** [Subir un archivo CSV desde mi equipo local o escritorio a través de la interfaz del chatbot]
- **Para:** [Cargar los datos iniciales que serán procesados y almacenados en la base de datos del sistema]
- **Estimación (Story Points):** [3]
- **Prioridad:** [Alta]
- **Criterios de Aceptación (Gherkin):**
- **Escenario 1 (Carga Exitosa):** **Dado que** el usuario seleccionó un archivo .csv válido desde su escritorio, **Cuando** hace clic en 'Subir', **Entonces** el sistema valida la extensión del archivo, lo almacena localmente y muestra el mensaje 'Archivo subido correctamente'.
- **Escenario 2 (Archivo Inválido):** **Dado que** el usuario selecciona un archivo con extensión no permitida (.docx), **Cuando** intenta cargarlo, **Entonces** el sistema bloquea el envío y muestra una alerta de error de formato.

## Historia de Usuario HU-02: Limpieza, Normalización y Minería de Datos
- **ID:** HU-02
- **Nombre:** [Procesamiento, Limpieza y Normalización de Datos]
- **Como:** [Administrador del Sistema / Ingeniero de Datos]
- **Quiero:** [Ejecutar un módulo de minería de datos que limpie valores nulos y normalice las variables del CSV cargado]
- **Para:** [Garantizar la calidad de los datos antes de introducirlos al modelo de Machine Learning]
- **Estimación (Story Points):** [5]
- **Prioridad:** [Alta]
- **Criterios de Aceptación (Gherkin):**
- **Escenario 1 (Procesamiento Exitoso):** **Dado que** se ha subido un archivo CSV con datos crudos, **Cuando** se ejecuta la rutina de limpieza, **Entonces** el sistema elimina los registros duplicados, imputa o remueve valores nulos, aplica escala/normalización y guarda los datos limpios en la base de datos.
- **Escenario 2 (Datos Insuficientes):** **Dado que** el archivo contiene más del 80% de valores nulos o corruptos, **Cuando** se valida la calidad, **Entonces** el sistema detiene el proceso y emite una notificación de error en la limpieza.

## Historia de Usuario HU-03: Entrenamiento del Modelo de Machine Learning
- **ID:** HU-03
- **Nombre:** [Entrenamiento del Modelo de Machine Learning y Clasificación]
- **Como:** [Científico de Datos / Sistema]
- **Quiero:** [Entrenar un modelo predictivo de clasificación con los datos normalizados]
- **Para:** [Clasificar los datos e identificar patrones capaces de responder a futuras consultas predictivas]
- **Estimación (Story Points):** [8]
- **Prioridad:** [Alta]
- **Criterios de Aceptación (Gherkin):**
- **Escenario 1 (Entrenamiento Correcto):** **Dado que** la base de datos contiene los datos procesados y clasificados, **Cuando** se inicia el algoritmo de Machine Learning, **Entonces** se genera la versión funcional del modelo predictivo y se guarda en el repositorio del chatbot.
- **Escenario 2 (Fallo de Convergencia):** **Dado que** los parámetros del modelo no convergen, **Cuando** finaliza el tiempo límite de entrenamiento, **Entonces** el sistema notifica el fallo y registra el error en la base de datos.

## Historia de Usuario HU-04: Evaluación del Modelo Predictivo
- **ID:** HU-04
- **Nombre:** [Evaluación de Métricas del Modelo]
- **Como:** [Analista de Datos]
- **Quiero:** [Evaluar el rendimiento del modelo de clasificación mediante métricas (precisión, recall, matriz de confusión)]
- **Para:** [Asegurar que las predicciones generadas sean precisas antes de desplegar las respuestas en el chatbot]
- **Estimación (Story Points):** [5]
- **Prioridad:** [Media]
- **Criterios de Aceptación (Gherkin):**
- **Escenario 1 (Evaluación Satisfactoria):** **Dado que** el modelo predictivo ha terminado su entrenamiento, **Cuando** el usuario solicita evaluar el rendimiento, **Entonces** el sistema despliega un resumen estadístico indicando la exactitud y métricas de clasificación.
- **Escenario 2 (Rendimiento Insuficiente):** **Dado que** el modelo obtiene una precisión inferior al umbral mínimo, **Cuando** se valida la evaluación, **Entonces** el sistema alerta que el modelo requiere más datos o reajuste de parámetros.

## Historia de Usuario HU-05: Formulación de Preguntas en el Chatbot
- **ID:** HU-05
- **Nombre:** [Interacción Conversacional para Consultas Predictivas]
- **Como:** [Usuario Final]
- **Quiero:** [Hacer preguntas mediante el chatbot en lenguaje natural para obtener predicciones y clasificaciones]
- **Para:** [Consultar el resultado del modelo predictivo de forma sencilla e intuitiva]
- **Estimación (Story Points):** [5]
- **Prioridad:** [Alta]
- **Criterios de Aceptación (Gherkin):**
- **Escenario 1 (Respuesta Predictiva Exitosa):** **Dado que** el usuario ingresa una pregunta con los parámetros necesarios en el chatbot, **Cuando** envía el mensaje, **Entonces** el chatbot consulta el modelo de Machine Learning y responde con la predicción/clasificación correspondiente.
- **Escenario 2 (Datos Incompletos):** **Dado que** la pregunta del usuario no contiene la información suficiente para realizar la predicción, **Cuando** el chatbot procesa el texto, **Entonces** solicita amablemente los datos faltantes.

## Historia de Usuario HU-06: Gestión de Base de Datos e Historial
- **ID:** HU-06
- **Nombre:** [Almacenamiento e Historial de Interacciones y Predicciones]
- **Como:** [Administrador del Sistema]
- **Quiero:** [Registrar todas las preguntas, predicciones, archivos cargados y estados en la base de datos]
- **Para:** [Mantener la trazabilidad de la minería de datos, reentrenar modelos futuros y consultar el historial]
- **Estimación (Story Points):** [3]
- **Prioridad:** [Media]
- **Criterios de Aceptación (Gherkin):**
- **Escenario 1 (Registro Correcto):** **Dado que** el usuario ha realizado una consulta predictiva en el chatbot, **Cuando** la respuesta es entregada, **Entonces** la pregunta, los datos de entrada y la predicción generada se guardan automáticamente en la base de datos.
- **Escenario 2 (Error de Conexión):** **Dado que** se pierde la conexión con la base de datos, **Cuando** ocurre una interacción, **Entonces** el sistema guarda un registro local en caché para sincronizarlo una vez restablecido el servicio.