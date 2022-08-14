SELECT p.Nombre, h.ID_Historial, h.Fecha, h.Perro 
FROM historial h INNER JOIN perro p 
WHERE h.Perro = p.ID_Perro ORDER BY h.Fecha;

DELETE FROM historial WHERE Perro = 13;

DELETE FROM perro WHERE ID_Perro = 13;

