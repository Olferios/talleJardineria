 

create database ferreteria;
use ferreteria;

create table pais (
    id int auto_increment,
    nombre varchar(20),
    constraint PK_Pais_Id primary key (id)
);
create table region(
    id int auto_increment,
    nombre varchar(20),
    fkIdPais int(11),
    constraint PkRegionId primary key (id),
    constraint fkPaisId foreign key (fkIdPais) references pais(id)
);
create table ciudad(
    id int auto_increment,
    nombre varchar(20),
    fkIdRegion int(11),
    codigoPostal varchar(10),
    constraint PkCiudadId primary key (id),
    constraint fkRegionId foreign key (fkIdRegion) references region(id)
);
create table gamaProducto(
    id int auto_increment,
    gama varchar(50),
    descripcionTexto text,
    decripcionHtml text,
    imagen varchar(256),
    constraint PkGamaId primary key (id)    
);
create table formaPago(
    id int auto_increment,
    nombre varchar(20),
    constraint PkFormaPagoId primary key (id)    
);

create table estado(
    id int auto_increment,
    nombre varchar(20),
    constraint PkEstadoId primary key (id)
);
create table tipoTelefono(
    id int auto_increment,
    nombre varchar(20),
    constraint PkTipoTelefonoId primary key (id)
);
create table tipoDireccion(
    id int auto_increment,
    nombre varchar(20),
    constraint PkTipoDireccionId primary key (id)
);

create table proveedor(
    id int auto_increment,
    nombre varchar(20),
    NumIdentificacion varchar(20),    
    fkIdCiudad int(11),
    constraint PkIdProveedor primary key (id),
    constraint fkIdCiudad foreign key (fkIdCiudad) references ciudad(id)
);
create table producto(
    id int auto_increment,
    nombre varchar(20),
    fkIdgama int(11),
    dimensiones varchar(25),
    fkIdProveedor int(11),
    descripcion text,
    cantidadStock smallint(6),
    precioVenta decimal(15,2),
    precioProveedor decimal(15,2),
    constraint PkIdProducto primary key (id),
    constraint fkIdGama foreign key (fkIdGama) references gamaProducto(id),
    constraint fkIdProveedor foreign key (fkIdProveedor) references proveedor(id)
    
);
create table oficina(
    id int auto_increment,
    nombre varchar(20),
    fkIdCiudad int(11),
    constraint PkIdOficina primary key (id),
    constraint fkCiudad foreign key (fkIdCiudad) references ciudad(id)
    
);
create table direccionOficina(
    id int auto_increment,
    direccion varchar(100),
    fkTipoDireccion int(11),
    fkIdOficina int(11),
    constraint PkIddireccionoficina primary key (id),
    constraint fk_TipoDireccion foreign key (fkTipoDireccion) references tipoDireccion(id),
    constraint fkOficina foreign key (fkIdOficina) references oficina(id)    
);
create table puesto(
    id int auto_increment,
    puesto varchar (50),
    constraint PkIdPuesto primary key (id)
);
create table empleado(
    id int auto_increment,
    codigoEmpleado int(11),
    nombre varchar(50),
    apellido1 varchar(50),
    apellido2 varchar(50),
    extension varchar(10),
    email varchar(100),
    fkIdOficina int(11),
    fkCodigoJefe int(11),
    fkPuesto int(11),
    constraint PkIdEmpleado primary key (id),
    constraint fkO_ficina foreign key (fkIdOficina) references oficina(id),
    constraint fk_CodJefe foreign key (fkCodigoJefe) references empleado(id),
    constraint fk_Puesto foreign key (fkPuesto) references puesto(id)    
);

create table cliente(
    id int auto_increment,
    nombreCliente varchar(50),
    nombreContacto varchar(30),
    apellidocontacto varchar(30),
    fkIdCiudad int(11),
    fkCodigoEmpleado int(11),
    limiteCredito decimal(15,2),
    constraint PkIdCliente primary key (id),
    constraint fk_Ciudad foreign key (fkIdCiudad) references ciudad(id),
    constraint fk_CodigoEmpleado foreign key (fkCodigoEmpleado) references empleado(id)    
);


create table pago(
	id int auto_increment,
	fkIdCliente int(11),
	fkFormaPago int(11),
	idTransaccion varchar(50),
	fechaPago date,
	total decimal(15,2),
	constraint PkIdPago primary key (id),
    	constraint fkCliente foreign key (fkIdCliente) references cliente(id),
    	constraint fk_FormaPago foreign key (fkFormaPago) references formaPago(id)
);
create table pedido(    
id int auto_increment,
fechaPedido date,
fechaEsperada date,
fechaEntrega date,
fkEstado int(11),
comentarios text,
fkIdCliente int(11),
constraint PkIdPedido primary key (id),
constraint fk_Estado foreign key (fkEstado) references estado(id),
    	constraint fk_Cliente foreign key (fkIdCliente) references cliente(id)  	

	
);
create table detallePedido(
	fkIdpedido int(11),
	fkIdProducto int(11),
	cantidad int (11),
	precioUnidad decimal (15,2),
	numeroLinea smallint(6),
constraint fkPedido foreign key (fkIdPedido) references pedido(id),
    	constraint fk_IdProducto foreign key (fkIdProducto) references producto(id)  
    
);


create table telefonoCliente(
    id int auto_increment,
    fkTipoTelefono int (11),
    fkIdCliente int(11),
    telefono varchar(20),
    constraint PkTelefonoClienteId primary key (id),
    constraint fk_TipoTelefonoId foreign key (fkTipoTelefono) references tipoTelefono(id),
    constraint fk_IdCliente foreign key (fkIdCliente) references cliente(id)
);
create table direccionCliente(
    id int auto_increment,
    direccion varchar(100),
    fkTipoDireccion int(11),
    fkIdCliente int(11),
    constraint PkIddireccionCliente primary key (id),
    constraint fk_IdTipoDireccion foreign key (fkTipoDireccion) references tipoDireccion(id),
    constraint fk_Id_Cliente foreign key (fkIdCliente) references cliente(id)    
);
create table telefonoProveedor(
    id int auto_increment,
    fkTipoTelefono int (11),
    fkIdProveedor int(11),
    telefono varchar(20),
    constraint PkIdTelefonoProveedor primary key (id),
    constraint fk_Tipo_TelefonoId foreign key (fkTipoTelefono) references tipoTelefono(id),
    constraint fk_IdProveedor foreign key (fkIdProveedor) references proveedor(id)
);
create table direccionProveedor(
    id int auto_increment,
    direccion varchar(100),
    fkTipoDireccion int(11),
    fkIdProveedor int(11),
    constraint PkIddireccionProveedor primary key (id),
    constraint fk_Id_TipoDireccion foreign key (fkTipoDireccion) references tipoDireccion(id),
    constraint fk_Id_Proveedor foreign key (fkIdProveedor) references proveedor(id)    
);
create table telefonoOficina(
    id int auto_increment,
    fkTipoTelefono int (11),
    fkIdOficina int(11),
    telefono varchar(20),
    constraint PkIdTelefonoOficina primary key (id),
    constraint fk_TipoTelefono_Id foreign key (fkTipoTelefono) references tipoTelefono(id),
    constraint fkId_Oficina foreign key (fkIdOficina) references oficina(id)
);












