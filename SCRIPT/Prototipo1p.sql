create database Prototipo1P;
use Prototipo1P;

create table login(
	id_usuario varchar(10) primary key,
    nombre_usuario varchar (50),
    contrasena varchar (100)
)engine = InnoDB default charset=latin1;

create table Productos(
	ID_Producto varchar(10) primary key,
    Nombre_Producto varchar(35),
    Precio_Producto float,
    Costo_Producto float
    
)engine = InnoDB default charset=latin1;

create table Inventario (
	ID_Inventario varchar(10) primary key,
    ID_Producto varchar(10), /*Foranea*/
    Stock int,   /*cantidad existente*/
    
    /*Llave foranea*/
    foreign key (ID_Producto) references Productos (ID_Producto)
)engine = InnoDB default charset=latin1;