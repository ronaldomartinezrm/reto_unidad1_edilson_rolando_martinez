SELECT DISTINCT producto AS producto_disponible
FROM ventas;

SELECT cliente_id, fecha, cantidad
FROM ventas
WHERE fecha BETWEEN '2024-01-01' AND '2024-03-31' AND cantidad > 5;

SELECT vendedor, SUM(cantidad * precio_unitario) AS ingreso_bruto_total
FROM ventas
GROUP BY vendedor
HAVING ingreso_bruto_total > 10000;