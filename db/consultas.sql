-- 1
SELECT p.id, p.nombre AS producto, c.nombre AS categoria, p.precio, p.stock
FROM productos p
JOIN categorias c ON p.categoria_id = c.id
ORDER BY p.nombre;

-- 2
SELECT id, nombre, stock
FROM productos
WHERE stock < 5;

-- 3
SELECT c.nombre AS categoria, AVG(p.precio) AS precio_promedio
FROM productos p
JOIN categorias c ON p.categoria_id = c.id
GROUP BY c.nombre;

-- 4
SELECT cl.nombre AS cliente, pe.id AS pedido, pe.fecha, pe.estado
FROM pedidos pe
JOIN clientes cl ON pe.cliente_id = cl.id
WHERE cl.id = 1;

-- 5
SELECT pedido_id, SUM(cantidad * precio_unitario) AS total
FROM detalle_pedido
GROUP BY pedido_id;

-- 6
SELECT cl.nombre AS cliente, COUNT(pe.id) AS cantidad_pedidos
FROM clientes cl
JOIN pedidos pe ON pe.cliente_id = cl.id
GROUP BY cl.id, cl.nombre
HAVING COUNT(pe.id) > 2;

-- 7
DELETE FROM clientes
WHERE id = 6
  AND id NOT IN (SELECT cliente_id FROM pedidos);
