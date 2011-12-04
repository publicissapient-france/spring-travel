 drop sequence hibernate_sequences if exists
 drop table authorities if exists
 drop table booking if exists
 drop table customer if exists
 drop table hotel if exists
 drop table users if exists
 create sequence hibernate_sequences
 CREATE CACHED TABLE AUTHORITIES ( USERNAME varchar(255), AUTHORITY varchar(255) ) ;
 CREATE CACHED TABLE BOOKING ( ID bigint PRIMARY KEY NOT NULL, BEDS integer NOT NULL, CHECKINDATE date, CHECKOUTDATE date, CITY varchar(255), CREDITCARDEXPIRYMONTH varchar(255), CREDITCARDEXPIRYYEAR integer NOT NULL, CREDITCARDNAME varchar(255), CREDITCARDNUMBER varchar(255), CREDITCARDTYPE varchar(255), LINE1 varchar(255), PHONE varchar(255), SMOKING bit NOT NULL, STATE varchar(255), ZIP varchar(255), HOTEL_ID bigint, USER_USERNAME varchar(255) )
 CREATE CACHED TABLE CUSTOMER ( USERNAME varchar(255) PRIMARY KEY NOT NULL, EMAIL varchar(255), FIRST varchar(255), LAST varchar(255), PASSWORD varchar(255) )
 CREATE CACHED TABLE HOTEL ( ID bigint PRIMARY KEY NOT NULL, ADDRESS varchar(255), CITY varchar(255), COUNTRY varchar(255), NAME varchar(255), PRICE numeric, STATE varchar(255), ZIP varchar(255) )
 CREATE CACHED TABLE USERS ( USERNAME varchar(255), PASSWORD varchar(255), ENABLED boolean )
 ALTER TABLE BOOKING ADD CONSTRAINT FK6713A039BF91BB8D FOREIGN KEY (HOTEL_ID) REFERENCES HOTEL (ID)
 ALTER TABLE BOOKING ADD CONSTRAINT FK6713A03975CC21E2 FOREIGN KEY (USER_USERNAME) REFERENCES CUSTOMER (USERNAME)
