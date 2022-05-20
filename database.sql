CREATE TABLE PRODUCTO(
	codpro int not null AUTO_INCREMENT,
	nompro varchar(50) null,
	despro varchar(100) null,
	prepro number(6,2) null,
	estado int null,
	CONSTRAINT pk_producto
	PRIMARY KEY (codpro)
);

alter table PRODUCTO add rutimapro varchar(100) null;

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,rutimapro)
VALUES ('Producto cafe 1','Delicioso cafe para tomar en las mañanas','150.00',1,'product-1.png')
,('Producto cafe 2','Delicioso cafe para tomar en las mañanas','130.00',1,'product-2.png')
,('Producto cafe 3','Nada mejor que tomar cafe recien hecho por las mañanas','150.00',1,'product-3.png')
,('Producto cafe 4','Delicioso cafe para tomar en las mañanas','150.00',1,'product-1.png')
,('Producto cafe 5','Delicioso cafe para tomar en las mañanas','150.00',1,'product-2.png')
,('Producto cafe 6','Nada mejor que tomar cafe recien hecho por las mañanas','130.00',1,'product-3.png')
,('Producto cafe 7','Delicioso cafe para tomar en las mañanas','130.00',1,'product-1.png')
,('Producto cafe 8','Delicioso cafe para tomar en las mañanas','150.00',1,'product-2.png')
,('Producto cafe 9','Delicioso cafe para tomar en las mañanas','150.00',1,'product-3.png')
,('Producto cafe 10','Delicioso cafe para tomar en las mañanas','130.00',1,'product-1.png')
,('Producto cafe 11','Delicioso cafe para tomar en las mañanas','150.00',1,'product-2.png')
,('Producto cafe 12','Delicioso cafe para tomar en las mañanas','150.00',1,'product-3.png')
,('Producto cafe 13','Nada mejor que tomar cafe recien hecho por las mañanas','150.00',1,'product-1.png')
,('Producto cafe 14','Delicioso cafe para tomar en las mañanas','150.00',1,'product-2.png')
,('Producto cafe 15','Delicioso cafe para tomar en las mañanas','150.00',1,'product-3.png')
,('Producto cafe 16','Nada mejor que tomar cafe recien hecho por las mañanas','130.00',1,'product-1.png')
,('Producto cafe 17','Nada mejor que tomar cafe recien hecho por las mañanas','150.00',1,'product-2.png')
,('Producto cafe 18','Delicioso cafe para tomar en las mañanas','150.00',1,'product-3.png')
,('Producto cafe 19','Delicioso cafe para tomar en las mañanas','130.00',1,'product-1.png')
,('Producto cafe 20','Delicioso cafe para tomar en las mañanas','130.00',1,'product-2.png')
,('Producto cafe 21','Nada mejor que tomar cafe recien hecho por las mañanas','150.00',1,'product-3.png')
;

CREATE TABLE USUARIO(
	codusu int not null AUTO_INCREMENT,
	nomusu varchar(50) ,
	apeusu varchar(50) ,
	emausu varchar(50) not null,
	pasusu varchar(20) not null,
	estado int not null,
	CONSTRAINT pk_usuario
	PRIMARY KEY (codusu)
);

INSERT INTO USUARIO (nomusu,apeusu,emausu,pasusu,estado)
VALUES ('Usuario','Demo','correo@example.com','123456',1);

create table PEDIDO(
	codped int not null AUTO_INCREMENT,
	codusu int not null,
	codpro int not null,
	fecped datetime not null,
	estado int not null,
	dirusuped varchar(50) not null,
	telusuped varchar(12) not null,
	PRIMARY KEY (codped)
);
alter table PEDIDO add token varchar(30) null;