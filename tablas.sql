CREATE TABLE 'carro'(
'id_carro' int(11) NOT NULL,
'nombre'  varchar(11) NOT NULL,
'año'     int(5) NOT NULL,
'tipo'    varchar(11) NOT NULL,
'version' varchar(11) NOT NULL,
'color'   varchar(11) NOT NULL,
PRIMARY KEY ('id_carro'),
FOREING KEY ('id_marca')
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE 'marca'(
'id_marca' int(11) NOT NULL,
'nombre'   varchar(11) NOT NULL,
'categoria' varchar(11) NOT NULL,
'modelo'   varchar(11) NOT NULL,
PRIMARY KEY ('id_marca')
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE 'distribuidor'(
'id_distribuidor' int(11) NOT NULL,
'nombre'  varchar(11) NOT NULL,
'ubicacion' varchar(20) NOT NULL,
PRIMARY KEY ('id_distribuidor')
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE 'stock'(
'Cantidad'  int(5) NOT NULL,
FOREING KEY ('id_carro'),
FOREING KEY ('id_distribuidor')
) ENGINE=InnoDB DEFAULT CHARSET=latin1;