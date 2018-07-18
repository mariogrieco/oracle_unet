--start productos data

INSERT INTO PRODUCTOS VALUES (
  '00001',
  'EMPANADA',
  'EMPANADA PA LOS PANA',
  '990294739',
  '857494090',
  NULL, 
  NULL
);

INSERT INTO PRODUCTOS VALUES (
  '00002',
  'PASTELES NO EMPANADAS',
  'PASTELES PA MAMA',
  '990294739',
  '857494090',
  NULL, 
  NULL
);

INSERT INTO PRODUCTOS VALUES (
  '00003',
  'EMPANADAAS NO PASTELES',
  'EMPANADAS PA MAMA',
  '990294739',
  '857494090',
  '759898474', 
  '058467643'
);

INSERT INTO PRODUCTOS VALUES (
  '00004',
  'TEKCHONGOS',
  'RICO PA',
  '990294739',
  '857494090',
  '759898474', 
  'REGIS'
);

INSERT INTO PRODUCTOS VALUES (
  '00005',
  'YUKA PA',
  'PA TI PAPA',
  '990294739',
  '857494090',
  '759898474', 
  '058467643'
);

commit;
-- end productos data


--  start REGISTRO_OP
	INSERT INTO REGISTRO_OP VALUES (
		'0001' ,
		'V',
		TO_DATE(sysdate, 'dd-mm-yyy'),
		'00001'
	);

	INSERT INTO REGISTRO_OP VALUES (
		'0002' ,
		'V',
		TO_DATE(sysdate, 'dd-mm-yyy'),
		'00002'
	);
  	INSERT INTO REGISTRO_OP VALUES (
		'0003' ,
		'D',
		TO_DATE(sysdate, 'dd-mm-yyy'),
		'00003'
	);
  	INSERT INTO REGISTRO_OP VALUES (
		'0004' ,
		'V',
		TO_DATE(sysdate, 'dd-mm-yyy'),
		'00004'
	);
  	INSERT INTO REGISTRO_OP VALUES (
		'0005' ,
		'D',
		TO_DATE(sysdate, 'dd-mm-yyy'),
		'00004'
	);

    	INSERT INTO REGISTRO_OP VALUES (
		'0006' ,
		'D',
		TO_DATE(sysdate, 'dd-mm-yyy'),
		'00004'
	);

  INSERT INTO REGISTRO_OP VALUES (
		'0007' ,
		'D',
		TO_DATE(sysdate, 'dd-mm-yyy'),
		'00005'
	);


  INSERT INTO REGISTRO_OP VALUES (
		'0008' ,
		'D',
		TO_DATE(sysdate, 'dd-mm-yyy'),
		'00004'
	);
  commit;
-- end REGISTRO_OP


-- start EMPLEADOS
INSERT INTO EMPLEADOS VALUES (
	'0001',
	'YASIIKE',
	'GASMILE',
	'26205990',
	'GASMILE@ELLA.ESO'
);

INSERT INTO EMPLEADOS VALUES (
	'0002',
	'LUIS',
	'PANITA',
	'42205990',
	'PANITAX@TATTA.THAT'
);

INSERT INTO EMPLEADOS VALUES (
	'0003',
	'ANTONELLA',
	'LAURANO',
	'24674982',
	'ANTO@HOTMAIL.TU.SABE'
);

INSERT INTO EMPLEADOS VALUES (
	'0004',
	'DANIEL',
	'NO RECUERDO',
	'1048489303',
	'DANIEAL@SUGMAIL.ESO'
);

INSERT INTO EMPLEADOS VALUES (
	'0005',
	'MARIO',
	'GRIECO',
	'26305981',
	'MARIOJOSUEXZ@GMAIL.COM'
);

COMMIT;
-- end EMPLEADOS

-- start REGISTRO_TELEFONO_EMP

	INSERT INTO REGISTRO_TELEFONO_EMP VALUES (
			'001',
			'5849301235',
			'0003'
	);

  	INSERT INTO REGISTRO_TELEFONO_EMP VALUES (
			'002',
			'1312312512',
			'0005'
	);
  	INSERT INTO REGISTRO_TELEFONO_EMP VALUES (
			'003',
			'574146029280',
			'0001'
	);
  	INSERT INTO REGISTRO_TELEFONO_EMP VALUES (
			'004',
			'582347593',
			'0004'
	);
  	INSERT INTO REGISTRO_TELEFONO_EMP VALUES (
			'005',
			'58234759224',
			'0003'
	);

COMMIT;
-- end REGISTRO_TELEFONO_EMP



-- START DETALLE_PRO

	INSERT INTO DETALLE_PRO VALUES (
			'0001',
	    1000000.500,
			500,
			'00001'
	);


  	INSERT INTO DETALLE_PRO VALUES (
			'0002',
	    3500000.124,
			2500,
			'00002'
	);

  INSERT INTO DETALLE_PRO VALUES (
			'0003',
	    1500000.250,
			1000,
			'00003'
	);

  	INSERT INTO DETALLE_PRO VALUES (
			'0004',
	    500000.000,
			1500,
			'00004'
	);

  INSERT INTO DETALLE_PRO VALUES (
			'0005',
	    2400000.000,
			1250,
			'00005'
	);

COMMIT;

-- END DETALLE_PRO

-- START DETALLE_OP
INSERT INTO DETALLE_OP VALUES (
  '001',
  1000000,
  (SELECT dp.PESO
    FROM registro_op r
    INNER JOIN PRODUCTOS p
    on p.producto_id = r.producto_id
    INNER JOIN DETALLE_PRO dp
    on p.producto_id = dp.producto_id
    WHERE P.PRODUCTO_ID LIKE('00001') AND ROWNUM <= 1),
  10,
  25,
  (SELECT r.registro_id
  FROM registro_op r
  INNER JOIN PRODUCTOS p
  on p.producto_id = r.producto_id
  INNER JOIN DETALLE_PRO dp
  on p.producto_id = dp.producto_id
  WHERE P.PRODUCTO_ID LIKE('00001') AND ROWNUM <= 1)
);

INSERT INTO DETALLE_OP VALUES (
  '002',
  20000000,
  (SELECT dp.PESO
    FROM registro_op r
    INNER JOIN PRODUCTOS p
    on p.producto_id = r.producto_id
    INNER JOIN DETALLE_PRO dp
    on p.producto_id = dp.producto_id
    WHERE P.PRODUCTO_ID LIKE('00002') AND ROWNUM <= 1),
  10,
  25,
  (SELECT r.registro_id
  FROM registro_op r
  INNER JOIN PRODUCTOS p
  on p.producto_id = r.producto_id
  INNER JOIN DETALLE_PRO dp
  on p.producto_id = dp.producto_id
  WHERE P.PRODUCTO_ID LIKE('00002') AND ROWNUM <= 1)
);


INSERT INTO DETALLE_OP VALUES (
  '003',
  4500000,
  (SELECT dp.PESO
    FROM registro_op r
    INNER JOIN PRODUCTOS p
    on p.producto_id = r.producto_id
    INNER JOIN DETALLE_PRO dp
    on p.producto_id = dp.producto_id
    WHERE P.PRODUCTO_ID LIKE('00003') AND ROWNUM <= 1),
  10,
  25,
  (SELECT r.registro_id
  FROM registro_op r
  INNER JOIN PRODUCTOS p
  on p.producto_id = r.producto_id
  INNER JOIN DETALLE_PRO dp
  on p.producto_id = dp.producto_id
  WHERE P.PRODUCTO_ID LIKE('00003') AND ROWNUM <= 1)
);


INSERT INTO DETALLE_OP VALUES (
  '004',
  5000000,
  (SELECT dp.PESO
    FROM registro_op r
    INNER JOIN PRODUCTOS p
    on p.producto_id = r.producto_id
    INNER JOIN DETALLE_PRO dp
    on p.producto_id = dp.producto_id
    WHERE P.PRODUCTO_ID LIKE('00004') AND ROWNUM <= 1),
  10,
  25,
  (SELECT r.registro_id
  FROM registro_op r
  INNER JOIN PRODUCTOS p
  on p.producto_id = r.producto_id
  INNER JOIN DETALLE_PRO dp
  on p.producto_id = dp.producto_id
  WHERE P.PRODUCTO_ID LIKE('00004') AND ROWNUM <= 1)
);

INSERT INTO DETALLE_OP VALUES (
  '005',
  1500000,
  (SELECT dp.PESO
    FROM registro_op r
    INNER JOIN PRODUCTOS p
    on p.producto_id = r.producto_id
    INNER JOIN DETALLE_PRO dp
    on p.producto_id = dp.producto_id
    WHERE P.PRODUCTO_ID LIKE('00005') AND ROWNUM <= 1),
  10,
  25,
  (SELECT r.registro_id
  FROM registro_op r
  INNER JOIN PRODUCTOS p
  on p.producto_id = r.producto_id
  INNER JOIN DETALLE_PRO dp
  on p.producto_id = dp.producto_id
  WHERE P.PRODUCTO_ID LIKE('00005') AND ROWNUM <= 1)
);
COMMIT;

-- END DETALLE_OP

