CREATE DATABASE SistemaGestionGastosBD
GO

USE SistemaGestionGastosBD
GO

-- Tabla Usuarios
CREATE TABLE Usuarios (
    Id INT IDENTITY(1,1) PRIMARY KEY,  -- Clave primaria con identidad
    Nombre NVARCHAR(100) NOT NULL,      -- Nombre completo
    Email NVARCHAR(100) NOT NULL UNIQUE, -- Correo electrónico único
    PasswordHash NVARCHAR(MAX) NOT NULL, -- Contraseña cifrada
    FechaRegistro DATETIME NOT NULL     -- Fecha de registro
);

-- Tabla Categorías
CREATE TABLE Categorias (
    Id INT IDENTITY(1,1) PRIMARY KEY,  -- Clave primaria con identidad
    Nombre NVARCHAR(100) NOT NULL,     -- Nombre de la categoría
    Descripcion NVARCHAR(255)          -- Descripción de la categoría
);

-- Tabla Monedas
CREATE TABLE Monedas (
    Id INT IDENTITY(1,1) PRIMARY KEY,  -- Clave primaria con identidad
    Codigo NVARCHAR(10) NOT NULL,      -- Código ISO de la moneda (ej: USD, EUR)
    Nombre NVARCHAR(255) NOT NULL,     -- Nombre de la moneda (ej: Dólar, Euro)
    Simbolo NVARCHAR(10) NOT NULL      -- Símbolo de la moneda (ej: $, €)
);

-- Tabla Gastos
CREATE TABLE Gastos (
    Id INT IDENTITY(1,1) PRIMARY KEY,  -- Clave primaria con identidad
    UsuarioId INT NOT NULL,            -- ID del usuario que realizó el gasto
    CategoriaId INT NOT NULL,          -- ID de la categoría del gasto
    MonedaId INT NOT NULL,             -- ID de la moneda del gasto
    Monto DECIMAL(18, 2) NOT NULL,     -- Monto gastado
    Fecha DATETIME NOT NULL,           -- Fecha en la que se realizó el gasto
    Descripcion NVARCHAR(255),         -- Descripción opcional del gasto
    CONSTRAINT FK_Gastos_Usuarios FOREIGN KEY (UsuarioId) REFERENCES Usuarios(Id), -- Relación con Usuarios
    CONSTRAINT FK_Gastos_Categorias FOREIGN KEY (CategoriaId) REFERENCES Categorias(Id), -- Relación con Categorías
    CONSTRAINT FK_Gastos_Monedas FOREIGN KEY (MonedaId) REFERENCES Monedas(Id) -- Relación con Monedas
);

-- Tabla Presupuestos
CREATE TABLE Presupuestos (
    Id INT IDENTITY(1,1) PRIMARY KEY,  -- Clave primaria con identidad
    UsuarioId INT NOT NULL,            -- ID del usuario al que pertenece el presupuesto
    CategoriaId INT NOT NULL,          -- ID de la categoría asociada al presupuesto
    MonedaId INT NOT NULL,             -- ID de la moneda del presupuesto
    Limite DECIMAL(18, 2) NOT NULL,    -- Límite de gasto permitido
    FechaInicio DATETIME NOT NULL,     -- Fecha de inicio del presupuesto
    FechaFin DATETIME NOT NULL,        -- Fecha de finalización del presupuesto
    CONSTRAINT FK_Presupuestos_Usuarios FOREIGN KEY (UsuarioId) REFERENCES Usuarios(Id), -- Relación con Usuarios
    CONSTRAINT FK_Presupuestos_Categorias FOREIGN KEY (CategoriaId) REFERENCES Categorias(Id), -- Relación con Categorías
    CONSTRAINT FK_Presupuestos_Monedas FOREIGN KEY (MonedaId) REFERENCES Monedas(Id) -- Relación con Monedas
);
