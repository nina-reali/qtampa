create database qtampa; 

use qtampa; 

create table cliente ( 

Idcliente  int primary key, 

representante varchar(50), 

email varchar(50), 

cpf char(14), 

cep char(9), 

rua varchar(50), 

número int, 

telefone char(11), 

qtdsensor int 

); 

insert into cliente values  

(01,'Rogerio','rogerio@gmail.com','991.919.558-82','02167-070','Rua Galileu Gaia',60,11996566383, 3),

(02,'Paula','paula@hotmail.com','059.429.938-15','05572-060','Rua Perez Casas',25,11959912545,3), 

(03,'Lucas','lucas@yahoo.com','113.893.178-03','04784-000','Rua Antônio Mariano',300,11940669326,4), 

(04,'Theodoro','theodoro@gmail.com','421.338.478-04','02325-640','Viela B',50,11981428600,4), 

(05,'Camila','camila@gmail.com','918.033.538-13','04950-006','Rua Hugo Pierson',373,11983745938,2), 

(06,'Matheus','matheus@yahoo.com','920.341.518-10','03471-020','Rua João Pujol',431,11983747263,5), 

(07,'Silvio','silvio@gmail.com','908.887.968-03','03144-040','Rua Cabinda',609,11990938473,3), 

(08,'Fatima','fatima@gmail.com','635.878.048-42','02017-002','Rua Alfredo Pujol',934,11939482948,2), 

(09,'Andre','andre@gmail.com','636.871.528-63','18070-884','Rua Gilson Castilho e Filho',79,11938473847,5), 

(10,'Fernando','fernando@gmail.com','990.618.708-52','13224-230','Rua Mercúrio',134,11937459898,4); 


create table empresa ( 

nome varchar(50), 

CNPJ char(18) primary key, 

email varchar(50), 

telefone char(11), 

zona_desejada varchar(50) 

); 

insert into empresa values 

('Recicla BR','50.312.404/0001-99','reciclabr@gmail.com','1122221085','Norte'), 

('Fox Reciclagem','03.613.347/0001-06','foxreciclagem@hotmail.com','1121757272','Oeste'), 

('JN reciclagem','36.073.257/0001-10','jnreciclagem@gmail.com','1126362805','Norte'), 

('Coletatec','84.738.403/0001-22','coletatec@yahoo.com','1126316265','Leste'); 

select * from empresa; 

 

 create table sensor ( 

idsensor int primary key, 

idcliente int, 

FOREIGN KEY (idcliente) 

REFERENCES cliente (idcliente), 

nivel char(3) ,

tipolixo varchar(50)

); 

insert into sensor values 

(01,01,'80%','papel'), 

(02,02,'40%','orgânico'),

(03,03,'30%','alumínio'),

(04,04,'60%','plástico'),

(05,05,'50%','plástico'),

(06,05,'20%','vidro'),

(07,06,'80%','orgânico'),

(08,06,'90%','papel');

select * from cliente;
select * from empresa; 
select * from sensor; 
