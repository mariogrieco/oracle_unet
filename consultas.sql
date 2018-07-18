
-- 7.	Consultas Básicas de una tabla con funciones, 
-- condiciones y ordenamiento

 -- 1
  SELECT titulo, producto_id FROM productos
  WHERE producto_id IN('00001', '00003')
  ORDER BY producto_id, titulo; 
 -- 2
  SELECT titulo, registro, producto_id from productos
  WHERE registro IS NULL
  ORDER BY producto_id, registro, titulo;
 -- 3
  SELECT tipo, fecha from REGISTRO_OP
  WHERE fecha BETWEEN TO_DATE('01-05-2001', 'DD-MM-YYYY') AND TO_DATE('07-12-2018', 'DD-MM-YYYY')
  ORDER BY fecha;
-- 4
  SELECT registro_id,TIPO,fecha,producto_id FROM REGISTRO_OP
  WHERE upper(tipo) = upper('v')
  order by fecha;
-- 5
  SELECT registro_id,TIPO,fecha,producto_id FROM REGISTRO_OP
  WHERE upper(tipo) = upper('d')
  order by fecha;



-- - 8.	Consultas Básicas entre varias tablas con funciones, 
-- condiciones y ordenamiento

 -- 1
  SELECT R.registro_id,R.TIPO,R.fecha,P.titulo, P.producto_id
  FROM REGISTRO_OP R
  JOIN PRODUCTOS P
  ON P.PRODUCTO_ID = R.PRODUCTO_ID
  WHERE upper(tipo) = upper('v')
  order by R.TIPO;

 -- 2
  SELECT R.registro_id,R.TIPO,R.fecha,P.titulo, P.producto_id
  FROM REGISTRO_OP R
  JOIN PRODUCTOS P
  ON P.PRODUCTO_ID = R.PRODUCTO_ID
  WHERE upper(R.tipo) = upper('d')
  AND NOT P.TITULO LIKE('%YUKA PA%')
  order by R.fecha;
 -- 3
  SELECT sum(d.cantidad), r.tipo FROM REGISTRO_OP R
  INNER JOIN DETALLE_OP D
  ON d.detalle_id = d.detalle_id
  GROUP BY r.tipo, d.cantidad
  ORDER BY sum(d.cantidad), r.tipo  desc;

 -- 4

 -- 5
