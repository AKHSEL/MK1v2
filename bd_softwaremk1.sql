use BDSoftwareMK1;
create table Usuario	
(
  
  IDUser int primary key  auto_increment,
  NombreUser varchar(25) not null,
  ClaveUser varchar(8) not null ,
  indicador varchar(6)
);

create table Trainers	
(
  
  IDTrainer int primary key  auto_increment,
  NombreTrainer varchar(25) not null,
  EdadTrainer varchar(8) not null, 
  AñosExp int not null,
  Especialidad varchar(24) not null,
  Horario date not null,
  indicador varchar(6)
);

create table Clientes
( 
 IDCli int primary key  auto_increment,
 IDTrainer int not null,
 IDNutr int not null,
 NombreCli varchar(25) not null,
 EdadCli int not null,
 TipoPlan varchar(30) not null,
 TipoPago varchar (39) not null,
 Estadia varchar(30) not null,
 Horario date not null,
 indicador varchar(6)
);

create table Nutricionista
(

 IDNutr int primary key  auto_increment,
 NombreNutr varchar(25) not null,
 EdadNutr int not null,
 GradoAcad varchar(25) not null,
  indicador varchar(6)
);

alter table Clientes add foreign key (IDTrainer) references  Trainers(IDTrainer);
alter table Clientes add foreign key (IDNutr) references  Nutricionista(IDNutr);

insert into Usuario (indicador,NombreUser,ClaveUser) values ('1','Angel','1234');
insert into Usuario (indicador,NombreUser,ClaveUser) values ('2','aaa','111');

select * from usuario