Q1
SELECT DISTINCT producto AS producto_disponible
FROM ventas;

Q2
SELECT cliente_id, fecha, cantidad
FROM ventas
WHERE fecha BETWEEN '2024-01-01' AND '2024-03-31' AND cantidad > 5;

Q3
SELECT vendedor, SUM(cantidad * precio_unitario) AS ingreso_bruto_total
FROM ventas
GROUP BY vendedor
HAVING ingreso_bruto_total > 10000;

Q4
SELECT categoria, COUNT(*) AS TOTAL_PEDIDOS, SUM(cantidad) AS TOTAL_UNIDADES_VENDIDAS, AVG(precio_unitario) AS PROMEDIO_UNITARIO
FROM ventas
GROUP BY categoria;

Q5
CREATE TABLE IF NOT EXISTS vendedores (
        vendedor TEXT PRIMARY KEY,
        zona TEXT,
        meta_mensual REAL);
INSERT INTO vendedores (vendedor, zona, meta_mensual) VALUES
    ('Ana López', 'Norte', 8000),
    ('Carlos Ruiz', 'Sur', 7500),
    ('Luis Mora', 'Norte', 8000),
    ('Maria Torres', 'Centro', 7000);

SELECT v.vendedor,
        v.zona,
        v.meta_mensual,
        SUM(f.cantidad * f.precio_unitario) AS ventas_totales,
        (SUM(f.cantidad * f.precio_unitario) / v.meta_mensual) * 100.0 AS porcentaje_cumplimiento
FROM vendedores v
INNER JOIN ventas f ON v.vendedor = f.vendedor
GROUP BY v.vendedor, v.zona, v.meta_mensual;

Q6
SELECT cliente_id, cliente_nombre, SUM(cantidad * precio_unitario) AS INGRESO_TOTAL
FROM ventas
WHERE fecha BETWEEN '2024-01-01' AND '2024-06-31'
GROUP BY cliente_id
ORDER BY INGRESO_TOTAL DESC
LIMIT 1;