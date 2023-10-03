CREATE DATABASE hotel_alura_co;

use hotel_alura_co;

create table reservas(
id int not null auto_increment,
fecha_entrada date not null,
fecha_salida date not null,
valor varchar(50),
forma_de_pago varchar(50)not null,
PRIMARY KEY (id)
);

create table huespedes(
id int not null auto_increment,
nombre varchar(50) not null,
apellido varchar(50) not null,
fecha_nacimiento date not null,
nacionalidad varchar(50) not null,
telefono varchar(50) not null,
id_reserva int not null,
primary key (id),
foreign key (id_reserva) references reservas(id)
);

create table usuarios(
nombre varchar (50),
contrasena varchar (50)
);

select * from huespedes;
insert into usuarios (nombre, contrasena) values('Bruce', '12345');