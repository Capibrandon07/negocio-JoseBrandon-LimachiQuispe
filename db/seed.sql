INSERT INTO categorias (id, nombre) VALUES
(1, 'Bebidas'),
(2, 'Snacks'),
(3, 'Lácteos');

INSERT INTO productos (id, nombre, categoria_id, precio, stock) VALUES
(1,  'Coca-Cola 2L',        1, 12.00, 40),
(2,  'Jugo del Valle 1L',   1,  9.50, 25),
(3,  'Agua Vital 600ml',    1,  4.00,  3),
(4,  'Cerveza Paceña 620ml',1, 15.00, 60),
(5,  'Papas Lays 150g',     2,  8.00, 30),
(6,  'Galletas Oreo',       2,  6.50,  4),
(7,  'Maní salado 200g',    2,  7.00, 18),
(8,  'Chocolate Sublime',   2,  3.50, 50),
(9,  'Leche PIL 1L',        3,  7.50, 35),
(10, 'Yogur Pil Frutilla',  3,  5.00,  2),
(11, 'Queso Menonita 500g', 3, 28.00, 12),
(12, 'Mantequilla PIL 200g',3, 14.00, 20);

INSERT INTO clientes (id, nombre, telefono, email) VALUES
(1, 'María Quispe',    '70123456', 'maria.quispe@gmail.com'),
(2, 'Juan Mamani',     '71234567', 'juan.mamani@gmail.com'),
(3, 'Carla Flores',    '72345678', 'carla.flores@gmail.com'),
(4, 'Luis Condori',    '73456789', 'luis.condori@gmail.com'),
(5, 'Ana Choque',      '74567890', 'ana.choque@gmail.com'),
(6, 'Pedro Villca',    '75678901', 'pedro.villca@gmail.com');

INSERT INTO pedidos (id, cliente_id, fecha, estado) VALUES
(1,  1, '2026-09-01', 'entregado'),
(2,  1, '2026-09-05', 'entregado'),
(3,  1, '2026-09-20', 'pendiente'),
(4,  2, '2026-09-03', 'entregado'),
(5,  2, '2026-09-12', 'cancelado'),
(6,  3, '2026-09-08', 'entregado'),
(7,  3, '2026-09-15', 'entregado'),
(8,  3, '2026-09-25', 'pendiente'),
(9,  4, '2026-09-18', 'entregado'),
(10, 5, '2026-09-22', 'pendiente');

INSERT INTO detalle_pedido (id, pedido_id, producto_id, cantidad, precio_unitario) VALUES
(1,  1, 1, 2, 12.00),
(2,  1, 5, 3,  8.00),
(3,  1, 9, 1,  7.50),
(4,  2, 4, 6, 15.00),
(5,  2, 8, 4,  3.50),
(6,  3, 2, 2,  9.50),
(7,  3, 11,1, 28.00),
(8,  4, 1, 1, 12.00),
(9,  4, 6, 2,  6.50),
(10, 4, 12,1, 14.00),
(11, 5, 3, 5,  4.00),
(12, 5, 7, 2,  7.00),
(13, 6, 9, 3,  7.50),
(14, 6, 10,2,  5.00),
(15, 6, 8, 5,  3.50),
(16, 7, 4, 3, 15.00),
(17, 7, 5, 2,  8.00),
(18, 8, 11,2, 28.00),
(19, 8, 2, 1,  9.50),
(20, 9, 1, 3, 12.00),
(21, 9, 7, 1,  7.00),
(22, 9, 12,2, 14.00),
(23, 10,6, 4,  6.50),
(24, 10,9, 2,  7.50),
(25, 10,3, 2,  4.00);
