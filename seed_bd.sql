-- Insertar datos en la tabla Usuarios
INSERT INTO Usuarios (Nombre, Email, PasswordHash, FechaRegistro)
VALUES 
    ('Juan Pérez', 'juan.perez@example.com', 'hashedpassword1', GETDATE()),
    ('María López', 'maria.lopez@example.com', 'hashedpassword2', GETDATE()),
    ('Carlos Ramírez', 'carlos.ramirez@example.com', 'hashedpassword3', GETDATE());

-- Insertar datos en la tabla Categorías
INSERT INTO Categorias (Nombre, Descripcion)
VALUES 
    ('Alimentación', 'Gastos en comida y supermercado'),
    ('Transporte', 'Gastos en transporte público o gasolina'),
    ('Entretenimiento', 'Gastos en ocio y diversión');

-- Insertar datos en la tabla Monedas
INSERT INTO Monedas (Codigo, Nombre, Simbolo)
VALUES 
    ('USD', 'Dólar estadounidense', '$'),
    ('EUR', 'Euro', '€'),
    ('COP', 'Peso colombiano', '$');

-- Insertar datos en la tabla Gastos
INSERT INTO Gastos (UsuarioId, CategoriaId, MonedaId, Monto, Fecha, Descripcion)
VALUES 
    (1, 1, 1, 150.75, '2025-04-05', 'Compra en supermercado'),
    (2, 2, 2, 50.00, '2025-04-05', 'Metro al trabajo'),
    (3, 3, 3, 200.00, '2025-03-08', 'Entradas para el cine');

-- Insertar datos en la tabla Presupuestos
INSERT INTO Presupuestos (UsuarioId, CategoriaId, MonedaId, Limite, FechaInicio, FechaFin)
VALUES 
    (1, 1, 1, 380.00, '2025-01-01', '2025-01-30'),
    (2, 2, 3, 7000000.00, '2025-02-01', '2025-02-28'),
    (3, 3, 3, 1300000.00, '2025-03-01', '2025-03-30');