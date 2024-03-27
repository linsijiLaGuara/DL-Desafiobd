SELECT fecha, ROUND(AVG(cantidad), 0) AS promedio_diario
FROM INSCRITOS
WHERE fecha >= (
    SELECT fecha
    FROM INSCRITOS
    ORDER BY fecha
    OFFSET 2
    LIMIT 1
)
GROUP BY fecha;
