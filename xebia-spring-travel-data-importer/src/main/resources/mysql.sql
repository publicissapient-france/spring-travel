alter table Booking drop foreign key FK6713A039BF91BB8D
alter table Booking drop foreign key FK6713A03975CC21E2
alter table Customer_Booking drop foreign key FKBAF24CF8C283C22C
alter table Customer_Booking drop foreign key FKBAF24CF8AFFB732F
alter table Hotel_Booking drop foreign key FKC3FD448EC283C22C
alter table Hotel_Booking drop foreign key FKC3FD448EBF91BB8D
drop table if exists Booking
drop table if exists Customer
drop table if exists Customer_Booking
drop table if exists Hotel
drop table if exists Hotel_Booking
drop table if exists hibernate_sequences
create table Booking (id bigint not null, beds integer not null, checkinDate date, checkoutDate date, city varchar(255), creditCardExpiryMonth varchar(255), creditCardExpiryYear integer not null, creditCardName varchar(255), creditCardNumber varchar(255), creditCardType varchar(255), line1 varchar(255), phone varchar(255), smoking bit not null, state varchar(255), zip varchar(255), hotel_id bigint, user_username varchar(255), primary key (id))
create table Customer (username varchar(255) not null, email varchar(255), first varchar(255), last varchar(255), password varchar(255), primary key (username))
create table Customer_Booking (Customer_username varchar(255) not null, bookings_id bigint not null, primary key (Customer_username, bookings_id), unique (bookings_id))
create table Hotel (id bigint not null auto_increment, address varchar(255), city varchar(255), country varchar(255), name varchar(255), price decimal(6,2), state varchar(255), zip varchar(255), primary key (id))
create table Hotel_Booking (Hotel_id bigint not null, bookings_id bigint not null, primary key (Hotel_id, bookings_id), unique (bookings_id))
alter table Booking add index FK6713A039BF91BB8D (hotel_id), add constraint FK6713A039BF91BB8D foreign key (hotel_id) references Hotel (id)
alter table Booking add index FK6713A03975CC21E2 (user_username), add constraint FK6713A03975CC21E2 foreign key (user_username) references Customer (username)
alter table Customer_Booking add index FKBAF24CF8C283C22C (bookings_id), add constraint FKBAF24CF8C283C22C foreign key (bookings_id) references Booking (id)
alter table Customer_Booking add index FKBAF24CF8AFFB732F (Customer_username), add constraint FKBAF24CF8AFFB732F foreign key (Customer_username) references Customer (username)
alter table Hotel_Booking add index FKC3FD448EC283C22C (bookings_id), add constraint FKC3FD448EC283C22C foreign key (bookings_id) references Booking (id)
alter table Hotel_Booking add index FKC3FD448EBF91BB8D (Hotel_id), add constraint FKC3FD448EBF91BB8D foreign key (Hotel_id) references Hotel (id)
create table hibernate_sequences ( sequence_name varchar(255),  sequence_next_hi_value integer )
