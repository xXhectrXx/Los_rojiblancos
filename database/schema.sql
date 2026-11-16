-- Script DDL de Creación del Esquema Relacional de la Base de Datos

CREATE TABLE datasets (
    id SERIAL PRIMARY KEY,
    nombre_archivo VARCHAR(200) NOT NULL,
    formato VARCHAR(10) NOT NULL CHECK (formato IN ('csv','xlsx')),
    num_filas INT,
    fecha_carga TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE analisis_resultados (
    id SERIAL PRIMARY KEY,
    dataset_id INT NOT NULL REFERENCES datasets(id) ON DELETE CASCADE,
    estadisticas JSONB NOT NULL,
    fecha_analisis TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE reportes (
    id SERIAL PRIMARY KEY,
    analisis_id INT NOT NULL REFERENCES analisis_resultados(id) ON DELETE CASCADE,
    tipo_grafica VARCHAR(50) NOT NULL,
    formato_descarga VARCHAR(10) NOT NULL CHECK (formato_descarga IN ('pdf','png','xlsx')),
    fecha_generacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);