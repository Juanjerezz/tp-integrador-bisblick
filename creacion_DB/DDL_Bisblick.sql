CREATE DATABASE SistemaGestionBisblick;

USE SistemaGestionBisblick;

CREATE TABLE Becado (
    ID_Becado INT PRIMARY KEY IDENTITY, --para que vaya de 1 en 1
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    DNI VARCHAR(20) UNIQUE NOT NULL,
    Fecha_Nacimiento DATE NOT NULL,
    Genero VARCHAR(20) CHECK (Genero IN ('Masculino', 'Femenino', 'Otro')),
    Direccion VARCHAR(100),
    Localidad_Actual VARCHAR(50),
    Provincia_Actual VARCHAR(50),
    ONG VARCHAR(100),
    Tiene_Cobertura_Medica VARCHAR(2) CHECK (Tiene_Cobertura_Medica IN ('Si', 'No')) NOT NULL,
    Nombre_Cobertura_Medica VARCHAR(100)
);

CREATE TABLE Contacto (
    ID_Contacto INT PRIMARY KEY,
    Telefono VARCHAR(20) NOT NULL,
    Telefono_Alternativo VARCHAR(20),
    Mail VARCHAR(100) NOT NULL,
    ID_Becado INT UNIQUE NOT NULL,
    FOREIGN KEY (ID_Becado) REFERENCES Becado(ID_Becado)
);

CREATE TABLE DatosLaborales (
    ID_Laboral INT PRIMARY KEY,
    Ocupacion VARCHAR(2) CHECK (Ocupacion IN ('Si', 'No')) NOT NULL,
    Ubicacion VARCHAR(100),
    Puesto VARCHAR(100),
    CargaHoraria VARCHAR(20) CHECK (CargaHoraria IN ('FullTime', 'PartTime', 'Rotativo')),
    Busqueda_Laboral VARCHAR(2) CHECK (Busqueda_Laboral IN ('Si', 'No')) NOT NULL,
    LinkedIn VARCHAR(200),
    ID_Becado INT UNIQUE NOT NULL,
    FOREIGN KEY (ID_Becado) REFERENCES Becado(ID_Becado)
);

CREATE TABLE DatosAcademicos (
    ID_Academico INT PRIMARY KEY,
    Carrera VARCHAR(100) NOT NULL,
    Universidad VARCHAR(100) NOT NULL,
    Año_Ingreso INT CHECK (Año_Ingreso > 1900),
    Tipo VARCHAR(20) CHECK (Tipo IN ('Privada', 'Pública')),
    Beca_Universidad VARCHAR(2) CHECK (Beca_Universidad IN ('Si', 'No')),
    Area VARCHAR(50),
    Nivel_Ingles VARCHAR(20) CHECK (Nivel_Ingles IN ('Básico', 'Intermedio', 'Avanzado')),
    Examenes_Ingles VARCHAR(50),
    ID_Becado INT UNIQUE NOT NULL,
    FOREIGN KEY (ID_Becado) REFERENCES Becado(ID_Becado)
);

CREATE TABLE Beca (
    ID_Beca INT PRIMARY KEY,
    Año_Inicio INT NOT NULL,
    Mes_Inicio INT NOT NULL CHECK (Mes_Inicio BETWEEN 1 AND 12),
    Tipo_Beca VARCHAR(20) CHECK (Tipo_Beca IN ('Estudio', 'Trabajo')),
    Estado VARCHAR(20) CHECK (Estado IN ('Activa', 'Finalizada', 'Egresado', 'Abandono')),
    Modalidad VARCHAR(50),
    Año_Cambio INT,
    Año_Abandono INT,
    Año_Egreso INT,
    Licencia_ingles VARCHAR(2) CHECK (Licencia_ingles IN ('Si', 'No')),
    Pedido_PC VARCHAR(2) CHECK (Pedido_PC IN ('Si', 'No')),
    Empresa VARCHAR(100),
    ID_Becado INT NOT NULL,
    FOREIGN KEY (ID_Becado) REFERENCES Becado(ID_Becado)
);

CREATE TABLE Mentor (
    ID_Mentor INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    DNI VARCHAR(20) UNIQUE NOT NULL,
    Carrera VARCHAR(100),
    Puesto VARCHAR(100),
    Ubicacion VARCHAR(100),
    Mail VARCHAR(100),
    Telefono VARCHAR(20),
    Estado VARCHAR(20) CHECK (Estado IN ('Activo', 'Inactivo'))
); 

CREATE TABLE Becado_Mentor (
    ID_Becado INT PRIMARY KEY,
    ID_Mentor INT,
    FOREIGN KEY (ID_Becado) REFERENCES Becado(ID_Becado),
    FOREIGN KEY (ID_Mentor) REFERENCES Mentor(ID_Mentor)
);

CREATE TABLE Informe_Becado (
    ID_Informe INT PRIMARY KEY,
    ID_Becado INT NOT NULL,
    Informe_Marzo_Abril VARCHAR(250),
    Informe_Julio_Agosto VARCHAR(250),
    Informe_Noviembre_Diciembre VARCHAR(250),
    Comentario VARCHAR(250),
    FOREIGN KEY (ID_Becado) REFERENCES Becado(ID_Becado)
);

CREATE TABLE Informe_Mentor (
    ID_Informe INT PRIMARY KEY,
    ID_Mentor INT NOT NULL,
    Informe_Marzo_Abril VARCHAR(250),
    Informe_Julio_Agosto VARCHAR(250),
    Informe_Noviembre_Diciembre VARCHAR(250),
    Comentario VARCHAR(250),
    FOREIGN KEY (ID_Mentor) REFERENCES Mentor(ID_Mentor)
);