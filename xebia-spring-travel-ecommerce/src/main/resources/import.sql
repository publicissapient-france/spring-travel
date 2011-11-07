drop table authorities if exists
create table authorities(username varchar (255), authority varchar (255))
drop table users if exists
create table users (username varchar (255), password varchar (255), enabled boolean)

insert into Hotel (id, price, name, address, city, state, zip, country) values (1, 199, 'Westin Diplomat', '3555 S. Ocean Drive', 'Hollywood', 'FL', '33019', 'USA')
insert into Hotel (id, price, name, address, city, state, zip, country) values (2, 60, 'Jameson Inn', '890 Palm Bay Rd NE', 'Palm Bay', 'FL', '32905', 'USA')
insert into Hotel (id, price, name, address, city, state, zip, country) values (3, 199, 'Chilworth Manor', 'The Cottage, Southampton Business Park', 'Southampton', 'Hants', 'SO16 7JF', 'UK')
insert into Hotel (id, price, name, address, city, state, zip, country) values (4, 120, 'Marriott Courtyard', 'Tower Place, Buckhead', 'Atlanta', 'GA', '30305', 'USA')
insert into Hotel (id, price, name, address, city, state, zip, country) values (5, 180, 'Doubletree', 'Tower Place, Buckhead', 'Atlanta', 'GA', '30305', 'USA')
insert into Hotel (id, price, name, address, city, state, zip, country) values (6, 450, 'W Hotel', 'Union Square, Manhattan', 'NY', 'NY', '10011', 'USA')
insert into Hotel (id, price, name, address, city, state, zip, country) values (7, 450, 'W Hotel', 'Lexington Ave, Manhattan', 'NY', 'NY', '10011', 'USA')
insert into Hotel (id, price, name, address, city, state, zip, country) values (8, 250, 'Hotel Rouge', '1315 16th Street NW', 'Washington', 'DC', '20036', 'USA')
insert into Hotel (id, price, name, address, city, state, zip, country) values (9, 300, '70 Park Avenue Hotel', '70 Park Avenue', 'NY', 'NY', '10011', 'USA')
insert into Hotel (id, price, name, address, city, state, zip, country) values (10, 300, 'Conrad Miami', '1395 Brickell Ave', 'Miami', 'FL', '33131', 'USA')
insert into Hotel (id, price, name, address, city, state, zip, country) values (11, 80, 'Sea Horse Inn', '2106 N Clairemont Ave', 'Eau Claire', 'WI', '54703', 'USA')
insert into Hotel (id, price, name, address, city, state, zip, country) values (12, 90, 'Super 8 Eau Claire Campus Area', '1151 W Macarthur Ave', 'Eau Claire', 'WI', '54701', 'USA')
insert into Hotel (id, price, name, address, city, state, zip, country) values (13, 160, 'Marriot Downtown', '55 Fourth Street', 'San Francisco', 'CA', '94103', 'USA')
insert into Hotel (id, price, name, address, city, state, zip, country) values (14, 200, 'Hilton Diagonal Mar', 'Passeig del Taulat 262-264', 'Barcelona', 'Catalunya', '08019', 'Spain')
insert into Hotel (id, price, name, address, city, state, zip, country) values (15, 210, 'Hilton Tel Aviv', 'Independence Park', 'Tel Aviv', '', '63405', 'Israel')
insert into Hotel (id, price, name, address, city, state, zip, country) values (16, 240, 'InterContinental Tokyo Bay', 'Takeshiba Pier', 'Tokyo', '', '105', 'Japan')
insert into Hotel (id, price, name, address, city, state, zip, country) values (17, 130, 'Hotel Beaulac', ' Esplanade Leopold-Robert 2', 'Neuchatel', '', '2000', 'Switzerland')
insert into Hotel (id, price, name, address, city, state, zip, country) values (18, 140, 'Conrad Treasury Place', 'William & George Streets', 'Brisbane', 'QLD', '4001', 'Australia')
insert into Hotel (id, price, name, address, city, state, zip, country) values (19, 230, 'Ritz Carlton', '1228 Sherbrooke St', 'West Montreal', 'Quebec', 'H3G1H6', 'Canada')
insert into Hotel (id, price, name, address, city, state, zip, country) values (20, 460, 'Ritz Carlton', 'Peachtree Rd, Buckhead', 'Atlanta', 'GA', '30326', 'USA')
insert into Hotel (id, price, name, address, city, state, zip, country) values (21, 220, 'Swissotel', '68 Market Street', 'Sydney', 'NSW', '2000', 'Australia')
insert into Hotel (id, price, name, address, city, state, zip, country) values (22, 250, 'Melia White House', 'Albany Street', 'Regents Park London', '', 'NW13UP', 'Great Britain')
insert into Hotel (id, price, name, address, city, state, zip, country) values (23, 210, 'Hotel Allegro', '171 West Randolph Street', 'Chicago', 'IL', '60601', 'USA')

insert into users (username, password, enabled) values ('keith', '417c7382b16c395bc25b5da1398cf076', true)
insert into authorities (username, authority) values ('keith', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('keith', 'Keith', 'Donald', 'kdonald@springtravel.com')
insert into users (username, password, enabled) values ('erwin', '12430911a8af075c6f41c6976af22b09', true)
insert into authorities (username, authority) values ('erwin', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('erwin', 'Erwin', 'Vervaet', 'evervaet@springtravel.com')
insert into users (username, password, enabled) values ('jeremy', '57c6cbff0d421449be820763f03139eb', true)
insert into authorities (username, authority) values ('jeremy', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('jeremy', 'Jeremy', 'Grelle', 'jgrelle@springtravel.com')
insert into users (username, password, enabled) values ('scott', '942f2339bf50796de535a384f0d1af3e', true)
insert into authorities (username, authority) values ('scott', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('scott', 'Scott', 'Andrews', 'sandrews@springtravel.com')

insert into users (username, password, enabled) values ('user-1', '8d8f2628cfce1853efc0d027be4f6ce4', true)
insert into authorities (username, authority) values ('user-1', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-1', 'first-name-1', 'last-name-1', 'first-name-1.last-name-1@springtravel.com')
insert into users (username, password, enabled) values ('user-2', '67b942f3e524ec767aa11e247ac01036', true)
insert into authorities (username, authority) values ('user-2', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-2', 'first-name-2', 'last-name-2', 'first-name-2.last-name-2@springtravel.com')
insert into users (username, password, enabled) values ('user-3', '4aee0e4712257a91f834006fccf16394', true)
insert into authorities (username, authority) values ('user-3', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-3', 'first-name-3', 'last-name-3', 'first-name-3.last-name-3@springtravel.com')
insert into users (username, password, enabled) values ('user-4', '19fba5a514718a1ff009945297c65ffb', true)
insert into authorities (username, authority) values ('user-4', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-4', 'first-name-4', 'last-name-4', 'first-name-4.last-name-4@springtravel.com')
insert into users (username, password, enabled) values ('user-5', '69a966c10c28bc4a1f54939c72aeaa69', true)
insert into authorities (username, authority) values ('user-5', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-5', 'first-name-5', 'last-name-5', 'first-name-5.last-name-5@springtravel.com')
insert into users (username, password, enabled) values ('user-6', '4a2be5b9451851ded1bb67742ed13d89', true)
insert into authorities (username, authority) values ('user-6', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-6', 'first-name-6', 'last-name-6', 'first-name-6.last-name-6@springtravel.com')
insert into users (username, password, enabled) values ('user-7', 'fd12c1f606f0788527c8978f581daf06', true)
insert into authorities (username, authority) values ('user-7', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-7', 'first-name-7', 'last-name-7', 'first-name-7.last-name-7@springtravel.com')
insert into users (username, password, enabled) values ('user-8', '75c7fb4128b7196adbfdd1f0b5479588', true)
insert into authorities (username, authority) values ('user-8', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-8', 'first-name-8', 'last-name-8', 'first-name-8.last-name-8@springtravel.com')
insert into users (username, password, enabled) values ('user-9', 'f997e3870ec95d3e2546a13354b09c34', true)
insert into authorities (username, authority) values ('user-9', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-9', 'first-name-9', 'last-name-9', 'first-name-9.last-name-9@springtravel.com')
insert into users (username, password, enabled) values ('user-10', '48fc92a7229aa42dcf2c5ed3de1778ce', true)
insert into authorities (username, authority) values ('user-10', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-10', 'first-name-10', 'last-name-10', 'first-name-10.last-name-10@springtravel.com')
insert into users (username, password, enabled) values ('user-11', '5bd65b7e1862715735ed2487dddf3f9f', true)
insert into authorities (username, authority) values ('user-11', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-11', 'first-name-11', 'last-name-11', 'first-name-11.last-name-11@springtravel.com')
insert into users (username, password, enabled) values ('user-12', 'c6f8d53503f9b08a789b0678371d760b', true)
insert into authorities (username, authority) values ('user-12', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-12', 'first-name-12', 'last-name-12', 'first-name-12.last-name-12@springtravel.com')
insert into users (username, password, enabled) values ('user-13', '68bb6a6fd273d618c0f1fc7c4b2c94ad', true)
insert into authorities (username, authority) values ('user-13', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-13', 'first-name-13', 'last-name-13', 'first-name-13.last-name-13@springtravel.com')
insert into users (username, password, enabled) values ('user-14', '6ebfde36fbae46885b10f51df32d15fb', true)
insert into authorities (username, authority) values ('user-14', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-14', 'first-name-14', 'last-name-14', 'first-name-14.last-name-14@springtravel.com')
insert into users (username, password, enabled) values ('user-15', '57309ae6b34d3ed23d8055d47d1642a5', true)
insert into authorities (username, authority) values ('user-15', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-15', 'first-name-15', 'last-name-15', 'first-name-15.last-name-15@springtravel.com')
insert into users (username, password, enabled) values ('user-16', 'dd8e70546396cdd514822f46493a1bc8', true)
insert into authorities (username, authority) values ('user-16', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-16', 'first-name-16', 'last-name-16', 'first-name-16.last-name-16@springtravel.com')
insert into users (username, password, enabled) values ('user-17', '63fb51e76fa098623ddc0c861784d6a0', true)
insert into authorities (username, authority) values ('user-17', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-17', 'first-name-17', 'last-name-17', 'first-name-17.last-name-17@springtravel.com')
insert into users (username, password, enabled) values ('user-18', '2f2055a4ca4432032fee73a5a4f35b60', true)
insert into authorities (username, authority) values ('user-18', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-18', 'first-name-18', 'last-name-18', 'first-name-18.last-name-18@springtravel.com')
insert into users (username, password, enabled) values ('user-19', 'c6537f17d1b2321788efdb578b2d7cf7', true)
insert into authorities (username, authority) values ('user-19', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-19', 'first-name-19', 'last-name-19', 'first-name-19.last-name-19@springtravel.com')
insert into users (username, password, enabled) values ('user-20', '0d731304b8130b4882bf325c70b85523', true)
insert into authorities (username, authority) values ('user-20', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-20', 'first-name-20', 'last-name-20', 'first-name-20.last-name-20@springtravel.com')
insert into users (username, password, enabled) values ('user-21', 'e42ef13f877314b57fb700db88945179', true)
insert into authorities (username, authority) values ('user-21', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-21', 'first-name-21', 'last-name-21', 'first-name-21.last-name-21@springtravel.com')
insert into users (username, password, enabled) values ('user-22', '3856c3e994c62bae3f1d7a9f3aba9ee0', true)
insert into authorities (username, authority) values ('user-22', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-22', 'first-name-22', 'last-name-22', 'first-name-22.last-name-22@springtravel.com')
insert into users (username, password, enabled) values ('user-23', '6ec5d27929a8b624b235eaa62e146ed6', true)
insert into authorities (username, authority) values ('user-23', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-23', 'first-name-23', 'last-name-23', 'first-name-23.last-name-23@springtravel.com')
insert into users (username, password, enabled) values ('user-24', 'c068f746b5b4d38e8b9d6f232e4693a4', true)
insert into authorities (username, authority) values ('user-24', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-24', 'first-name-24', 'last-name-24', 'first-name-24.last-name-24@springtravel.com')
insert into users (username, password, enabled) values ('user-25', '70e10aaf2e983567da565b874e6d51c6', true)
insert into authorities (username, authority) values ('user-25', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-25', 'first-name-25', 'last-name-25', 'first-name-25.last-name-25@springtravel.com')
insert into users (username, password, enabled) values ('user-26', '0cb57fe58fb454c5368d25ad38fdd860', true)
insert into authorities (username, authority) values ('user-26', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-26', 'first-name-26', 'last-name-26', 'first-name-26.last-name-26@springtravel.com')
insert into users (username, password, enabled) values ('user-27', '4f33ff1102dd1d2c3786bb866cb2fb7b', true)
insert into authorities (username, authority) values ('user-27', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-27', 'first-name-27', 'last-name-27', 'first-name-27.last-name-27@springtravel.com')
insert into users (username, password, enabled) values ('user-28', '8be0b18ce883de393c215a57b02a6f33', true)
insert into authorities (username, authority) values ('user-28', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-28', 'first-name-28', 'last-name-28', 'first-name-28.last-name-28@springtravel.com')
insert into users (username, password, enabled) values ('user-29', '425619f0483a2eb431355d6778a0004d', true)
insert into authorities (username, authority) values ('user-29', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-29', 'first-name-29', 'last-name-29', 'first-name-29.last-name-29@springtravel.com')
insert into users (username, password, enabled) values ('user-30', '6b13ca670d3a102d4333dce23ce6a3ae', true)
insert into authorities (username, authority) values ('user-30', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-30', 'first-name-30', 'last-name-30', 'first-name-30.last-name-30@springtravel.com')
insert into users (username, password, enabled) values ('user-31', '05fa3d027b02011b242eadc3663d2e45', true)
insert into authorities (username, authority) values ('user-31', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-31', 'first-name-31', 'last-name-31', 'first-name-31.last-name-31@springtravel.com')
insert into users (username, password, enabled) values ('user-32', '84b672f0e28231b510ec620dff55ab82', true)
insert into authorities (username, authority) values ('user-32', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-32', 'first-name-32', 'last-name-32', 'first-name-32.last-name-32@springtravel.com')
insert into users (username, password, enabled) values ('user-33', 'd65e688af3ec972950c5f9b67f5afaf8', true)
insert into authorities (username, authority) values ('user-33', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-33', 'first-name-33', 'last-name-33', 'first-name-33.last-name-33@springtravel.com')
insert into users (username, password, enabled) values ('user-34', 'f1c04f3a230b9e6858fa471a3b75ff70', true)
insert into authorities (username, authority) values ('user-34', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-34', 'first-name-34', 'last-name-34', 'first-name-34.last-name-34@springtravel.com')
insert into users (username, password, enabled) values ('user-35', '04484aba657b4e36ebfa789133fc4471', true)
insert into authorities (username, authority) values ('user-35', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-35', 'first-name-35', 'last-name-35', 'first-name-35.last-name-35@springtravel.com')
insert into users (username, password, enabled) values ('user-36', 'f0f61ee15ee1c9487aaf93aeae2dbf02', true)
insert into authorities (username, authority) values ('user-36', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-36', 'first-name-36', 'last-name-36', 'first-name-36.last-name-36@springtravel.com')
insert into users (username, password, enabled) values ('user-37', '15d875465e4c26a3e77cb672ffb05af6', true)
insert into authorities (username, authority) values ('user-37', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-37', 'first-name-37', 'last-name-37', 'first-name-37.last-name-37@springtravel.com')
insert into users (username, password, enabled) values ('user-38', '2ee10dda5c914b5a051f5245f3846b13', true)
insert into authorities (username, authority) values ('user-38', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-38', 'first-name-38', 'last-name-38', 'first-name-38.last-name-38@springtravel.com')
insert into users (username, password, enabled) values ('user-39', '81ed590971abec52f7468cf0325ac013', true)
insert into authorities (username, authority) values ('user-39', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-39', 'first-name-39', 'last-name-39', 'first-name-39.last-name-39@springtravel.com')
insert into users (username, password, enabled) values ('user-40', '4d2824254d9bdf2370ff69af0dce37a7', true)
insert into authorities (username, authority) values ('user-40', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-40', 'first-name-40', 'last-name-40', 'first-name-40.last-name-40@springtravel.com')
insert into users (username, password, enabled) values ('user-41', '8d0e590b4ba3713d50632de9ac786adb', true)
insert into authorities (username, authority) values ('user-41', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-41', 'first-name-41', 'last-name-41', 'first-name-41.last-name-41@springtravel.com')
insert into users (username, password, enabled) values ('user-42', '4a4d4e27c0bc7cae5b4901fd862e3218', true)
insert into authorities (username, authority) values ('user-42', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-42', 'first-name-42', 'last-name-42', 'first-name-42.last-name-42@springtravel.com')
insert into users (username, password, enabled) values ('user-43', '111b69e8e029abbd6257fd4c54b69aa9', true)
insert into authorities (username, authority) values ('user-43', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-43', 'first-name-43', 'last-name-43', 'first-name-43.last-name-43@springtravel.com')
insert into users (username, password, enabled) values ('user-44', '739b732e62a639fd001c52632a22becd', true)
insert into authorities (username, authority) values ('user-44', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-44', 'first-name-44', 'last-name-44', 'first-name-44.last-name-44@springtravel.com')
insert into users (username, password, enabled) values ('user-45', '1c054705732638856c40bb72e4ebb09f', true)
insert into authorities (username, authority) values ('user-45', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-45', 'first-name-45', 'last-name-45', 'first-name-45.last-name-45@springtravel.com')
insert into users (username, password, enabled) values ('user-46', '60b3674f7cabaa480a93609babc1ab9e', true)
insert into authorities (username, authority) values ('user-46', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-46', 'first-name-46', 'last-name-46', 'first-name-46.last-name-46@springtravel.com')
insert into users (username, password, enabled) values ('user-47', 'bd80d96a9fc25e4cf15c4384bf242a27', true)
insert into authorities (username, authority) values ('user-47', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-47', 'first-name-47', 'last-name-47', 'first-name-47.last-name-47@springtravel.com')
insert into users (username, password, enabled) values ('user-48', '83c600b150c724c50fc1ad4389aa69e1', true)
insert into authorities (username, authority) values ('user-48', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-48', 'first-name-48', 'last-name-48', 'first-name-48.last-name-48@springtravel.com')
insert into users (username, password, enabled) values ('user-49', '229e86b55e9b73804e452b28071b8652', true)
insert into authorities (username, authority) values ('user-49', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-49', 'first-name-49', 'last-name-49', 'first-name-49.last-name-49@springtravel.com')
insert into users (username, password, enabled) values ('user-50', '41f5b1f23f051fd2c6940bf6c384a769', true)
insert into authorities (username, authority) values ('user-50', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-50', 'first-name-50', 'last-name-50', 'first-name-50.last-name-50@springtravel.com')
insert into users (username, password, enabled) values ('user-51', 'cc228ddadc35c10b624595c4f041d691', true)
insert into authorities (username, authority) values ('user-51', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-51', 'first-name-51', 'last-name-51', 'first-name-51.last-name-51@springtravel.com')
insert into users (username, password, enabled) values ('user-52', 'a535cd813cbc199182d44a7c1c8bd003', true)
insert into authorities (username, authority) values ('user-52', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-52', 'first-name-52', 'last-name-52', 'first-name-52.last-name-52@springtravel.com')
insert into users (username, password, enabled) values ('user-53', 'f89264d3c6cc1972ed6712da6f98e31a', true)
insert into authorities (username, authority) values ('user-53', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-53', 'first-name-53', 'last-name-53', 'first-name-53.last-name-53@springtravel.com')
insert into users (username, password, enabled) values ('user-54', '10ebbe0dff68c8d334971406e8c9310c', true)
insert into authorities (username, authority) values ('user-54', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-54', 'first-name-54', 'last-name-54', 'first-name-54.last-name-54@springtravel.com')
insert into users (username, password, enabled) values ('user-55', 'd8223840af0675c2b3c473d324a4cbc4', true)
insert into authorities (username, authority) values ('user-55', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-55', 'first-name-55', 'last-name-55', 'first-name-55.last-name-55@springtravel.com')
insert into users (username, password, enabled) values ('user-56', '8f1944527da3b27ea4c600a44df5e579', true)
insert into authorities (username, authority) values ('user-56', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-56', 'first-name-56', 'last-name-56', 'first-name-56.last-name-56@springtravel.com')
insert into users (username, password, enabled) values ('user-57', 'd170c8e9aa37d63442f24d58eff4721f', true)
insert into authorities (username, authority) values ('user-57', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-57', 'first-name-57', 'last-name-57', 'first-name-57.last-name-57@springtravel.com')
insert into users (username, password, enabled) values ('user-58', '2277c0dabd0b937243131f0be285719c', true)
insert into authorities (username, authority) values ('user-58', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-58', 'first-name-58', 'last-name-58', 'first-name-58.last-name-58@springtravel.com')
insert into users (username, password, enabled) values ('user-59', '36763b14ff9755f9671e5f64e41aa0e9', true)
insert into authorities (username, authority) values ('user-59', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-59', 'first-name-59', 'last-name-59', 'first-name-59.last-name-59@springtravel.com')
insert into users (username, password, enabled) values ('user-60', '50dd4fe21d0f280df5146c0c94e8143c', true)
insert into authorities (username, authority) values ('user-60', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-60', 'first-name-60', 'last-name-60', 'first-name-60.last-name-60@springtravel.com')
insert into users (username, password, enabled) values ('user-61', 'dc900326474fb16c4039c1a68293a885', true)
insert into authorities (username, authority) values ('user-61', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-61', 'first-name-61', 'last-name-61', 'first-name-61.last-name-61@springtravel.com')
insert into users (username, password, enabled) values ('user-62', '636d5730215bb5ded161a91926f41dbc', true)
insert into authorities (username, authority) values ('user-62', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-62', 'first-name-62', 'last-name-62', 'first-name-62.last-name-62@springtravel.com')
insert into users (username, password, enabled) values ('user-63', '252a81ca7a19d8402177e04e4779b4cd', true)
insert into authorities (username, authority) values ('user-63', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-63', 'first-name-63', 'last-name-63', 'first-name-63.last-name-63@springtravel.com')
insert into users (username, password, enabled) values ('user-64', 'fa32a024237aa7efc5dc09db2cfba5d9', true)
insert into authorities (username, authority) values ('user-64', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-64', 'first-name-64', 'last-name-64', 'first-name-64.last-name-64@springtravel.com')
insert into users (username, password, enabled) values ('user-65', '83497a54b3a52440912ab3142f836c16', true)
insert into authorities (username, authority) values ('user-65', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-65', 'first-name-65', 'last-name-65', 'first-name-65.last-name-65@springtravel.com')
insert into users (username, password, enabled) values ('user-66', 'f45fe3dcfcad6ccb684ae3c1167ff16c', true)
insert into authorities (username, authority) values ('user-66', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-66', 'first-name-66', 'last-name-66', 'first-name-66.last-name-66@springtravel.com')
insert into users (username, password, enabled) values ('user-67', 'c9c5329e849e137429612b56d3618f28', true)
insert into authorities (username, authority) values ('user-67', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-67', 'first-name-67', 'last-name-67', 'first-name-67.last-name-67@springtravel.com')
insert into users (username, password, enabled) values ('user-68', '64ef17745559b68af8c901d7ad33681a', true)
insert into authorities (username, authority) values ('user-68', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-68', 'first-name-68', 'last-name-68', 'first-name-68.last-name-68@springtravel.com')
insert into users (username, password, enabled) values ('user-69', 'da3a8e528a0c08ca7ecc8b1fc3e439c7', true)
insert into authorities (username, authority) values ('user-69', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-69', 'first-name-69', 'last-name-69', 'first-name-69.last-name-69@springtravel.com')
insert into users (username, password, enabled) values ('user-70', '014a994152c98a720aebe52839a83e25', true)
insert into authorities (username, authority) values ('user-70', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-70', 'first-name-70', 'last-name-70', 'first-name-70.last-name-70@springtravel.com')
insert into users (username, password, enabled) values ('user-71', '33621b0f240d22e66e890773cb423b43', true)
insert into authorities (username, authority) values ('user-71', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-71', 'first-name-71', 'last-name-71', 'first-name-71.last-name-71@springtravel.com')
insert into users (username, password, enabled) values ('user-72', '312843527bf02c501a905b2641d104f9', true)
insert into authorities (username, authority) values ('user-72', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-72', 'first-name-72', 'last-name-72', 'first-name-72.last-name-72@springtravel.com')
insert into users (username, password, enabled) values ('user-73', '532ae75b97c71ba50dda380e2560d160', true)
insert into authorities (username, authority) values ('user-73', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-73', 'first-name-73', 'last-name-73', 'first-name-73.last-name-73@springtravel.com')
insert into users (username, password, enabled) values ('user-74', 'bfed17938b79f5cc9874f0888378d3f6', true)
insert into authorities (username, authority) values ('user-74', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-74', 'first-name-74', 'last-name-74', 'first-name-74.last-name-74@springtravel.com')
insert into users (username, password, enabled) values ('user-75', 'b503ba0a0246dfe1ed0d8755082d0e24', true)
insert into authorities (username, authority) values ('user-75', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-75', 'first-name-75', 'last-name-75', 'first-name-75.last-name-75@springtravel.com')
insert into users (username, password, enabled) values ('user-76', '81a6904825a6e3fe87da27df6c513c84', true)
insert into authorities (username, authority) values ('user-76', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-76', 'first-name-76', 'last-name-76', 'first-name-76.last-name-76@springtravel.com')
insert into users (username, password, enabled) values ('user-77', '8d3cae9ee6d896c75d16ba082c2527ea', true)
insert into authorities (username, authority) values ('user-77', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-77', 'first-name-77', 'last-name-77', 'first-name-77.last-name-77@springtravel.com')
insert into users (username, password, enabled) values ('user-78', 'b46b074942332e18b0bcde9d42d3b7cd', true)
insert into authorities (username, authority) values ('user-78', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-78', 'first-name-78', 'last-name-78', 'first-name-78.last-name-78@springtravel.com')
insert into users (username, password, enabled) values ('user-79', '28d466e330df20f3e0859373463af6cc', true)
insert into authorities (username, authority) values ('user-79', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-79', 'first-name-79', 'last-name-79', 'first-name-79.last-name-79@springtravel.com')
insert into users (username, password, enabled) values ('user-80', '47068ca9b3f325ebb199edcb2716ae4c', true)
insert into authorities (username, authority) values ('user-80', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-80', 'first-name-80', 'last-name-80', 'first-name-80.last-name-80@springtravel.com')
insert into users (username, password, enabled) values ('user-81', '4f1297c58e2307cbd80d98d385ed6a90', true)
insert into authorities (username, authority) values ('user-81', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-81', 'first-name-81', 'last-name-81', 'first-name-81.last-name-81@springtravel.com')
insert into users (username, password, enabled) values ('user-82', '4cda754ec20a0305e417603786e20c88', true)
insert into authorities (username, authority) values ('user-82', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-82', 'first-name-82', 'last-name-82', 'first-name-82.last-name-82@springtravel.com')
insert into users (username, password, enabled) values ('user-83', '6999f708409d362bc31725fecf75a057', true)
insert into authorities (username, authority) values ('user-83', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-83', 'first-name-83', 'last-name-83', 'first-name-83.last-name-83@springtravel.com')
insert into users (username, password, enabled) values ('user-84', '2e26d9af169983d7281427656b7105d6', true)
insert into authorities (username, authority) values ('user-84', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-84', 'first-name-84', 'last-name-84', 'first-name-84.last-name-84@springtravel.com')
insert into users (username, password, enabled) values ('user-85', 'cda897bacecf1745036ae5b3b9ae1641', true)
insert into authorities (username, authority) values ('user-85', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-85', 'first-name-85', 'last-name-85', 'first-name-85.last-name-85@springtravel.com')
insert into users (username, password, enabled) values ('user-86', '925fd2f3edbdbda57724147f111d7fb7', true)
insert into authorities (username, authority) values ('user-86', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-86', 'first-name-86', 'last-name-86', 'first-name-86.last-name-86@springtravel.com')
insert into users (username, password, enabled) values ('user-87', '5dc7f8eaf66539cb78310e7768c32540', true)
insert into authorities (username, authority) values ('user-87', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-87', 'first-name-87', 'last-name-87', 'first-name-87.last-name-87@springtravel.com')
insert into users (username, password, enabled) values ('user-88', '7f212eafe368ceefa846a9801be249bd', true)
insert into authorities (username, authority) values ('user-88', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-88', 'first-name-88', 'last-name-88', 'first-name-88.last-name-88@springtravel.com')
insert into users (username, password, enabled) values ('user-89', '343b19c7fd7e5d1beabd23b98bc598a0', true)
insert into authorities (username, authority) values ('user-89', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-89', 'first-name-89', 'last-name-89', 'first-name-89.last-name-89@springtravel.com')
insert into users (username, password, enabled) values ('user-90', '355898d4dfafca029b3e3412a92d7d56', true)
insert into authorities (username, authority) values ('user-90', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-90', 'first-name-90', 'last-name-90', 'first-name-90.last-name-90@springtravel.com')
insert into users (username, password, enabled) values ('user-91', 'a7a6528e5d3d5a0d87aca0bb20e5afbe', true)
insert into authorities (username, authority) values ('user-91', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-91', 'first-name-91', 'last-name-91', 'first-name-91.last-name-91@springtravel.com')
insert into users (username, password, enabled) values ('user-92', 'b65c444af0e4041acfcade955f2c435f', true)
insert into authorities (username, authority) values ('user-92', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-92', 'first-name-92', 'last-name-92', 'first-name-92.last-name-92@springtravel.com')
insert into users (username, password, enabled) values ('user-93', '75541917b8b67ce5b2cff1c4dd3618ba', true)
insert into authorities (username, authority) values ('user-93', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-93', 'first-name-93', 'last-name-93', 'first-name-93.last-name-93@springtravel.com')
insert into users (username, password, enabled) values ('user-94', 'fbb12317dccedbd62a7ca2cdf9e95f24', true)
insert into authorities (username, authority) values ('user-94', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-94', 'first-name-94', 'last-name-94', 'first-name-94.last-name-94@springtravel.com')
insert into users (username, password, enabled) values ('user-95', '90946fe0613ed32fb99152099b03d2e3', true)
insert into authorities (username, authority) values ('user-95', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-95', 'first-name-95', 'last-name-95', 'first-name-95.last-name-95@springtravel.com')
insert into users (username, password, enabled) values ('user-96', 'ce5e551336c972ef399aa781c49066a4', true)
insert into authorities (username, authority) values ('user-96', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-96', 'first-name-96', 'last-name-96', 'first-name-96.last-name-96@springtravel.com')
insert into users (username, password, enabled) values ('user-97', '181d02bbc89033400a37d892f7d6c522', true)
insert into authorities (username, authority) values ('user-97', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-97', 'first-name-97', 'last-name-97', 'first-name-97.last-name-97@springtravel.com')
insert into users (username, password, enabled) values ('user-98', 'e8815fc8e66c95e4d44a91c6625b4136', true)
insert into authorities (username, authority) values ('user-98', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-98', 'first-name-98', 'last-name-98', 'first-name-98.last-name-98@springtravel.com')
insert into users (username, password, enabled) values ('user-99', '96422e1a07b2b98d6d032b651f9cdcd5', true)
insert into authorities (username, authority) values ('user-99', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-99', 'first-name-99', 'last-name-99', 'first-name-99.last-name-99@springtravel.com')
insert into users (username, password, enabled) values ('user-100', '0bc6cdff4261bb4ee4f8ee4fdee8c42a', true)
insert into authorities (username, authority) values ('user-100', 'ROLE_USER')
insert into Customer (username, first, last, email) values ('user-100', 'first-name-100', 'last-name-100', 'first-name-100.last-name-100@springtravel.com')
insert into users (username, password, enabled) values ('user-101', '392c2da8fde88d64427298fea67ae032', true);
insert into authorities (username, authority) values ('user-101', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-101', 'first-name-101', 'last-name-101', 'first-name-101.last-name-101@springtravel.com');
insert into users (username, password, enabled) values ('user-102', '630585ba76b2549168c57733e226dae3', true);
insert into authorities (username, authority) values ('user-102', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-102', 'first-name-102', 'last-name-102', 'first-name-102.last-name-102@springtravel.com');
insert into users (username, password, enabled) values ('user-103', 'fd322166238b52a6038a648b8fb904dc', true);
insert into authorities (username, authority) values ('user-103', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-103', 'first-name-103', 'last-name-103', 'first-name-103.last-name-103@springtravel.com');
insert into users (username, password, enabled) values ('user-104', '1d43715567de8b6f9cc88c1a48f91e0a', true);
insert into authorities (username, authority) values ('user-104', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-104', 'first-name-104', 'last-name-104', 'first-name-104.last-name-104@springtravel.com');
insert into users (username, password, enabled) values ('user-105', '81ef943cf8fb9ec124d67c37279f04ca', true);
insert into authorities (username, authority) values ('user-105', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-105', 'first-name-105', 'last-name-105', 'first-name-105.last-name-105@springtravel.com');
insert into users (username, password, enabled) values ('user-106', '9dce3ca6a63b315d72b783470b510712', true);
insert into authorities (username, authority) values ('user-106', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-106', 'first-name-106', 'last-name-106', 'first-name-106.last-name-106@springtravel.com');
insert into users (username, password, enabled) values ('user-107', '19e7e191676c2b3ca242ba8d1ecfd5db', true);
insert into authorities (username, authority) values ('user-107', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-107', 'first-name-107', 'last-name-107', 'first-name-107.last-name-107@springtravel.com');
insert into users (username, password, enabled) values ('user-108', 'ba1bf624837e3e0f3e1cc240d7bcb64e', true);
insert into authorities (username, authority) values ('user-108', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-108', 'first-name-108', 'last-name-108', 'first-name-108.last-name-108@springtravel.com');
insert into users (username, password, enabled) values ('user-109', '4749e1edabfdb22882fcae88b6e51e52', true);
insert into authorities (username, authority) values ('user-109', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-109', 'first-name-109', 'last-name-109', 'first-name-109.last-name-109@springtravel.com');
insert into users (username, password, enabled) values ('user-110', 'f540fc5c6dce8b5e7792ef7aeb974f2b', true);
insert into authorities (username, authority) values ('user-110', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-110', 'first-name-110', 'last-name-110', 'first-name-110.last-name-110@springtravel.com');
insert into users (username, password, enabled) values ('user-111', '6f33ba35fb38889637e4ce387ff89748', true);
insert into authorities (username, authority) values ('user-111', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-111', 'first-name-111', 'last-name-111', 'first-name-111.last-name-111@springtravel.com');
insert into users (username, password, enabled) values ('user-112', '8c593d2a5f0f156bf2df7bad69167d2c', true);
insert into authorities (username, authority) values ('user-112', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-112', 'first-name-112', 'last-name-112', 'first-name-112.last-name-112@springtravel.com');
insert into users (username, password, enabled) values ('user-113', '78833739b583de30f17cf590e5a6ccb2', true);
insert into authorities (username, authority) values ('user-113', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-113', 'first-name-113', 'last-name-113', 'first-name-113.last-name-113@springtravel.com');
insert into users (username, password, enabled) values ('user-114', '0d649c008e521138f72610a9a7bf4d1d', true);
insert into authorities (username, authority) values ('user-114', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-114', 'first-name-114', 'last-name-114', 'first-name-114.last-name-114@springtravel.com');
insert into users (username, password, enabled) values ('user-115', '803399f06c4dc7597592b7a7c7cc7147', true);
insert into authorities (username, authority) values ('user-115', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-115', 'first-name-115', 'last-name-115', 'first-name-115.last-name-115@springtravel.com');
insert into users (username, password, enabled) values ('user-116', 'bcefceb27562e5b8d0a0bda057cede16', true);
insert into authorities (username, authority) values ('user-116', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-116', 'first-name-116', 'last-name-116', 'first-name-116.last-name-116@springtravel.com');
insert into users (username, password, enabled) values ('user-117', 'df2bbd4b66773a0346c922f3d8b1616a', true);
insert into authorities (username, authority) values ('user-117', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-117', 'first-name-117', 'last-name-117', 'first-name-117.last-name-117@springtravel.com');
insert into users (username, password, enabled) values ('user-118', 'b509acf249fe300ea3b3558c9e7ce303', true);
insert into authorities (username, authority) values ('user-118', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-118', 'first-name-118', 'last-name-118', 'first-name-118.last-name-118@springtravel.com');
insert into users (username, password, enabled) values ('user-119', '23b5c75e14c57ff2b179bfd966cc0715', true);
insert into authorities (username, authority) values ('user-119', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-119', 'first-name-119', 'last-name-119', 'first-name-119.last-name-119@springtravel.com');
insert into users (username, password, enabled) values ('user-120', '42d845ad5dff5ab77571fd5ddd71fa35', true);
insert into authorities (username, authority) values ('user-120', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-120', 'first-name-120', 'last-name-120', 'first-name-120.last-name-120@springtravel.com');
insert into users (username, password, enabled) values ('user-121', '0877d790df9d7563919f8583afff821b', true);
insert into authorities (username, authority) values ('user-121', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-121', 'first-name-121', 'last-name-121', 'first-name-121.last-name-121@springtravel.com');
insert into users (username, password, enabled) values ('user-122', '100260aa960bc680c6d195e3143eca3a', true);
insert into authorities (username, authority) values ('user-122', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-122', 'first-name-122', 'last-name-122', 'first-name-122.last-name-122@springtravel.com');
insert into users (username, password, enabled) values ('user-123', '6934ad71bdccd3a05b94ed8eb9493119', true);
insert into authorities (username, authority) values ('user-123', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-123', 'first-name-123', 'last-name-123', 'first-name-123.last-name-123@springtravel.com');
insert into users (username, password, enabled) values ('user-124', 'ca58d44eedd14695f9ec6de92f2e1249', true);
insert into authorities (username, authority) values ('user-124', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-124', 'first-name-124', 'last-name-124', 'first-name-124.last-name-124@springtravel.com');
insert into users (username, password, enabled) values ('user-125', 'ae4c4e3b12a8ecf456e61c36e315a2b9', true);
insert into authorities (username, authority) values ('user-125', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-125', 'first-name-125', 'last-name-125', 'first-name-125.last-name-125@springtravel.com');
insert into users (username, password, enabled) values ('user-126', '58b325e4cb13bc79b8cc811db137eebe', true);
insert into authorities (username, authority) values ('user-126', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-126', 'first-name-126', 'last-name-126', 'first-name-126.last-name-126@springtravel.com');
insert into users (username, password, enabled) values ('user-127', 'ea104f11675cd19ae240f7964d1fcf59', true);
insert into authorities (username, authority) values ('user-127', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-127', 'first-name-127', 'last-name-127', 'first-name-127.last-name-127@springtravel.com');
insert into users (username, password, enabled) values ('user-128', '834f6949297b59e8d71e324fe5f7dfb0', true);
insert into authorities (username, authority) values ('user-128', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-128', 'first-name-128', 'last-name-128', 'first-name-128.last-name-128@springtravel.com');
insert into users (username, password, enabled) values ('user-129', '2da6a8b58129613c281594fb508ef3e3', true);
insert into authorities (username, authority) values ('user-129', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-129', 'first-name-129', 'last-name-129', 'first-name-129.last-name-129@springtravel.com');
insert into users (username, password, enabled) values ('user-130', 'ad740d0824b08dff7377be718dafb0c1', true);
insert into authorities (username, authority) values ('user-130', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-130', 'first-name-130', 'last-name-130', 'first-name-130.last-name-130@springtravel.com');
insert into users (username, password, enabled) values ('user-131', '198be1c84b71ad54b67a35eb69d6ed10', true);
insert into authorities (username, authority) values ('user-131', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-131', 'first-name-131', 'last-name-131', 'first-name-131.last-name-131@springtravel.com');
insert into users (username, password, enabled) values ('user-132', '0b38d1571e8d84809d5c8fbd09549e76', true);
insert into authorities (username, authority) values ('user-132', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-132', 'first-name-132', 'last-name-132', 'first-name-132.last-name-132@springtravel.com');
insert into users (username, password, enabled) values ('user-133', '6c2cd05f4a1d64cfa8cf874d320f7f71', true);
insert into authorities (username, authority) values ('user-133', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-133', 'first-name-133', 'last-name-133', 'first-name-133.last-name-133@springtravel.com');
insert into users (username, password, enabled) values ('user-134', 'dac734cad143d168262d9b8995570f3c', true);
insert into authorities (username, authority) values ('user-134', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-134', 'first-name-134', 'last-name-134', 'first-name-134.last-name-134@springtravel.com');
insert into users (username, password, enabled) values ('user-135', '421feb1e798dda78502ccd2c34415e9e', true);
insert into authorities (username, authority) values ('user-135', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-135', 'first-name-135', 'last-name-135', 'first-name-135.last-name-135@springtravel.com');
insert into users (username, password, enabled) values ('user-136', '4cdc4520699dad42b869379a46a5e2fc', true);
insert into authorities (username, authority) values ('user-136', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-136', 'first-name-136', 'last-name-136', 'first-name-136.last-name-136@springtravel.com');
insert into users (username, password, enabled) values ('user-137', '778c8a271b6f9e081efa1089aa1d9c78', true);
insert into authorities (username, authority) values ('user-137', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-137', 'first-name-137', 'last-name-137', 'first-name-137.last-name-137@springtravel.com');
insert into users (username, password, enabled) values ('user-138', 'beee3e32608112f4d45401f1d6512cbd', true);
insert into authorities (username, authority) values ('user-138', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-138', 'first-name-138', 'last-name-138', 'first-name-138.last-name-138@springtravel.com');
insert into users (username, password, enabled) values ('user-139', '7ca05471992f3164dc5ae1820e6de53a', true);
insert into authorities (username, authority) values ('user-139', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-139', 'first-name-139', 'last-name-139', 'first-name-139.last-name-139@springtravel.com');
insert into users (username, password, enabled) values ('user-140', '231f25fa51e9c920619366394f292193', true);
insert into authorities (username, authority) values ('user-140', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-140', 'first-name-140', 'last-name-140', 'first-name-140.last-name-140@springtravel.com');
insert into users (username, password, enabled) values ('user-141', 'bde3ee8e41e482692358ba4a38a58581', true);
insert into authorities (username, authority) values ('user-141', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-141', 'first-name-141', 'last-name-141', 'first-name-141.last-name-141@springtravel.com');
insert into users (username, password, enabled) values ('user-142', '1e6a5671533d6bcb7a2cfc44e1af544c', true);
insert into authorities (username, authority) values ('user-142', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-142', 'first-name-142', 'last-name-142', 'first-name-142.last-name-142@springtravel.com');
insert into users (username, password, enabled) values ('user-143', 'c660b516cba15a37b043316f8398bc7e', true);
insert into authorities (username, authority) values ('user-143', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-143', 'first-name-143', 'last-name-143', 'first-name-143.last-name-143@springtravel.com');
insert into users (username, password, enabled) values ('user-144', '5aaf3472e1934ef260bac8b91b73614e', true);
insert into authorities (username, authority) values ('user-144', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-144', 'first-name-144', 'last-name-144', 'first-name-144.last-name-144@springtravel.com');
insert into users (username, password, enabled) values ('user-145', '5ac893f04f9f9b8986e0fa7febce1fef', true);
insert into authorities (username, authority) values ('user-145', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-145', 'first-name-145', 'last-name-145', 'first-name-145.last-name-145@springtravel.com');
insert into users (username, password, enabled) values ('user-146', '61ee987c552ca5ab06a1f766d3a7d2d9', true);
insert into authorities (username, authority) values ('user-146', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-146', 'first-name-146', 'last-name-146', 'first-name-146.last-name-146@springtravel.com');
insert into users (username, password, enabled) values ('user-147', 'e6ee2050c7158351eba219d6d7e1cd2a', true);
insert into authorities (username, authority) values ('user-147', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-147', 'first-name-147', 'last-name-147', 'first-name-147.last-name-147@springtravel.com');
insert into users (username, password, enabled) values ('user-148', '9838a90348d95970ae1a0980e8b7dfcd', true);
insert into authorities (username, authority) values ('user-148', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-148', 'first-name-148', 'last-name-148', 'first-name-148.last-name-148@springtravel.com');
insert into users (username, password, enabled) values ('user-149', 'e494d36c5be451c415cd87ada6f0830d', true);
insert into authorities (username, authority) values ('user-149', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-149', 'first-name-149', 'last-name-149', 'first-name-149.last-name-149@springtravel.com');
insert into users (username, password, enabled) values ('user-150', '13d68b64ee31ba5294042aac22019392', true);
insert into authorities (username, authority) values ('user-150', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-150', 'first-name-150', 'last-name-150', 'first-name-150.last-name-150@springtravel.com');
insert into users (username, password, enabled) values ('user-151', '3bb423405999fbf0be8861ee458a55f1', true);
insert into authorities (username, authority) values ('user-151', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-151', 'first-name-151', 'last-name-151', 'first-name-151.last-name-151@springtravel.com');
insert into users (username, password, enabled) values ('user-152', '90ddde2932d55bb14567bee0dad08e19', true);
insert into authorities (username, authority) values ('user-152', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-152', 'first-name-152', 'last-name-152', 'first-name-152.last-name-152@springtravel.com');
insert into users (username, password, enabled) values ('user-153', 'be8216e3d14a0bc8cd6cfc7fffe7e93d', true);
insert into authorities (username, authority) values ('user-153', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-153', 'first-name-153', 'last-name-153', 'first-name-153.last-name-153@springtravel.com');
insert into users (username, password, enabled) values ('user-154', 'd867b829a7490501811ca9cf3e7c0b66', true);
insert into authorities (username, authority) values ('user-154', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-154', 'first-name-154', 'last-name-154', 'first-name-154.last-name-154@springtravel.com');
insert into users (username, password, enabled) values ('user-155', '61039c922b13acfa08e07b220b2b7039', true);
insert into authorities (username, authority) values ('user-155', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-155', 'first-name-155', 'last-name-155', 'first-name-155.last-name-155@springtravel.com');
insert into users (username, password, enabled) values ('user-156', '3ddc39fedb91163f133b695fd04bbce5', true);
insert into authorities (username, authority) values ('user-156', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-156', 'first-name-156', 'last-name-156', 'first-name-156.last-name-156@springtravel.com');
insert into users (username, password, enabled) values ('user-157', '49fffd70c875b901eaf4066761f6c672', true);
insert into authorities (username, authority) values ('user-157', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-157', 'first-name-157', 'last-name-157', 'first-name-157.last-name-157@springtravel.com');
insert into users (username, password, enabled) values ('user-158', '8e6087853aa1b40b4a0a753510b0c7cc', true);
insert into authorities (username, authority) values ('user-158', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-158', 'first-name-158', 'last-name-158', 'first-name-158.last-name-158@springtravel.com');
insert into users (username, password, enabled) values ('user-159', 'd045f3aa65f4422a027bf0c29fbfae84', true);
insert into authorities (username, authority) values ('user-159', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-159', 'first-name-159', 'last-name-159', 'first-name-159.last-name-159@springtravel.com');
insert into users (username, password, enabled) values ('user-160', '0a1e50a437e1d7115fdb938268df9750', true);
insert into authorities (username, authority) values ('user-160', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-160', 'first-name-160', 'last-name-160', 'first-name-160.last-name-160@springtravel.com');
insert into users (username, password, enabled) values ('user-161', '83b77f9dbe7fdde6eaf04279efec8e09', true);
insert into authorities (username, authority) values ('user-161', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-161', 'first-name-161', 'last-name-161', 'first-name-161.last-name-161@springtravel.com');
insert into users (username, password, enabled) values ('user-162', 'd1177552f286b0702b9eb1a90f4d32dd', true);
insert into authorities (username, authority) values ('user-162', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-162', 'first-name-162', 'last-name-162', 'first-name-162.last-name-162@springtravel.com');
insert into users (username, password, enabled) values ('user-163', 'e214a5e8772c609bc30aa84233a5543e', true);
insert into authorities (username, authority) values ('user-163', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-163', 'first-name-163', 'last-name-163', 'first-name-163.last-name-163@springtravel.com');
insert into users (username, password, enabled) values ('user-164', 'd51d13a47662a0e03cc904988f24ff7c', true);
insert into authorities (username, authority) values ('user-164', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-164', 'first-name-164', 'last-name-164', 'first-name-164.last-name-164@springtravel.com');
insert into users (username, password, enabled) values ('user-165', '1d2c2f0659dac0f968d7590b0495f205', true);
insert into authorities (username, authority) values ('user-165', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-165', 'first-name-165', 'last-name-165', 'first-name-165.last-name-165@springtravel.com');
insert into users (username, password, enabled) values ('user-166', '31cf502ec8062cdcd098cedd4e188195', true);
insert into authorities (username, authority) values ('user-166', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-166', 'first-name-166', 'last-name-166', 'first-name-166.last-name-166@springtravel.com');
insert into users (username, password, enabled) values ('user-167', 'eabc156018ba0384af4d13f7efacc8e5', true);
insert into authorities (username, authority) values ('user-167', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-167', 'first-name-167', 'last-name-167', 'first-name-167.last-name-167@springtravel.com');
insert into users (username, password, enabled) values ('user-168', '2c9239077b8c4328132bc06d53bb2988', true);
insert into authorities (username, authority) values ('user-168', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-168', 'first-name-168', 'last-name-168', 'first-name-168.last-name-168@springtravel.com');
insert into users (username, password, enabled) values ('user-169', 'dc02ba981caac2201566a4b9ec1d55d5', true);
insert into authorities (username, authority) values ('user-169', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-169', 'first-name-169', 'last-name-169', 'first-name-169.last-name-169@springtravel.com');
insert into users (username, password, enabled) values ('user-170', '8ddce0b9003907b62fd9a7094fdbf6c1', true);
insert into authorities (username, authority) values ('user-170', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-170', 'first-name-170', 'last-name-170', 'first-name-170.last-name-170@springtravel.com');
insert into users (username, password, enabled) values ('user-171', 'd7ab8efb59f816b7d55d6eb718bf22d1', true);
insert into authorities (username, authority) values ('user-171', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-171', 'first-name-171', 'last-name-171', 'first-name-171.last-name-171@springtravel.com');
insert into users (username, password, enabled) values ('user-172', '6c27b33291025d7a6dc220a2e8b8e9d6', true);
insert into authorities (username, authority) values ('user-172', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-172', 'first-name-172', 'last-name-172', 'first-name-172.last-name-172@springtravel.com');
insert into users (username, password, enabled) values ('user-173', '989f7aed495b004b36dd0b0ff749f5a1', true);
insert into authorities (username, authority) values ('user-173', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-173', 'first-name-173', 'last-name-173', 'first-name-173.last-name-173@springtravel.com');
insert into users (username, password, enabled) values ('user-174', 'd64eb4647a996a0b79b8b5a425b3506c', true);
insert into authorities (username, authority) values ('user-174', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-174', 'first-name-174', 'last-name-174', 'first-name-174.last-name-174@springtravel.com');
insert into users (username, password, enabled) values ('user-175', '87e3f8d88817a91238b5558f922778a5', true);
insert into authorities (username, authority) values ('user-175', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-175', 'first-name-175', 'last-name-175', 'first-name-175.last-name-175@springtravel.com');
insert into users (username, password, enabled) values ('user-176', 'd152692fa9c3002efa75d162fb740a2f', true);
insert into authorities (username, authority) values ('user-176', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-176', 'first-name-176', 'last-name-176', 'first-name-176.last-name-176@springtravel.com');
insert into users (username, password, enabled) values ('user-177', '142e0048bcef7422d795c0002f23944b', true);
insert into authorities (username, authority) values ('user-177', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-177', 'first-name-177', 'last-name-177', 'first-name-177.last-name-177@springtravel.com');
insert into users (username, password, enabled) values ('user-178', '1797a7781111271021404aefd8a152ed', true);
insert into authorities (username, authority) values ('user-178', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-178', 'first-name-178', 'last-name-178', 'first-name-178.last-name-178@springtravel.com');
insert into users (username, password, enabled) values ('user-179', '65f677f0f9a6bd8770187c41f8879988', true);
insert into authorities (username, authority) values ('user-179', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-179', 'first-name-179', 'last-name-179', 'first-name-179.last-name-179@springtravel.com');
insert into users (username, password, enabled) values ('user-180', '9fe7e9eb82a47c3809e8f94c0193c5fc', true);
insert into authorities (username, authority) values ('user-180', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-180', 'first-name-180', 'last-name-180', 'first-name-180.last-name-180@springtravel.com');
insert into users (username, password, enabled) values ('user-181', 'd19975b6d8f615e14969de17952fc681', true);
insert into authorities (username, authority) values ('user-181', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-181', 'first-name-181', 'last-name-181', 'first-name-181.last-name-181@springtravel.com');
insert into users (username, password, enabled) values ('user-182', '216be8d8e8a25e4a5aee8bb2357af05c', true);
insert into authorities (username, authority) values ('user-182', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-182', 'first-name-182', 'last-name-182', 'first-name-182.last-name-182@springtravel.com');
insert into users (username, password, enabled) values ('user-183', '760d50cce71fd9f583ba521eef4557c8', true);
insert into authorities (username, authority) values ('user-183', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-183', 'first-name-183', 'last-name-183', 'first-name-183.last-name-183@springtravel.com');
insert into users (username, password, enabled) values ('user-184', '1f03baf7020bd1a95ef9d8666e75bc8b', true);
insert into authorities (username, authority) values ('user-184', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-184', 'first-name-184', 'last-name-184', 'first-name-184.last-name-184@springtravel.com');
insert into users (username, password, enabled) values ('user-185', '2af1731d0cb4dd5a133463cf4a8b5b33', true);
insert into authorities (username, authority) values ('user-185', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-185', 'first-name-185', 'last-name-185', 'first-name-185.last-name-185@springtravel.com');
insert into users (username, password, enabled) values ('user-186', '54caa7f727fe0fc2f87a4c82f912aa17', true);
insert into authorities (username, authority) values ('user-186', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-186', 'first-name-186', 'last-name-186', 'first-name-186.last-name-186@springtravel.com');
insert into users (username, password, enabled) values ('user-187', '41d3c232008617b54c2e5b5f288714ed', true);
insert into authorities (username, authority) values ('user-187', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-187', 'first-name-187', 'last-name-187', 'first-name-187.last-name-187@springtravel.com');
insert into users (username, password, enabled) values ('user-188', '876d4e7fc5c15516d2d10621add4a599', true);
insert into authorities (username, authority) values ('user-188', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-188', 'first-name-188', 'last-name-188', 'first-name-188.last-name-188@springtravel.com');
insert into users (username, password, enabled) values ('user-189', '2cc7ee4308f156db586abab7eefed7ef', true);
insert into authorities (username, authority) values ('user-189', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-189', 'first-name-189', 'last-name-189', 'first-name-189.last-name-189@springtravel.com');
insert into users (username, password, enabled) values ('user-190', '7e3297f40749aa4ce51686da453b0507', true);
insert into authorities (username, authority) values ('user-190', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-190', 'first-name-190', 'last-name-190', 'first-name-190.last-name-190@springtravel.com');
insert into users (username, password, enabled) values ('user-191', '412b5d9d2e28a2111ff3f42b5e701728', true);
insert into authorities (username, authority) values ('user-191', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-191', 'first-name-191', 'last-name-191', 'first-name-191.last-name-191@springtravel.com');
insert into users (username, password, enabled) values ('user-192', '714c808193d765a02ef6d53c3f38bc87', true);
insert into authorities (username, authority) values ('user-192', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-192', 'first-name-192', 'last-name-192', 'first-name-192.last-name-192@springtravel.com');
insert into users (username, password, enabled) values ('user-193', '798a28ba3816ee6475b57afbc3f8f919', true);
insert into authorities (username, authority) values ('user-193', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-193', 'first-name-193', 'last-name-193', 'first-name-193.last-name-193@springtravel.com');
insert into users (username, password, enabled) values ('user-194', 'f9ce85a0ba713d8e96aecd43f245b727', true);
insert into authorities (username, authority) values ('user-194', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-194', 'first-name-194', 'last-name-194', 'first-name-194.last-name-194@springtravel.com');
insert into users (username, password, enabled) values ('user-195', '0dafa01278ab82640272ee1695003a8e', true);
insert into authorities (username, authority) values ('user-195', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-195', 'first-name-195', 'last-name-195', 'first-name-195.last-name-195@springtravel.com');
insert into users (username, password, enabled) values ('user-196', '55c536e62b9a8e4c632db375c3aa1d6d', true);
insert into authorities (username, authority) values ('user-196', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-196', 'first-name-196', 'last-name-196', 'first-name-196.last-name-196@springtravel.com');
insert into users (username, password, enabled) values ('user-197', '147c854d65032fa54c5aec9c66765d39', true);
insert into authorities (username, authority) values ('user-197', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-197', 'first-name-197', 'last-name-197', 'first-name-197.last-name-197@springtravel.com');
insert into users (username, password, enabled) values ('user-198', '0ab179bd28cc45d29c9f742189a185af', true);
insert into authorities (username, authority) values ('user-198', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-198', 'first-name-198', 'last-name-198', 'first-name-198.last-name-198@springtravel.com');
insert into users (username, password, enabled) values ('user-199', '0613dc9adf23d7676b2726426f685e74', true);
insert into authorities (username, authority) values ('user-199', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-199', 'first-name-199', 'last-name-199', 'first-name-199.last-name-199@springtravel.com');
insert into users (username, password, enabled) values ('user-200', 'ef5b63807c938743e040448cf20ab3ac', true);
insert into authorities (username, authority) values ('user-200', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-200', 'first-name-200', 'last-name-200', 'first-name-200.last-name-200@springtravel.com');
insert into users (username, password, enabled) values ('user-201', '66a6c98a0898b3c1f2f1266bceaeabc7', true);
insert into authorities (username, authority) values ('user-201', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-201', 'first-name-201', 'last-name-201', 'first-name-201.last-name-201@springtravel.com');
insert into users (username, password, enabled) values ('user-202', 'cd7d77690e38bf4772099208e9ada0b0', true);
insert into authorities (username, authority) values ('user-202', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-202', 'first-name-202', 'last-name-202', 'first-name-202.last-name-202@springtravel.com');
insert into users (username, password, enabled) values ('user-203', '49dab0dac5be9e708fe7c93d02d5990a', true);
insert into authorities (username, authority) values ('user-203', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-203', 'first-name-203', 'last-name-203', 'first-name-203.last-name-203@springtravel.com');
insert into users (username, password, enabled) values ('user-204', 'f3c32d3386f4cc5c3e724426b5700d5d', true);
insert into authorities (username, authority) values ('user-204', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-204', 'first-name-204', 'last-name-204', 'first-name-204.last-name-204@springtravel.com');
insert into users (username, password, enabled) values ('user-205', '7ecb41462e6b1ba68dee70959cd70c4e', true);
insert into authorities (username, authority) values ('user-205', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-205', 'first-name-205', 'last-name-205', 'first-name-205.last-name-205@springtravel.com');
insert into users (username, password, enabled) values ('user-206', '7804e448298c54c73e246a25990707c8', true);
insert into authorities (username, authority) values ('user-206', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-206', 'first-name-206', 'last-name-206', 'first-name-206.last-name-206@springtravel.com');
insert into users (username, password, enabled) values ('user-207', '418d7af0fadb68102028a11f1984f396', true);
insert into authorities (username, authority) values ('user-207', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-207', 'first-name-207', 'last-name-207', 'first-name-207.last-name-207@springtravel.com');
insert into users (username, password, enabled) values ('user-208', '5a4ab459c7ddac4e13354243972749d1', true);
insert into authorities (username, authority) values ('user-208', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-208', 'first-name-208', 'last-name-208', 'first-name-208.last-name-208@springtravel.com');
insert into users (username, password, enabled) values ('user-209', '3581114fa62998d690ab53d2e29a0b89', true);
insert into authorities (username, authority) values ('user-209', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-209', 'first-name-209', 'last-name-209', 'first-name-209.last-name-209@springtravel.com');
insert into users (username, password, enabled) values ('user-210', '02bf269eb999c6ae15483930d372b2d4', true);
insert into authorities (username, authority) values ('user-210', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-210', 'first-name-210', 'last-name-210', 'first-name-210.last-name-210@springtravel.com');
insert into users (username, password, enabled) values ('user-211', '4097a3cd4dca54508930ad38b6213fc7', true);
insert into authorities (username, authority) values ('user-211', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-211', 'first-name-211', 'last-name-211', 'first-name-211.last-name-211@springtravel.com');
insert into users (username, password, enabled) values ('user-212', '04a6bf06bac08f4dbf6addc5aa399132', true);
insert into authorities (username, authority) values ('user-212', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-212', 'first-name-212', 'last-name-212', 'first-name-212.last-name-212@springtravel.com');
insert into users (username, password, enabled) values ('user-213', '1977bfb647a34fa47242f657a2a6a542', true);
insert into authorities (username, authority) values ('user-213', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-213', 'first-name-213', 'last-name-213', 'first-name-213.last-name-213@springtravel.com');
insert into users (username, password, enabled) values ('user-214', '8719d532ad9647941079674fa93626bc', true);
insert into authorities (username, authority) values ('user-214', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-214', 'first-name-214', 'last-name-214', 'first-name-214.last-name-214@springtravel.com');
insert into users (username, password, enabled) values ('user-215', 'ac67098022e6ba6cb165741cc600d69b', true);
insert into authorities (username, authority) values ('user-215', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-215', 'first-name-215', 'last-name-215', 'first-name-215.last-name-215@springtravel.com');
insert into users (username, password, enabled) values ('user-216', 'e28889f29120797e539fdf27d91baefb', true);
insert into authorities (username, authority) values ('user-216', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-216', 'first-name-216', 'last-name-216', 'first-name-216.last-name-216@springtravel.com');
insert into users (username, password, enabled) values ('user-217', '2d990c97e899e80000639fcc9301583c', true);
insert into authorities (username, authority) values ('user-217', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-217', 'first-name-217', 'last-name-217', 'first-name-217.last-name-217@springtravel.com');
insert into users (username, password, enabled) values ('user-218', '333d2e1af4aff203168e236dc61dfa56', true);
insert into authorities (username, authority) values ('user-218', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-218', 'first-name-218', 'last-name-218', 'first-name-218.last-name-218@springtravel.com');
insert into users (username, password, enabled) values ('user-219', '56164626832b84262f3614d9f5b91410', true);
insert into authorities (username, authority) values ('user-219', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-219', 'first-name-219', 'last-name-219', 'first-name-219.last-name-219@springtravel.com');
insert into users (username, password, enabled) values ('user-220', 'b8a03699b3832fef41a2ba1bb07a6573', true);
insert into authorities (username, authority) values ('user-220', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-220', 'first-name-220', 'last-name-220', 'first-name-220.last-name-220@springtravel.com');
insert into users (username, password, enabled) values ('user-221', 'd9e5a63ea0839879848c29d45668d1ba', true);
insert into authorities (username, authority) values ('user-221', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-221', 'first-name-221', 'last-name-221', 'first-name-221.last-name-221@springtravel.com');
insert into users (username, password, enabled) values ('user-222', '0393aaae0a7a6db9193429e70fbc92d1', true);
insert into authorities (username, authority) values ('user-222', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-222', 'first-name-222', 'last-name-222', 'first-name-222.last-name-222@springtravel.com');
insert into users (username, password, enabled) values ('user-223', '86e8cc5fb6337c433e6dab0f76c7fdcf', true);
insert into authorities (username, authority) values ('user-223', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-223', 'first-name-223', 'last-name-223', 'first-name-223.last-name-223@springtravel.com');
insert into users (username, password, enabled) values ('user-224', '06a18d6225ce8d311bf4b7c5305a06b1', true);
insert into authorities (username, authority) values ('user-224', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-224', 'first-name-224', 'last-name-224', 'first-name-224.last-name-224@springtravel.com');
insert into users (username, password, enabled) values ('user-225', '0f6de6189db9159b92b33a1796759fdb', true);
insert into authorities (username, authority) values ('user-225', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-225', 'first-name-225', 'last-name-225', 'first-name-225.last-name-225@springtravel.com');
insert into users (username, password, enabled) values ('user-226', '27df784ec16ae156999bb364b0bbc022', true);
insert into authorities (username, authority) values ('user-226', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-226', 'first-name-226', 'last-name-226', 'first-name-226.last-name-226@springtravel.com');
insert into users (username, password, enabled) values ('user-227', 'd974330bf31addaed52dd3326569c94f', true);
insert into authorities (username, authority) values ('user-227', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-227', 'first-name-227', 'last-name-227', 'first-name-227.last-name-227@springtravel.com');
insert into users (username, password, enabled) values ('user-228', '21d695c9c75e4c0d46861874792c5978', true);
insert into authorities (username, authority) values ('user-228', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-228', 'first-name-228', 'last-name-228', 'first-name-228.last-name-228@springtravel.com');
insert into users (username, password, enabled) values ('user-229', 'ee9b55e88cd9ca2bfc1dc47dfe4d3481', true);
insert into authorities (username, authority) values ('user-229', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-229', 'first-name-229', 'last-name-229', 'first-name-229.last-name-229@springtravel.com');
insert into users (username, password, enabled) values ('user-230', 'a02b8cda59733ae161fb9a9a6f768d2a', true);
insert into authorities (username, authority) values ('user-230', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-230', 'first-name-230', 'last-name-230', 'first-name-230.last-name-230@springtravel.com');
insert into users (username, password, enabled) values ('user-231', 'cd30c5d68a67e5ea0e0f41518e268a7a', true);
insert into authorities (username, authority) values ('user-231', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-231', 'first-name-231', 'last-name-231', 'first-name-231.last-name-231@springtravel.com');
insert into users (username, password, enabled) values ('user-232', '596624f2825cea95f025b4e4ab9286e0', true);
insert into authorities (username, authority) values ('user-232', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-232', 'first-name-232', 'last-name-232', 'first-name-232.last-name-232@springtravel.com');
insert into users (username, password, enabled) values ('user-233', '9e629128c3b71639b63f6e2b9e30ac41', true);
insert into authorities (username, authority) values ('user-233', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-233', 'first-name-233', 'last-name-233', 'first-name-233.last-name-233@springtravel.com');
insert into users (username, password, enabled) values ('user-234', '1d79544320edaba3c462579aca321754', true);
insert into authorities (username, authority) values ('user-234', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-234', 'first-name-234', 'last-name-234', 'first-name-234.last-name-234@springtravel.com');
insert into users (username, password, enabled) values ('user-235', 'da313cb9974772878216b7ccc090dacb', true);
insert into authorities (username, authority) values ('user-235', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-235', 'first-name-235', 'last-name-235', 'first-name-235.last-name-235@springtravel.com');
insert into users (username, password, enabled) values ('user-236', 'db3d2f4548064fdbe7672638d00657bb', true);
insert into authorities (username, authority) values ('user-236', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-236', 'first-name-236', 'last-name-236', 'first-name-236.last-name-236@springtravel.com');
insert into users (username, password, enabled) values ('user-237', '3ba37154c8fddc203c065e9e9862534e', true);
insert into authorities (username, authority) values ('user-237', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-237', 'first-name-237', 'last-name-237', 'first-name-237.last-name-237@springtravel.com');
insert into users (username, password, enabled) values ('user-238', 'a7d780c4cf71b06f7d1f3f6e6ea501d5', true);
insert into authorities (username, authority) values ('user-238', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-238', 'first-name-238', 'last-name-238', 'first-name-238.last-name-238@springtravel.com');
insert into users (username, password, enabled) values ('user-239', '9e70fe2eb94897b807fd17a53b07b51c', true);
insert into authorities (username, authority) values ('user-239', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-239', 'first-name-239', 'last-name-239', 'first-name-239.last-name-239@springtravel.com');
insert into users (username, password, enabled) values ('user-240', 'c15c7c675f26260f3b91b00668e87db9', true);
insert into authorities (username, authority) values ('user-240', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-240', 'first-name-240', 'last-name-240', 'first-name-240.last-name-240@springtravel.com');
insert into users (username, password, enabled) values ('user-241', '3ef68e5973db1b678fe57bde166b1483', true);
insert into authorities (username, authority) values ('user-241', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-241', 'first-name-241', 'last-name-241', 'first-name-241.last-name-241@springtravel.com');
insert into users (username, password, enabled) values ('user-242', 'bea3119f7d64fe25916925e64872e6a2', true);
insert into authorities (username, authority) values ('user-242', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-242', 'first-name-242', 'last-name-242', 'first-name-242.last-name-242@springtravel.com');
insert into users (username, password, enabled) values ('user-243', 'bd8aa9b3ef577d1b641f9085eda41ed3', true);
insert into authorities (username, authority) values ('user-243', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-243', 'first-name-243', 'last-name-243', 'first-name-243.last-name-243@springtravel.com');
insert into users (username, password, enabled) values ('user-244', 'e77843a0ee7e22d968acc9ca15f51569', true);
insert into authorities (username, authority) values ('user-244', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-244', 'first-name-244', 'last-name-244', 'first-name-244.last-name-244@springtravel.com');
insert into users (username, password, enabled) values ('user-245', 'bcffbf99ca8d56282bbad8f83ad927c9', true);
insert into authorities (username, authority) values ('user-245', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-245', 'first-name-245', 'last-name-245', 'first-name-245.last-name-245@springtravel.com');
insert into users (username, password, enabled) values ('user-246', '2b1d6e7b6cee262a6ed3c2338e3f3898', true);
insert into authorities (username, authority) values ('user-246', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-246', 'first-name-246', 'last-name-246', 'first-name-246.last-name-246@springtravel.com');
insert into users (username, password, enabled) values ('user-247', 'd9ab07be1c9c41960215972ae899c4f8', true);
insert into authorities (username, authority) values ('user-247', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-247', 'first-name-247', 'last-name-247', 'first-name-247.last-name-247@springtravel.com');
insert into users (username, password, enabled) values ('user-248', 'b7d0d7a91ea0070f6a4ec2819e0be0ea', true);
insert into authorities (username, authority) values ('user-248', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-248', 'first-name-248', 'last-name-248', 'first-name-248.last-name-248@springtravel.com');
insert into users (username, password, enabled) values ('user-249', 'cca0f241fe07075d77995134a7abf1c9', true);
insert into authorities (username, authority) values ('user-249', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-249', 'first-name-249', 'last-name-249', 'first-name-249.last-name-249@springtravel.com');
insert into users (username, password, enabled) values ('user-250', 'd6f694e6fc382c4c9f9b2c6af21086d5', true);
insert into authorities (username, authority) values ('user-250', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-250', 'first-name-250', 'last-name-250', 'first-name-250.last-name-250@springtravel.com');
insert into users (username, password, enabled) values ('user-251', '49f112a9b83f9a3ce78484eb0e193831', true);
insert into authorities (username, authority) values ('user-251', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-251', 'first-name-251', 'last-name-251', 'first-name-251.last-name-251@springtravel.com');
insert into users (username, password, enabled) values ('user-252', '99d775c25543d7e9f7a0a05301ae3f2c', true);
insert into authorities (username, authority) values ('user-252', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-252', 'first-name-252', 'last-name-252', 'first-name-252.last-name-252@springtravel.com');
insert into users (username, password, enabled) values ('user-253', '2ea74a13c4d97082d9b0701272ab333d', true);
insert into authorities (username, authority) values ('user-253', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-253', 'first-name-253', 'last-name-253', 'first-name-253.last-name-253@springtravel.com');
insert into users (username, password, enabled) values ('user-254', '9eb9cc06104b86e904890902b6708cdc', true);
insert into authorities (username, authority) values ('user-254', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-254', 'first-name-254', 'last-name-254', 'first-name-254.last-name-254@springtravel.com');
insert into users (username, password, enabled) values ('user-255', 'fad87821f247ba33c84df6e17a3f7c51', true);
insert into authorities (username, authority) values ('user-255', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-255', 'first-name-255', 'last-name-255', 'first-name-255.last-name-255@springtravel.com');
insert into users (username, password, enabled) values ('user-256', 'f57f7e38be1e52b9a5aa2fe93e6573c9', true);
insert into authorities (username, authority) values ('user-256', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-256', 'first-name-256', 'last-name-256', 'first-name-256.last-name-256@springtravel.com');
insert into users (username, password, enabled) values ('user-257', 'af8f7f01e8eafc8439b3cb8eb8a8c8a2', true);
insert into authorities (username, authority) values ('user-257', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-257', 'first-name-257', 'last-name-257', 'first-name-257.last-name-257@springtravel.com');
insert into users (username, password, enabled) values ('user-258', 'd600777bf206889faff86060256947ba', true);
insert into authorities (username, authority) values ('user-258', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-258', 'first-name-258', 'last-name-258', 'first-name-258.last-name-258@springtravel.com');
insert into users (username, password, enabled) values ('user-259', 'd06f6b953ce0de85700a0ab32b27c91b', true);
insert into authorities (username, authority) values ('user-259', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-259', 'first-name-259', 'last-name-259', 'first-name-259.last-name-259@springtravel.com');
insert into users (username, password, enabled) values ('user-260', 'b2589e64e58fd8d9984901c77d772416', true);
insert into authorities (username, authority) values ('user-260', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-260', 'first-name-260', 'last-name-260', 'first-name-260.last-name-260@springtravel.com');
insert into users (username, password, enabled) values ('user-261', 'b030361340255e2555e3b4c308e6fb90', true);
insert into authorities (username, authority) values ('user-261', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-261', 'first-name-261', 'last-name-261', 'first-name-261.last-name-261@springtravel.com');
insert into users (username, password, enabled) values ('user-262', '2edb61afe0fe6960da087a19cc373cf9', true);
insert into authorities (username, authority) values ('user-262', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-262', 'first-name-262', 'last-name-262', 'first-name-262.last-name-262@springtravel.com');
insert into users (username, password, enabled) values ('user-263', '2eaac99b66daa19ab5ac0ac309bc11f0', true);
insert into authorities (username, authority) values ('user-263', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-263', 'first-name-263', 'last-name-263', 'first-name-263.last-name-263@springtravel.com');
insert into users (username, password, enabled) values ('user-264', '378291c85c0e8444a7c1932dfd7af5cc', true);
insert into authorities (username, authority) values ('user-264', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-264', 'first-name-264', 'last-name-264', 'first-name-264.last-name-264@springtravel.com');
insert into users (username, password, enabled) values ('user-265', 'f336b4bfa21a203d0633312a2773bd5d', true);
insert into authorities (username, authority) values ('user-265', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-265', 'first-name-265', 'last-name-265', 'first-name-265.last-name-265@springtravel.com');
insert into users (username, password, enabled) values ('user-266', 'ad34d96b5f13348b1342466180cdf1f0', true);
insert into authorities (username, authority) values ('user-266', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-266', 'first-name-266', 'last-name-266', 'first-name-266.last-name-266@springtravel.com');
insert into users (username, password, enabled) values ('user-267', '6ffd31f8388bfd547adf78463d550e18', true);
insert into authorities (username, authority) values ('user-267', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-267', 'first-name-267', 'last-name-267', 'first-name-267.last-name-267@springtravel.com');
insert into users (username, password, enabled) values ('user-268', '47910f055bc952d225d2de05a57043ac', true);
insert into authorities (username, authority) values ('user-268', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-268', 'first-name-268', 'last-name-268', 'first-name-268.last-name-268@springtravel.com');
insert into users (username, password, enabled) values ('user-269', '89757bb9f06b709e581f0edec7147201', true);
insert into authorities (username, authority) values ('user-269', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-269', 'first-name-269', 'last-name-269', 'first-name-269.last-name-269@springtravel.com');
insert into users (username, password, enabled) values ('user-270', '9cd749397e2ff6df07ec6d6804a44e5c', true);
insert into authorities (username, authority) values ('user-270', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-270', 'first-name-270', 'last-name-270', 'first-name-270.last-name-270@springtravel.com');
insert into users (username, password, enabled) values ('user-271', 'f0d2a0f491d2ffb0503e6b4ec16c5118', true);
insert into authorities (username, authority) values ('user-271', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-271', 'first-name-271', 'last-name-271', 'first-name-271.last-name-271@springtravel.com');
insert into users (username, password, enabled) values ('user-272', '990e24a6da23e011738a4cff52ef24e4', true);
insert into authorities (username, authority) values ('user-272', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-272', 'first-name-272', 'last-name-272', 'first-name-272.last-name-272@springtravel.com');
insert into users (username, password, enabled) values ('user-273', 'f122deead8eae2be336c8d64f100342f', true);
insert into authorities (username, authority) values ('user-273', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-273', 'first-name-273', 'last-name-273', 'first-name-273.last-name-273@springtravel.com');
insert into users (username, password, enabled) values ('user-274', '7dc81cecae39e9ec7bbca946cc1e34be', true);
insert into authorities (username, authority) values ('user-274', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-274', 'first-name-274', 'last-name-274', 'first-name-274.last-name-274@springtravel.com');
insert into users (username, password, enabled) values ('user-275', 'c6907ff45e839a753829b72ffea9fb04', true);
insert into authorities (username, authority) values ('user-275', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-275', 'first-name-275', 'last-name-275', 'first-name-275.last-name-275@springtravel.com');
insert into users (username, password, enabled) values ('user-276', '82ab8e56deca962e4fa7286a02c2063a', true);
insert into authorities (username, authority) values ('user-276', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-276', 'first-name-276', 'last-name-276', 'first-name-276.last-name-276@springtravel.com');
insert into users (username, password, enabled) values ('user-277', '271c125d6036817ad756b51a6496c64e', true);
insert into authorities (username, authority) values ('user-277', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-277', 'first-name-277', 'last-name-277', 'first-name-277.last-name-277@springtravel.com');
insert into users (username, password, enabled) values ('user-278', 'e70c2e639187437452c8dc01fc8180f6', true);
insert into authorities (username, authority) values ('user-278', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-278', 'first-name-278', 'last-name-278', 'first-name-278.last-name-278@springtravel.com');
insert into users (username, password, enabled) values ('user-279', 'f654fd48003ed8978c3a31efc1bc1320', true);
insert into authorities (username, authority) values ('user-279', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-279', 'first-name-279', 'last-name-279', 'first-name-279.last-name-279@springtravel.com');
insert into users (username, password, enabled) values ('user-280', 'a6e18d1f71c536dbe21957c497203759', true);
insert into authorities (username, authority) values ('user-280', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-280', 'first-name-280', 'last-name-280', 'first-name-280.last-name-280@springtravel.com');
insert into users (username, password, enabled) values ('user-281', 'be33105644f79f63db80c21ade642553', true);
insert into authorities (username, authority) values ('user-281', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-281', 'first-name-281', 'last-name-281', 'first-name-281.last-name-281@springtravel.com');
insert into users (username, password, enabled) values ('user-282', '38b8e5341828f96f016f1be500883485', true);
insert into authorities (username, authority) values ('user-282', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-282', 'first-name-282', 'last-name-282', 'first-name-282.last-name-282@springtravel.com');
insert into users (username, password, enabled) values ('user-283', '70a2b9dd3fcfb168d155a99e78136e1a', true);
insert into authorities (username, authority) values ('user-283', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-283', 'first-name-283', 'last-name-283', 'first-name-283.last-name-283@springtravel.com');
insert into users (username, password, enabled) values ('user-284', '1ec178c53d9f09b010330d79798b2911', true);
insert into authorities (username, authority) values ('user-284', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-284', 'first-name-284', 'last-name-284', 'first-name-284.last-name-284@springtravel.com');
insert into users (username, password, enabled) values ('user-285', '3929a8332114b8947952659dca615c12', true);
insert into authorities (username, authority) values ('user-285', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-285', 'first-name-285', 'last-name-285', 'first-name-285.last-name-285@springtravel.com');
insert into users (username, password, enabled) values ('user-286', 'fa53780d6ffba2980879a9467f725d30', true);
insert into authorities (username, authority) values ('user-286', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-286', 'first-name-286', 'last-name-286', 'first-name-286.last-name-286@springtravel.com');
insert into users (username, password, enabled) values ('user-287', '9919146be7b4f6fcb99f1bf9bc1534aa', true);
insert into authorities (username, authority) values ('user-287', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-287', 'first-name-287', 'last-name-287', 'first-name-287.last-name-287@springtravel.com');
insert into users (username, password, enabled) values ('user-288', '03c83496d3bb46ed2f182dcae8026207', true);
insert into authorities (username, authority) values ('user-288', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-288', 'first-name-288', 'last-name-288', 'first-name-288.last-name-288@springtravel.com');
insert into users (username, password, enabled) values ('user-289', 'a7e5a059c35a077b41c199b9cfab8f18', true);
insert into authorities (username, authority) values ('user-289', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-289', 'first-name-289', 'last-name-289', 'first-name-289.last-name-289@springtravel.com');
insert into users (username, password, enabled) values ('user-290', '1b0bfc267e84aaf2679a33ed9028eb3f', true);
insert into authorities (username, authority) values ('user-290', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-290', 'first-name-290', 'last-name-290', 'first-name-290.last-name-290@springtravel.com');
insert into users (username, password, enabled) values ('user-291', '698c2bd7100d355ced7e60e1bdfa5f98', true);
insert into authorities (username, authority) values ('user-291', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-291', 'first-name-291', 'last-name-291', 'first-name-291.last-name-291@springtravel.com');
insert into users (username, password, enabled) values ('user-292', 'd0319667930a47c6398d6ca4a905c146', true);
insert into authorities (username, authority) values ('user-292', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-292', 'first-name-292', 'last-name-292', 'first-name-292.last-name-292@springtravel.com');
insert into users (username, password, enabled) values ('user-293', '07780fc957c4708d5a52917c395523e5', true);
insert into authorities (username, authority) values ('user-293', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-293', 'first-name-293', 'last-name-293', 'first-name-293.last-name-293@springtravel.com');
insert into users (username, password, enabled) values ('user-294', '30d6eb5bbcfc3fa1e8435397faa00660', true);
insert into authorities (username, authority) values ('user-294', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-294', 'first-name-294', 'last-name-294', 'first-name-294.last-name-294@springtravel.com');
insert into users (username, password, enabled) values ('user-295', 'c0c5bd30d4aaf0d275bcea38434b4c24', true);
insert into authorities (username, authority) values ('user-295', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-295', 'first-name-295', 'last-name-295', 'first-name-295.last-name-295@springtravel.com');
insert into users (username, password, enabled) values ('user-296', '091541fe9be7cf25a83d584864f60c7e', true);
insert into authorities (username, authority) values ('user-296', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-296', 'first-name-296', 'last-name-296', 'first-name-296.last-name-296@springtravel.com');
insert into users (username, password, enabled) values ('user-297', '51c3ab2124c1c2a10c3cc1d38a8f2074', true);
insert into authorities (username, authority) values ('user-297', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-297', 'first-name-297', 'last-name-297', 'first-name-297.last-name-297@springtravel.com');
insert into users (username, password, enabled) values ('user-298', 'b5720294db251a52e4f208337e1669c6', true);
insert into authorities (username, authority) values ('user-298', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-298', 'first-name-298', 'last-name-298', 'first-name-298.last-name-298@springtravel.com');
insert into users (username, password, enabled) values ('user-299', '3fae2d571865294d4b37a2273e0683dd', true);
insert into authorities (username, authority) values ('user-299', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-299', 'first-name-299', 'last-name-299', 'first-name-299.last-name-299@springtravel.com');
insert into users (username, password, enabled) values ('user-300', '72eb072ca29d4827884434b048bea014', true);
insert into authorities (username, authority) values ('user-300', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-300', 'first-name-300', 'last-name-300', 'first-name-300.last-name-300@springtravel.com');
insert into users (username, password, enabled) values ('user-301', 'f695207cda21f1e8bf0a84531406fbb7', true);
insert into authorities (username, authority) values ('user-301', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-301', 'first-name-301', 'last-name-301', 'first-name-301.last-name-301@springtravel.com');
insert into users (username, password, enabled) values ('user-302', '0010ee325878e800033220b787c3a8d1', true);
insert into authorities (username, authority) values ('user-302', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-302', 'first-name-302', 'last-name-302', 'first-name-302.last-name-302@springtravel.com');
insert into users (username, password, enabled) values ('user-303', '64b249d8ea4e19f882228d828f8e6b6a', true);
insert into authorities (username, authority) values ('user-303', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-303', 'first-name-303', 'last-name-303', 'first-name-303.last-name-303@springtravel.com');
insert into users (username, password, enabled) values ('user-304', '9007349c494ae1e08e88240b9383f318', true);
insert into authorities (username, authority) values ('user-304', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-304', 'first-name-304', 'last-name-304', 'first-name-304.last-name-304@springtravel.com');
insert into users (username, password, enabled) values ('user-305', 'f7e3fd87dc930ca2f032c251a8a96e44', true);
insert into authorities (username, authority) values ('user-305', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-305', 'first-name-305', 'last-name-305', 'first-name-305.last-name-305@springtravel.com');
insert into users (username, password, enabled) values ('user-306', '083add56ccd19a3d7c7e1cc823fe138e', true);
insert into authorities (username, authority) values ('user-306', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-306', 'first-name-306', 'last-name-306', 'first-name-306.last-name-306@springtravel.com');
insert into users (username, password, enabled) values ('user-307', '5ff90fd81ce7257ec5c529e59513fc89', true);
insert into authorities (username, authority) values ('user-307', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-307', 'first-name-307', 'last-name-307', 'first-name-307.last-name-307@springtravel.com');
insert into users (username, password, enabled) values ('user-308', 'a2e893ad11b9ffffaef938ec1eea50d0', true);
insert into authorities (username, authority) values ('user-308', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-308', 'first-name-308', 'last-name-308', 'first-name-308.last-name-308@springtravel.com');
insert into users (username, password, enabled) values ('user-309', 'd07b620f1e3542557c7ef7754ab58bbf', true);
insert into authorities (username, authority) values ('user-309', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-309', 'first-name-309', 'last-name-309', 'first-name-309.last-name-309@springtravel.com');
insert into users (username, password, enabled) values ('user-310', '2f7b1c1885e308fcbdd9b705ad1fa9db', true);
insert into authorities (username, authority) values ('user-310', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-310', 'first-name-310', 'last-name-310', 'first-name-310.last-name-310@springtravel.com');
insert into users (username, password, enabled) values ('user-311', 'e35cd4f268f94fae225907b99d7d9de1', true);
insert into authorities (username, authority) values ('user-311', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-311', 'first-name-311', 'last-name-311', 'first-name-311.last-name-311@springtravel.com');
insert into users (username, password, enabled) values ('user-312', '41257ee619550b05f4907b2f2425d90f', true);
insert into authorities (username, authority) values ('user-312', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-312', 'first-name-312', 'last-name-312', 'first-name-312.last-name-312@springtravel.com');
insert into users (username, password, enabled) values ('user-313', '95a1c6f51ae391d0e65613eeec491fd6', true);
insert into authorities (username, authority) values ('user-313', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-313', 'first-name-313', 'last-name-313', 'first-name-313.last-name-313@springtravel.com');
insert into users (username, password, enabled) values ('user-314', 'eb8e114c2987dfdad2023e66e00475a0', true);
insert into authorities (username, authority) values ('user-314', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-314', 'first-name-314', 'last-name-314', 'first-name-314.last-name-314@springtravel.com');
insert into users (username, password, enabled) values ('user-315', '0ddba6aea16c4b965998835c67fd0e57', true);
insert into authorities (username, authority) values ('user-315', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-315', 'first-name-315', 'last-name-315', 'first-name-315.last-name-315@springtravel.com');
insert into users (username, password, enabled) values ('user-316', '2278f69be1903bb722153d54ee99f1a3', true);
insert into authorities (username, authority) values ('user-316', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-316', 'first-name-316', 'last-name-316', 'first-name-316.last-name-316@springtravel.com');
insert into users (username, password, enabled) values ('user-317', '01e67ab06333e430eab3aaf3abf86bd8', true);
insert into authorities (username, authority) values ('user-317', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-317', 'first-name-317', 'last-name-317', 'first-name-317.last-name-317@springtravel.com');
insert into users (username, password, enabled) values ('user-318', 'f77a81b0834f6f5264e13974a1543ed3', true);
insert into authorities (username, authority) values ('user-318', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-318', 'first-name-318', 'last-name-318', 'first-name-318.last-name-318@springtravel.com');
insert into users (username, password, enabled) values ('user-319', 'eae1d8e4b58e1898cec5ee770b8983e2', true);
insert into authorities (username, authority) values ('user-319', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-319', 'first-name-319', 'last-name-319', 'first-name-319.last-name-319@springtravel.com');
insert into users (username, password, enabled) values ('user-320', 'bdf597d3cc300d9489b15263103fb0ec', true);
insert into authorities (username, authority) values ('user-320', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-320', 'first-name-320', 'last-name-320', 'first-name-320.last-name-320@springtravel.com');
insert into users (username, password, enabled) values ('user-321', 'cd638f836f0fa013f22d420c03535703', true);
insert into authorities (username, authority) values ('user-321', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-321', 'first-name-321', 'last-name-321', 'first-name-321.last-name-321@springtravel.com');
insert into users (username, password, enabled) values ('user-322', '731a61015fdf633ecf4827f08b4e5a61', true);
insert into authorities (username, authority) values ('user-322', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-322', 'first-name-322', 'last-name-322', 'first-name-322.last-name-322@springtravel.com');
insert into users (username, password, enabled) values ('user-323', '420ea960771f918edf49a83eb0a8f4f4', true);
insert into authorities (username, authority) values ('user-323', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-323', 'first-name-323', 'last-name-323', 'first-name-323.last-name-323@springtravel.com');
insert into users (username, password, enabled) values ('user-324', '9db4292583163b6132acff71c4338f6c', true);
insert into authorities (username, authority) values ('user-324', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-324', 'first-name-324', 'last-name-324', 'first-name-324.last-name-324@springtravel.com');
insert into users (username, password, enabled) values ('user-325', 'f489c49c04cbc3a2add8dddc35ad762d', true);
insert into authorities (username, authority) values ('user-325', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-325', 'first-name-325', 'last-name-325', 'first-name-325.last-name-325@springtravel.com');
insert into users (username, password, enabled) values ('user-326', '18616b11d2b49fade8d7d397333c1903', true);
insert into authorities (username, authority) values ('user-326', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-326', 'first-name-326', 'last-name-326', 'first-name-326.last-name-326@springtravel.com');
insert into users (username, password, enabled) values ('user-327', '75bbf661104204eea1b7116ad28680f3', true);
insert into authorities (username, authority) values ('user-327', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-327', 'first-name-327', 'last-name-327', 'first-name-327.last-name-327@springtravel.com');
insert into users (username, password, enabled) values ('user-328', '2b0f20c376a7777e6289c78bc6516fa0', true);
insert into authorities (username, authority) values ('user-328', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-328', 'first-name-328', 'last-name-328', 'first-name-328.last-name-328@springtravel.com');
insert into users (username, password, enabled) values ('user-329', '8ac0ce33cdf1f20ba0b4e010f1e17379', true);
insert into authorities (username, authority) values ('user-329', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-329', 'first-name-329', 'last-name-329', 'first-name-329.last-name-329@springtravel.com');
insert into users (username, password, enabled) values ('user-330', 'fdadfe568adb28d7fcd3c547fc1cf456', true);
insert into authorities (username, authority) values ('user-330', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-330', 'first-name-330', 'last-name-330', 'first-name-330.last-name-330@springtravel.com');
insert into users (username, password, enabled) values ('user-331', 'b76c107641fd234194f07918ce8dc277', true);
insert into authorities (username, authority) values ('user-331', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-331', 'first-name-331', 'last-name-331', 'first-name-331.last-name-331@springtravel.com');
insert into users (username, password, enabled) values ('user-332', '66bee7be020b0efc2ef1fbcab534fc61', true);
insert into authorities (username, authority) values ('user-332', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-332', 'first-name-332', 'last-name-332', 'first-name-332.last-name-332@springtravel.com');
insert into users (username, password, enabled) values ('user-333', '4ad8c273cfd031a597a756613206a7e2', true);
insert into authorities (username, authority) values ('user-333', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-333', 'first-name-333', 'last-name-333', 'first-name-333.last-name-333@springtravel.com');
insert into users (username, password, enabled) values ('user-334', '74ec7a6d4a7c1e7e8e1fe7b81e084757', true);
insert into authorities (username, authority) values ('user-334', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-334', 'first-name-334', 'last-name-334', 'first-name-334.last-name-334@springtravel.com');
insert into users (username, password, enabled) values ('user-335', '26ec433a5325977997bdb075fe4a7ced', true);
insert into authorities (username, authority) values ('user-335', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-335', 'first-name-335', 'last-name-335', 'first-name-335.last-name-335@springtravel.com');
insert into users (username, password, enabled) values ('user-336', 'a4ec4568c99ac269dbf88af7658bcea8', true);
insert into authorities (username, authority) values ('user-336', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-336', 'first-name-336', 'last-name-336', 'first-name-336.last-name-336@springtravel.com');
insert into users (username, password, enabled) values ('user-337', '96349066c5dfd65e6e0850dce49bc32b', true);
insert into authorities (username, authority) values ('user-337', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-337', 'first-name-337', 'last-name-337', 'first-name-337.last-name-337@springtravel.com');
insert into users (username, password, enabled) values ('user-338', '7b29bc6752e1fb420e2c167dfe0d9377', true);
insert into authorities (username, authority) values ('user-338', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-338', 'first-name-338', 'last-name-338', 'first-name-338.last-name-338@springtravel.com');
insert into users (username, password, enabled) values ('user-339', '249d73bea1889ec2214ddf0173c4959b', true);
insert into authorities (username, authority) values ('user-339', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-339', 'first-name-339', 'last-name-339', 'first-name-339.last-name-339@springtravel.com');
insert into users (username, password, enabled) values ('user-340', '3d4a925f40073ddfc0392e36430cab82', true);
insert into authorities (username, authority) values ('user-340', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-340', 'first-name-340', 'last-name-340', 'first-name-340.last-name-340@springtravel.com');
insert into users (username, password, enabled) values ('user-341', 'f491205bd029ce8b8a0f9ae43d46079e', true);
insert into authorities (username, authority) values ('user-341', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-341', 'first-name-341', 'last-name-341', 'first-name-341.last-name-341@springtravel.com');
insert into users (username, password, enabled) values ('user-342', 'd9e672fcffdde47fcdab18a1d45da2d0', true);
insert into authorities (username, authority) values ('user-342', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-342', 'first-name-342', 'last-name-342', 'first-name-342.last-name-342@springtravel.com');
insert into users (username, password, enabled) values ('user-343', '01beba5e887b289754d81b031c890a75', true);
insert into authorities (username, authority) values ('user-343', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-343', 'first-name-343', 'last-name-343', 'first-name-343.last-name-343@springtravel.com');
insert into users (username, password, enabled) values ('user-344', 'a491055457f4d64d0ab48a218bd415f9', true);
insert into authorities (username, authority) values ('user-344', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-344', 'first-name-344', 'last-name-344', 'first-name-344.last-name-344@springtravel.com');
insert into users (username, password, enabled) values ('user-345', '0d863c216170daf95627d38dc2eeabdf', true);
insert into authorities (username, authority) values ('user-345', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-345', 'first-name-345', 'last-name-345', 'first-name-345.last-name-345@springtravel.com');
insert into users (username, password, enabled) values ('user-346', '4aed376334a65a6ee3a8901b627fabe0', true);
insert into authorities (username, authority) values ('user-346', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-346', 'first-name-346', 'last-name-346', 'first-name-346.last-name-346@springtravel.com');
insert into users (username, password, enabled) values ('user-347', '45363b82ea3120d254f64a4476e0cdec', true);
insert into authorities (username, authority) values ('user-347', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-347', 'first-name-347', 'last-name-347', 'first-name-347.last-name-347@springtravel.com');
insert into users (username, password, enabled) values ('user-348', 'b2e2ca83d41336694831cb5a2bf296c8', true);
insert into authorities (username, authority) values ('user-348', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-348', 'first-name-348', 'last-name-348', 'first-name-348.last-name-348@springtravel.com');
insert into users (username, password, enabled) values ('user-349', 'ae99a07dd777223c43c22f180ffe53a9', true);
insert into authorities (username, authority) values ('user-349', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-349', 'first-name-349', 'last-name-349', 'first-name-349.last-name-349@springtravel.com');
insert into users (username, password, enabled) values ('user-350', 'deb6a35a1632ab38a22d0e051eacfba1', true);
insert into authorities (username, authority) values ('user-350', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-350', 'first-name-350', 'last-name-350', 'first-name-350.last-name-350@springtravel.com');
insert into users (username, password, enabled) values ('user-351', '6dd219619d5816ce546cce6d6c5724fb', true);
insert into authorities (username, authority) values ('user-351', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-351', 'first-name-351', 'last-name-351', 'first-name-351.last-name-351@springtravel.com');
insert into users (username, password, enabled) values ('user-352', 'fc2e09a70ad56d4cf802b06e4bd1dc4f', true);
insert into authorities (username, authority) values ('user-352', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-352', 'first-name-352', 'last-name-352', 'first-name-352.last-name-352@springtravel.com');
insert into users (username, password, enabled) values ('user-353', '9cd976e23f74fb90f83136df638285a5', true);
insert into authorities (username, authority) values ('user-353', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-353', 'first-name-353', 'last-name-353', 'first-name-353.last-name-353@springtravel.com');
insert into users (username, password, enabled) values ('user-354', 'b5704a44bcb9560d5a131bbb576f9b2e', true);
insert into authorities (username, authority) values ('user-354', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-354', 'first-name-354', 'last-name-354', 'first-name-354.last-name-354@springtravel.com');
insert into users (username, password, enabled) values ('user-355', '52f3586ee2389cb1a672ade157ee5c78', true);
insert into authorities (username, authority) values ('user-355', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-355', 'first-name-355', 'last-name-355', 'first-name-355.last-name-355@springtravel.com');
insert into users (username, password, enabled) values ('user-356', 'a678c38dab68dfc68039e83dab2d7d34', true);
insert into authorities (username, authority) values ('user-356', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-356', 'first-name-356', 'last-name-356', 'first-name-356.last-name-356@springtravel.com');
insert into users (username, password, enabled) values ('user-357', '6c90561bd0b7684ba5d7c2549a1a72d6', true);
insert into authorities (username, authority) values ('user-357', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-357', 'first-name-357', 'last-name-357', 'first-name-357.last-name-357@springtravel.com');
insert into users (username, password, enabled) values ('user-358', 'ada6cfe99133b7c584c9a8832ede7b52', true);
insert into authorities (username, authority) values ('user-358', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-358', 'first-name-358', 'last-name-358', 'first-name-358.last-name-358@springtravel.com');
insert into users (username, password, enabled) values ('user-359', '69806eac6933d456c157f58803f6a0bb', true);
insert into authorities (username, authority) values ('user-359', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-359', 'first-name-359', 'last-name-359', 'first-name-359.last-name-359@springtravel.com');
insert into users (username, password, enabled) values ('user-360', 'a4ced4f02878c37affc74defcdccebfa', true);
insert into authorities (username, authority) values ('user-360', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-360', 'first-name-360', 'last-name-360', 'first-name-360.last-name-360@springtravel.com');
insert into users (username, password, enabled) values ('user-361', '29a3ce2371f8ce9aabaa634041252fa9', true);
insert into authorities (username, authority) values ('user-361', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-361', 'first-name-361', 'last-name-361', 'first-name-361.last-name-361@springtravel.com');
insert into users (username, password, enabled) values ('user-362', '169b13edca48d1bb988eef192817958d', true);
insert into authorities (username, authority) values ('user-362', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-362', 'first-name-362', 'last-name-362', 'first-name-362.last-name-362@springtravel.com');
insert into users (username, password, enabled) values ('user-363', '0d1936b801bee00548b3a00e09344c32', true);
insert into authorities (username, authority) values ('user-363', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-363', 'first-name-363', 'last-name-363', 'first-name-363.last-name-363@springtravel.com');
insert into users (username, password, enabled) values ('user-364', '25da4983cacd2342829f888174b246d5', true);
insert into authorities (username, authority) values ('user-364', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-364', 'first-name-364', 'last-name-364', 'first-name-364.last-name-364@springtravel.com');
insert into users (username, password, enabled) values ('user-365', 'f475d532cd0c301622692c15b36c9bf6', true);
insert into authorities (username, authority) values ('user-365', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-365', 'first-name-365', 'last-name-365', 'first-name-365.last-name-365@springtravel.com');
insert into users (username, password, enabled) values ('user-366', 'fa36d2b6077f7485053794fe130797dd', true);
insert into authorities (username, authority) values ('user-366', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-366', 'first-name-366', 'last-name-366', 'first-name-366.last-name-366@springtravel.com');
insert into users (username, password, enabled) values ('user-367', 'bf4ec246e8ce81db622bf4f348a50b1b', true);
insert into authorities (username, authority) values ('user-367', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-367', 'first-name-367', 'last-name-367', 'first-name-367.last-name-367@springtravel.com');
insert into users (username, password, enabled) values ('user-368', 'adb03f824101745b5a279505ba2e8a25', true);
insert into authorities (username, authority) values ('user-368', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-368', 'first-name-368', 'last-name-368', 'first-name-368.last-name-368@springtravel.com');
insert into users (username, password, enabled) values ('user-369', 'b099e7c4ce84182cece9fe080312cb18', true);
insert into authorities (username, authority) values ('user-369', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-369', 'first-name-369', 'last-name-369', 'first-name-369.last-name-369@springtravel.com');
insert into users (username, password, enabled) values ('user-370', '799253fcac5df30a246d2668485044cb', true);
insert into authorities (username, authority) values ('user-370', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-370', 'first-name-370', 'last-name-370', 'first-name-370.last-name-370@springtravel.com');
insert into users (username, password, enabled) values ('user-371', '9ec03a5d97366be471547a7a20cfd2b1', true);
insert into authorities (username, authority) values ('user-371', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-371', 'first-name-371', 'last-name-371', 'first-name-371.last-name-371@springtravel.com');
insert into users (username, password, enabled) values ('user-372', '898e1761d6655e62956470dcdf8bef03', true);
insert into authorities (username, authority) values ('user-372', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-372', 'first-name-372', 'last-name-372', 'first-name-372.last-name-372@springtravel.com');
insert into users (username, password, enabled) values ('user-373', 'e0ec9532c1d40b51eb80b9ee5d4d26f9', true);
insert into authorities (username, authority) values ('user-373', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-373', 'first-name-373', 'last-name-373', 'first-name-373.last-name-373@springtravel.com');
insert into users (username, password, enabled) values ('user-374', 'b58b03862e5122921c2514f1422946e4', true);
insert into authorities (username, authority) values ('user-374', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-374', 'first-name-374', 'last-name-374', 'first-name-374.last-name-374@springtravel.com');
insert into users (username, password, enabled) values ('user-375', '98bcea7285f1e6716ffddb46f92ab197', true);
insert into authorities (username, authority) values ('user-375', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-375', 'first-name-375', 'last-name-375', 'first-name-375.last-name-375@springtravel.com');
insert into users (username, password, enabled) values ('user-376', 'eb0dce9afe19e191f9827eb80b42d5a0', true);
insert into authorities (username, authority) values ('user-376', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-376', 'first-name-376', 'last-name-376', 'first-name-376.last-name-376@springtravel.com');
insert into users (username, password, enabled) values ('user-377', '9ecef205e83503a49a6ceaee66ddc22c', true);
insert into authorities (username, authority) values ('user-377', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-377', 'first-name-377', 'last-name-377', 'first-name-377.last-name-377@springtravel.com');
insert into users (username, password, enabled) values ('user-378', '60fed3c4e3a3febd893e155163d7c509', true);
insert into authorities (username, authority) values ('user-378', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-378', 'first-name-378', 'last-name-378', 'first-name-378.last-name-378@springtravel.com');
insert into users (username, password, enabled) values ('user-379', '825d44c233b240a3c40292e5c3983121', true);
insert into authorities (username, authority) values ('user-379', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-379', 'first-name-379', 'last-name-379', 'first-name-379.last-name-379@springtravel.com');
insert into users (username, password, enabled) values ('user-380', 'c1a76ede03f3f355c9ab036c8fd121a6', true);
insert into authorities (username, authority) values ('user-380', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-380', 'first-name-380', 'last-name-380', 'first-name-380.last-name-380@springtravel.com');
insert into users (username, password, enabled) values ('user-381', '6274d269028855fd7b84fa8617de1061', true);
insert into authorities (username, authority) values ('user-381', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-381', 'first-name-381', 'last-name-381', 'first-name-381.last-name-381@springtravel.com');
insert into users (username, password, enabled) values ('user-382', 'd1fd0279472edce217daef8974a09a46', true);
insert into authorities (username, authority) values ('user-382', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-382', 'first-name-382', 'last-name-382', 'first-name-382.last-name-382@springtravel.com');
insert into users (username, password, enabled) values ('user-383', '5d6259918f4eb61b4354cb1d358b5ce8', true);
insert into authorities (username, authority) values ('user-383', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-383', 'first-name-383', 'last-name-383', 'first-name-383.last-name-383@springtravel.com');
insert into users (username, password, enabled) values ('user-384', 'a4b5fce3111cb383b61b66471a3a371a', true);
insert into authorities (username, authority) values ('user-384', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-384', 'first-name-384', 'last-name-384', 'first-name-384.last-name-384@springtravel.com');
insert into users (username, password, enabled) values ('user-385', 'a8598a0f630e3b42844d726ba4b453c0', true);
insert into authorities (username, authority) values ('user-385', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-385', 'first-name-385', 'last-name-385', 'first-name-385.last-name-385@springtravel.com');
insert into users (username, password, enabled) values ('user-386', '31f5397e17f8a05d2ef2b6df1f934139', true);
insert into authorities (username, authority) values ('user-386', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-386', 'first-name-386', 'last-name-386', 'first-name-386.last-name-386@springtravel.com');
insert into users (username, password, enabled) values ('user-387', '6c5a7be6f044c67cf969867fef21d7f4', true);
insert into authorities (username, authority) values ('user-387', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-387', 'first-name-387', 'last-name-387', 'first-name-387.last-name-387@springtravel.com');
insert into users (username, password, enabled) values ('user-388', '9ceba665979af2e7dcb770c8c9358809', true);
insert into authorities (username, authority) values ('user-388', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-388', 'first-name-388', 'last-name-388', 'first-name-388.last-name-388@springtravel.com');
insert into users (username, password, enabled) values ('user-389', '7b65fbb768df37f7be0a00e9112f6d75', true);
insert into authorities (username, authority) values ('user-389', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-389', 'first-name-389', 'last-name-389', 'first-name-389.last-name-389@springtravel.com');
insert into users (username, password, enabled) values ('user-390', 'dd0ea532a485385e9827d3a1624796f4', true);
insert into authorities (username, authority) values ('user-390', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-390', 'first-name-390', 'last-name-390', 'first-name-390.last-name-390@springtravel.com');
insert into users (username, password, enabled) values ('user-391', 'b06d5e6892dd234eeae7f617365621fd', true);
insert into authorities (username, authority) values ('user-391', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-391', 'first-name-391', 'last-name-391', 'first-name-391.last-name-391@springtravel.com');
insert into users (username, password, enabled) values ('user-392', 'b09e599e44c43ff26e910d6d3ef1317f', true);
insert into authorities (username, authority) values ('user-392', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-392', 'first-name-392', 'last-name-392', 'first-name-392.last-name-392@springtravel.com');
insert into users (username, password, enabled) values ('user-393', '0e7e588970aca2c69346a908b4a6846f', true);
insert into authorities (username, authority) values ('user-393', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-393', 'first-name-393', 'last-name-393', 'first-name-393.last-name-393@springtravel.com');
insert into users (username, password, enabled) values ('user-394', 'fe6f8c80ec0e8d3216440cdc69d59248', true);
insert into authorities (username, authority) values ('user-394', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-394', 'first-name-394', 'last-name-394', 'first-name-394.last-name-394@springtravel.com');
insert into users (username, password, enabled) values ('user-395', 'd9a020d400066ba9e210f7ea3796819a', true);
insert into authorities (username, authority) values ('user-395', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-395', 'first-name-395', 'last-name-395', 'first-name-395.last-name-395@springtravel.com');
insert into users (username, password, enabled) values ('user-396', '4140df1fd3fb7a5e19f9188c00ea7cf4', true);
insert into authorities (username, authority) values ('user-396', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-396', 'first-name-396', 'last-name-396', 'first-name-396.last-name-396@springtravel.com');
insert into users (username, password, enabled) values ('user-397', '817600bb3766751b31b46c08eca55631', true);
insert into authorities (username, authority) values ('user-397', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-397', 'first-name-397', 'last-name-397', 'first-name-397.last-name-397@springtravel.com');
insert into users (username, password, enabled) values ('user-398', 'fcd33cdc0e7b2e74fe1ec0277b15df2a', true);
insert into authorities (username, authority) values ('user-398', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-398', 'first-name-398', 'last-name-398', 'first-name-398.last-name-398@springtravel.com');
insert into users (username, password, enabled) values ('user-399', '5066ad2ad4c392dc129e1b4c63e626d7', true);
insert into authorities (username, authority) values ('user-399', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-399', 'first-name-399', 'last-name-399', 'first-name-399.last-name-399@springtravel.com');
insert into users (username, password, enabled) values ('user-400', 'bb69a4954389ddb7f418333fc5359def', true);
insert into authorities (username, authority) values ('user-400', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-400', 'first-name-400', 'last-name-400', 'first-name-400.last-name-400@springtravel.com');
insert into users (username, password, enabled) values ('user-401', 'b3d13df643ab3a61c35fdcefc9d249cb', true);
insert into authorities (username, authority) values ('user-401', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-401', 'first-name-401', 'last-name-401', 'first-name-401.last-name-401@springtravel.com');
insert into users (username, password, enabled) values ('user-402', '3b7cfc37f005706b733da4ff7d0975f0', true);
insert into authorities (username, authority) values ('user-402', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-402', 'first-name-402', 'last-name-402', 'first-name-402.last-name-402@springtravel.com');
insert into users (username, password, enabled) values ('user-403', '6814c144754937dfcbda258cd09e4a0d', true);
insert into authorities (username, authority) values ('user-403', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-403', 'first-name-403', 'last-name-403', 'first-name-403.last-name-403@springtravel.com');
insert into users (username, password, enabled) values ('user-404', '59b72fbff679b958191149f31a45abf8', true);
insert into authorities (username, authority) values ('user-404', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-404', 'first-name-404', 'last-name-404', 'first-name-404.last-name-404@springtravel.com');
insert into users (username, password, enabled) values ('user-405', '02cb3fc4e847ffee175168c3a3534672', true);
insert into authorities (username, authority) values ('user-405', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-405', 'first-name-405', 'last-name-405', 'first-name-405.last-name-405@springtravel.com');
insert into users (username, password, enabled) values ('user-406', '9ab14eb2682a3774c1e2c4a7c0b40fa6', true);
insert into authorities (username, authority) values ('user-406', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-406', 'first-name-406', 'last-name-406', 'first-name-406.last-name-406@springtravel.com');
insert into users (username, password, enabled) values ('user-407', '968ae1d0c4d6ac50a223276ac0762805', true);
insert into authorities (username, authority) values ('user-407', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-407', 'first-name-407', 'last-name-407', 'first-name-407.last-name-407@springtravel.com');
insert into users (username, password, enabled) values ('user-408', '8ae1b0dc6094fb4a530a1a1ac4a85ccc', true);
insert into authorities (username, authority) values ('user-408', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-408', 'first-name-408', 'last-name-408', 'first-name-408.last-name-408@springtravel.com');
insert into users (username, password, enabled) values ('user-409', 'b50e89088b389227fa18915cb0084911', true);
insert into authorities (username, authority) values ('user-409', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-409', 'first-name-409', 'last-name-409', 'first-name-409.last-name-409@springtravel.com');
insert into users (username, password, enabled) values ('user-410', 'c66e98c8b6c5cd88b3606c1eeb4bfc81', true);
insert into authorities (username, authority) values ('user-410', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-410', 'first-name-410', 'last-name-410', 'first-name-410.last-name-410@springtravel.com');
insert into users (username, password, enabled) values ('user-411', 'b02e65242ac393d0035a6272fee49f98', true);
insert into authorities (username, authority) values ('user-411', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-411', 'first-name-411', 'last-name-411', 'first-name-411.last-name-411@springtravel.com');
insert into users (username, password, enabled) values ('user-412', 'ffaa71cfc7498419f9c7d9f60d56a064', true);
insert into authorities (username, authority) values ('user-412', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-412', 'first-name-412', 'last-name-412', 'first-name-412.last-name-412@springtravel.com');
insert into users (username, password, enabled) values ('user-413', '84dc45a714dfd234eadf0ebcab6fe987', true);
insert into authorities (username, authority) values ('user-413', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-413', 'first-name-413', 'last-name-413', 'first-name-413.last-name-413@springtravel.com');
insert into users (username, password, enabled) values ('user-414', 'd659ff2cbf047405cd318dbdcc3cd389', true);
insert into authorities (username, authority) values ('user-414', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-414', 'first-name-414', 'last-name-414', 'first-name-414.last-name-414@springtravel.com');
insert into users (username, password, enabled) values ('user-415', '01b026b1fa56ea9485a71b01e78cdc42', true);
insert into authorities (username, authority) values ('user-415', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-415', 'first-name-415', 'last-name-415', 'first-name-415.last-name-415@springtravel.com');
insert into users (username, password, enabled) values ('user-416', 'fcc9067d9d88d3f3c9946b0402a97cd9', true);
insert into authorities (username, authority) values ('user-416', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-416', 'first-name-416', 'last-name-416', 'first-name-416.last-name-416@springtravel.com');
insert into users (username, password, enabled) values ('user-417', '06c397c657009e327de93d710da9ce59', true);
insert into authorities (username, authority) values ('user-417', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-417', 'first-name-417', 'last-name-417', 'first-name-417.last-name-417@springtravel.com');
insert into users (username, password, enabled) values ('user-418', 'a45bd8918a1471a9e4db4370174552a6', true);
insert into authorities (username, authority) values ('user-418', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-418', 'first-name-418', 'last-name-418', 'first-name-418.last-name-418@springtravel.com');
insert into users (username, password, enabled) values ('user-419', '88a383e17ba3cbcf8ed14f40cd42c9f6', true);
insert into authorities (username, authority) values ('user-419', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-419', 'first-name-419', 'last-name-419', 'first-name-419.last-name-419@springtravel.com');
insert into users (username, password, enabled) values ('user-420', '67e4a5b244a89cc5f9b6763273f15f0f', true);
insert into authorities (username, authority) values ('user-420', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-420', 'first-name-420', 'last-name-420', 'first-name-420.last-name-420@springtravel.com');
insert into users (username, password, enabled) values ('user-421', 'e8844c686a2cab71f30df53ec13092d2', true);
insert into authorities (username, authority) values ('user-421', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-421', 'first-name-421', 'last-name-421', 'first-name-421.last-name-421@springtravel.com');
insert into users (username, password, enabled) values ('user-422', '73516472c5be1a3dac88d6277c23e299', true);
insert into authorities (username, authority) values ('user-422', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-422', 'first-name-422', 'last-name-422', 'first-name-422.last-name-422@springtravel.com');
insert into users (username, password, enabled) values ('user-423', '06be6186838980a12fddc6545bf15d28', true);
insert into authorities (username, authority) values ('user-423', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-423', 'first-name-423', 'last-name-423', 'first-name-423.last-name-423@springtravel.com');
insert into users (username, password, enabled) values ('user-424', 'a4164f7f2fe6a3b5567ee08f5e45b561', true);
insert into authorities (username, authority) values ('user-424', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-424', 'first-name-424', 'last-name-424', 'first-name-424.last-name-424@springtravel.com');
insert into users (username, password, enabled) values ('user-425', 'eae0ca687d2c215958c2c2593c523469', true);
insert into authorities (username, authority) values ('user-425', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-425', 'first-name-425', 'last-name-425', 'first-name-425.last-name-425@springtravel.com');
insert into users (username, password, enabled) values ('user-426', '34f7d412e995421e9b6ee6d37ab5461c', true);
insert into authorities (username, authority) values ('user-426', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-426', 'first-name-426', 'last-name-426', 'first-name-426.last-name-426@springtravel.com');
insert into users (username, password, enabled) values ('user-427', '9f37b22c4981f259f601f39b2e0e9fcd', true);
insert into authorities (username, authority) values ('user-427', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-427', 'first-name-427', 'last-name-427', 'first-name-427.last-name-427@springtravel.com');
insert into users (username, password, enabled) values ('user-428', '96beaa5d48f19ab1593890ffa60483e0', true);
insert into authorities (username, authority) values ('user-428', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-428', 'first-name-428', 'last-name-428', 'first-name-428.last-name-428@springtravel.com');
insert into users (username, password, enabled) values ('user-429', '948b16c158b70e9bbddcb092bd3b1349', true);
insert into authorities (username, authority) values ('user-429', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-429', 'first-name-429', 'last-name-429', 'first-name-429.last-name-429@springtravel.com');
insert into users (username, password, enabled) values ('user-430', '7709089304e5f76ca6d5497f70aa96d0', true);
insert into authorities (username, authority) values ('user-430', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-430', 'first-name-430', 'last-name-430', 'first-name-430.last-name-430@springtravel.com');
insert into users (username, password, enabled) values ('user-431', '647f366a8c6793d064fa4f1f7eb5c3c4', true);
insert into authorities (username, authority) values ('user-431', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-431', 'first-name-431', 'last-name-431', 'first-name-431.last-name-431@springtravel.com');
insert into users (username, password, enabled) values ('user-432', '123fdc34ac998be897c883ad98ddf90f', true);
insert into authorities (username, authority) values ('user-432', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-432', 'first-name-432', 'last-name-432', 'first-name-432.last-name-432@springtravel.com');
insert into users (username, password, enabled) values ('user-433', 'ba3a1f4c9f1bfb6fe0b4117de4b51aaf', true);
insert into authorities (username, authority) values ('user-433', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-433', 'first-name-433', 'last-name-433', 'first-name-433.last-name-433@springtravel.com');
insert into users (username, password, enabled) values ('user-434', '0dd03f0f409174b38f2e49df58bee0da', true);
insert into authorities (username, authority) values ('user-434', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-434', 'first-name-434', 'last-name-434', 'first-name-434.last-name-434@springtravel.com');
insert into users (username, password, enabled) values ('user-435', 'a983f7adb5f0d5419bb96ffe3067f9a7', true);
insert into authorities (username, authority) values ('user-435', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-435', 'first-name-435', 'last-name-435', 'first-name-435.last-name-435@springtravel.com');
insert into users (username, password, enabled) values ('user-436', '60eadea144a9a84792a05b4e906a7a1d', true);
insert into authorities (username, authority) values ('user-436', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-436', 'first-name-436', 'last-name-436', 'first-name-436.last-name-436@springtravel.com');
insert into users (username, password, enabled) values ('user-437', '124f666147c6e85c353c5b3ef088f4aa', true);
insert into authorities (username, authority) values ('user-437', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-437', 'first-name-437', 'last-name-437', 'first-name-437.last-name-437@springtravel.com');
insert into users (username, password, enabled) values ('user-438', '90419d15eddfcd31c593696db0c8db9a', true);
insert into authorities (username, authority) values ('user-438', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-438', 'first-name-438', 'last-name-438', 'first-name-438.last-name-438@springtravel.com');
insert into users (username, password, enabled) values ('user-439', '9cb2dd7aa71c747bee0534329014d169', true);
insert into authorities (username, authority) values ('user-439', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-439', 'first-name-439', 'last-name-439', 'first-name-439.last-name-439@springtravel.com');
insert into users (username, password, enabled) values ('user-440', '48841fa9c74e1125f6e310fc2fc92e39', true);
insert into authorities (username, authority) values ('user-440', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-440', 'first-name-440', 'last-name-440', 'first-name-440.last-name-440@springtravel.com');
insert into users (username, password, enabled) values ('user-441', 'b689a1c7ebe04761e4b7b889f1136d94', true);
insert into authorities (username, authority) values ('user-441', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-441', 'first-name-441', 'last-name-441', 'first-name-441.last-name-441@springtravel.com');
insert into users (username, password, enabled) values ('user-442', 'd1bc3e46047f19d35bd40d444d6cfd7d', true);
insert into authorities (username, authority) values ('user-442', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-442', 'first-name-442', 'last-name-442', 'first-name-442.last-name-442@springtravel.com');
insert into users (username, password, enabled) values ('user-443', 'ed13bcd22cf57eff7e8fd7d347721a5c', true);
insert into authorities (username, authority) values ('user-443', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-443', 'first-name-443', 'last-name-443', 'first-name-443.last-name-443@springtravel.com');
insert into users (username, password, enabled) values ('user-444', 'e2c3b16cd26dddaa48ffe6fb192c71bb', true);
insert into authorities (username, authority) values ('user-444', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-444', 'first-name-444', 'last-name-444', 'first-name-444.last-name-444@springtravel.com');
insert into users (username, password, enabled) values ('user-445', '69c19cd967c4262593be03bb403912cd', true);
insert into authorities (username, authority) values ('user-445', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-445', 'first-name-445', 'last-name-445', 'first-name-445.last-name-445@springtravel.com');
insert into users (username, password, enabled) values ('user-446', '528368d32f6b48bb54fd72f36c22963e', true);
insert into authorities (username, authority) values ('user-446', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-446', 'first-name-446', 'last-name-446', 'first-name-446.last-name-446@springtravel.com');
insert into users (username, password, enabled) values ('user-447', '096bf7df6e6006831ad84d3d554010b2', true);
insert into authorities (username, authority) values ('user-447', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-447', 'first-name-447', 'last-name-447', 'first-name-447.last-name-447@springtravel.com');
insert into users (username, password, enabled) values ('user-448', '98bce8b3f0b65bbf00fecab7444a0722', true);
insert into authorities (username, authority) values ('user-448', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-448', 'first-name-448', 'last-name-448', 'first-name-448.last-name-448@springtravel.com');
insert into users (username, password, enabled) values ('user-449', '3e91f99707cb1b417d01f3e9128ae508', true);
insert into authorities (username, authority) values ('user-449', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-449', 'first-name-449', 'last-name-449', 'first-name-449.last-name-449@springtravel.com');
insert into users (username, password, enabled) values ('user-450', '55fde012128d28ad8d573b8b405de363', true);
insert into authorities (username, authority) values ('user-450', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-450', 'first-name-450', 'last-name-450', 'first-name-450.last-name-450@springtravel.com');
insert into users (username, password, enabled) values ('user-451', 'e454a04234711add01e7af3d4fb35890', true);
insert into authorities (username, authority) values ('user-451', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-451', 'first-name-451', 'last-name-451', 'first-name-451.last-name-451@springtravel.com');
insert into users (username, password, enabled) values ('user-452', '3bb0f20646b51321271d4c7db807ee32', true);
insert into authorities (username, authority) values ('user-452', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-452', 'first-name-452', 'last-name-452', 'first-name-452.last-name-452@springtravel.com');
insert into users (username, password, enabled) values ('user-453', 'e2bddd3f89aecfe935af4289acb8236e', true);
insert into authorities (username, authority) values ('user-453', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-453', 'first-name-453', 'last-name-453', 'first-name-453.last-name-453@springtravel.com');
insert into users (username, password, enabled) values ('user-454', 'a6b9f778db2849d584910236eefea0d0', true);
insert into authorities (username, authority) values ('user-454', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-454', 'first-name-454', 'last-name-454', 'first-name-454.last-name-454@springtravel.com');
insert into users (username, password, enabled) values ('user-455', 'f93ca4e4930bb6798bc4f43a5643a49b', true);
insert into authorities (username, authority) values ('user-455', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-455', 'first-name-455', 'last-name-455', 'first-name-455.last-name-455@springtravel.com');
insert into users (username, password, enabled) values ('user-456', '71bb259ce5233e57d25805b97e8f79bd', true);
insert into authorities (username, authority) values ('user-456', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-456', 'first-name-456', 'last-name-456', 'first-name-456.last-name-456@springtravel.com');
insert into users (username, password, enabled) values ('user-457', 'f1ad4d2f21533f129012a845c354f1b9', true);
insert into authorities (username, authority) values ('user-457', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-457', 'first-name-457', 'last-name-457', 'first-name-457.last-name-457@springtravel.com');
insert into users (username, password, enabled) values ('user-458', '95f21b11c34c9a1db80883be8270c68a', true);
insert into authorities (username, authority) values ('user-458', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-458', 'first-name-458', 'last-name-458', 'first-name-458.last-name-458@springtravel.com');
insert into users (username, password, enabled) values ('user-459', 'd735b118d29a27d45c2427c727dbc5c6', true);
insert into authorities (username, authority) values ('user-459', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-459', 'first-name-459', 'last-name-459', 'first-name-459.last-name-459@springtravel.com');
insert into users (username, password, enabled) values ('user-460', 'ff67ff0d456299eb747e404d9d2e3bb4', true);
insert into authorities (username, authority) values ('user-460', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-460', 'first-name-460', 'last-name-460', 'first-name-460.last-name-460@springtravel.com');
insert into users (username, password, enabled) values ('user-461', '55d8fe3ba3a3f3f5646fc3b78db332c1', true);
insert into authorities (username, authority) values ('user-461', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-461', 'first-name-461', 'last-name-461', 'first-name-461.last-name-461@springtravel.com');
insert into users (username, password, enabled) values ('user-462', 'a93db9a6f372b9a789e287eed69f7b76', true);
insert into authorities (username, authority) values ('user-462', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-462', 'first-name-462', 'last-name-462', 'first-name-462.last-name-462@springtravel.com');
insert into users (username, password, enabled) values ('user-463', 'fea3fc144e0b18c194c0b03ac2b45b97', true);
insert into authorities (username, authority) values ('user-463', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-463', 'first-name-463', 'last-name-463', 'first-name-463.last-name-463@springtravel.com');
insert into users (username, password, enabled) values ('user-464', '861d36f5b8c49d22758bbb4a12945e7e', true);
insert into authorities (username, authority) values ('user-464', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-464', 'first-name-464', 'last-name-464', 'first-name-464.last-name-464@springtravel.com');
insert into users (username, password, enabled) values ('user-465', 'fcce17b1ae158769f67aa844819f02f6', true);
insert into authorities (username, authority) values ('user-465', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-465', 'first-name-465', 'last-name-465', 'first-name-465.last-name-465@springtravel.com');
insert into users (username, password, enabled) values ('user-466', '0b98f7645547825d418124b091469ec1', true);
insert into authorities (username, authority) values ('user-466', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-466', 'first-name-466', 'last-name-466', 'first-name-466.last-name-466@springtravel.com');
insert into users (username, password, enabled) values ('user-467', '3433f85583e01e6ab9697fcaf7936a58', true);
insert into authorities (username, authority) values ('user-467', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-467', 'first-name-467', 'last-name-467', 'first-name-467.last-name-467@springtravel.com');
insert into users (username, password, enabled) values ('user-468', 'bdd511c6dfae65700fd0c46886f5546c', true);
insert into authorities (username, authority) values ('user-468', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-468', 'first-name-468', 'last-name-468', 'first-name-468.last-name-468@springtravel.com');
insert into users (username, password, enabled) values ('user-469', '3acbaebd5d127860d4a769c89deb4ee0', true);
insert into authorities (username, authority) values ('user-469', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-469', 'first-name-469', 'last-name-469', 'first-name-469.last-name-469@springtravel.com');
insert into users (username, password, enabled) values ('user-470', '678c913ce691640cc215888df645f655', true);
insert into authorities (username, authority) values ('user-470', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-470', 'first-name-470', 'last-name-470', 'first-name-470.last-name-470@springtravel.com');
insert into users (username, password, enabled) values ('user-471', 'da077f16c1de80f52672306363b6993b', true);
insert into authorities (username, authority) values ('user-471', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-471', 'first-name-471', 'last-name-471', 'first-name-471.last-name-471@springtravel.com');
insert into users (username, password, enabled) values ('user-472', '2a813ec4f95933ea3a3626bc8bcc5510', true);
insert into authorities (username, authority) values ('user-472', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-472', 'first-name-472', 'last-name-472', 'first-name-472.last-name-472@springtravel.com');
insert into users (username, password, enabled) values ('user-473', '3796a7475ba74f49d6c1de7a319dd91b', true);
insert into authorities (username, authority) values ('user-473', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-473', 'first-name-473', 'last-name-473', 'first-name-473.last-name-473@springtravel.com');
insert into users (username, password, enabled) values ('user-474', '48665a7c897908b2f495a1c576834a6d', true);
insert into authorities (username, authority) values ('user-474', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-474', 'first-name-474', 'last-name-474', 'first-name-474.last-name-474@springtravel.com');
insert into users (username, password, enabled) values ('user-475', 'ada8b3353eba20d607eeadcd6da7d152', true);
insert into authorities (username, authority) values ('user-475', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-475', 'first-name-475', 'last-name-475', 'first-name-475.last-name-475@springtravel.com');
insert into users (username, password, enabled) values ('user-476', 'bf4f528906fa7896b30bf2b24767d06a', true);
insert into authorities (username, authority) values ('user-476', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-476', 'first-name-476', 'last-name-476', 'first-name-476.last-name-476@springtravel.com');
insert into users (username, password, enabled) values ('user-477', '3339f3d7fa173034bbbb5bbcb18d1203', true);
insert into authorities (username, authority) values ('user-477', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-477', 'first-name-477', 'last-name-477', 'first-name-477.last-name-477@springtravel.com');
insert into users (username, password, enabled) values ('user-478', '222596ce7d6aa5151d8de5146314e866', true);
insert into authorities (username, authority) values ('user-478', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-478', 'first-name-478', 'last-name-478', 'first-name-478.last-name-478@springtravel.com');
insert into users (username, password, enabled) values ('user-479', '7ad041fd8e9beb32312003a9fc479f47', true);
insert into authorities (username, authority) values ('user-479', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-479', 'first-name-479', 'last-name-479', 'first-name-479.last-name-479@springtravel.com');
insert into users (username, password, enabled) values ('user-480', '689f8e5d50a191141bdfa6abb1dac5e0', true);
insert into authorities (username, authority) values ('user-480', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-480', 'first-name-480', 'last-name-480', 'first-name-480.last-name-480@springtravel.com');
insert into users (username, password, enabled) values ('user-481', '5197c77e5bea5982770b16ca1d7cfd54', true);
insert into authorities (username, authority) values ('user-481', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-481', 'first-name-481', 'last-name-481', 'first-name-481.last-name-481@springtravel.com');
insert into users (username, password, enabled) values ('user-482', 'e88c5231d65d55d497fb6205aaac3ecb', true);
insert into authorities (username, authority) values ('user-482', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-482', 'first-name-482', 'last-name-482', 'first-name-482.last-name-482@springtravel.com');
insert into users (username, password, enabled) values ('user-483', 'cf332fda0d914333fff59514818c15e6', true);
insert into authorities (username, authority) values ('user-483', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-483', 'first-name-483', 'last-name-483', 'first-name-483.last-name-483@springtravel.com');
insert into users (username, password, enabled) values ('user-484', 'e3db6750ccd833333a728ee172ce0ed0', true);
insert into authorities (username, authority) values ('user-484', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-484', 'first-name-484', 'last-name-484', 'first-name-484.last-name-484@springtravel.com');
insert into users (username, password, enabled) values ('user-485', '1e9624012d74d374d82d661e6e93614d', true);
insert into authorities (username, authority) values ('user-485', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-485', 'first-name-485', 'last-name-485', 'first-name-485.last-name-485@springtravel.com');
insert into users (username, password, enabled) values ('user-486', 'adc44c3e0b3c7da7d637afd8cc70470b', true);
insert into authorities (username, authority) values ('user-486', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-486', 'first-name-486', 'last-name-486', 'first-name-486.last-name-486@springtravel.com');
insert into users (username, password, enabled) values ('user-487', '9f78560ad77e36857ef90984838c17e0', true);
insert into authorities (username, authority) values ('user-487', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-487', 'first-name-487', 'last-name-487', 'first-name-487.last-name-487@springtravel.com');
insert into users (username, password, enabled) values ('user-488', '9d232951c095f89ee5e23c8bfa098389', true);
insert into authorities (username, authority) values ('user-488', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-488', 'first-name-488', 'last-name-488', 'first-name-488.last-name-488@springtravel.com');
insert into users (username, password, enabled) values ('user-489', 'b3ac6872ae123e678137e6965e87a1f0', true);
insert into authorities (username, authority) values ('user-489', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-489', 'first-name-489', 'last-name-489', 'first-name-489.last-name-489@springtravel.com');
insert into users (username, password, enabled) values ('user-490', '674472bf5851ccf55268a867c050eede', true);
insert into authorities (username, authority) values ('user-490', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-490', 'first-name-490', 'last-name-490', 'first-name-490.last-name-490@springtravel.com');
insert into users (username, password, enabled) values ('user-491', '5c1fb27ae210293f0e8e0800d469cd46', true);
insert into authorities (username, authority) values ('user-491', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-491', 'first-name-491', 'last-name-491', 'first-name-491.last-name-491@springtravel.com');
insert into users (username, password, enabled) values ('user-492', '682db8e9a5f94aa8e4c1556060cec642', true);
insert into authorities (username, authority) values ('user-492', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-492', 'first-name-492', 'last-name-492', 'first-name-492.last-name-492@springtravel.com');
insert into users (username, password, enabled) values ('user-493', '4db46c668ed654ea1b7e05f55e6c0d98', true);
insert into authorities (username, authority) values ('user-493', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-493', 'first-name-493', 'last-name-493', 'first-name-493.last-name-493@springtravel.com');
insert into users (username, password, enabled) values ('user-494', '4593d3616a78fa43b42472db0e3b4d57', true);
insert into authorities (username, authority) values ('user-494', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-494', 'first-name-494', 'last-name-494', 'first-name-494.last-name-494@springtravel.com');
insert into users (username, password, enabled) values ('user-495', '44b41c1ae55546e3d697a83c86ff1a46', true);
insert into authorities (username, authority) values ('user-495', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-495', 'first-name-495', 'last-name-495', 'first-name-495.last-name-495@springtravel.com');
insert into users (username, password, enabled) values ('user-496', '6dc03fccd29b411b4190332936cfd8bd', true);
insert into authorities (username, authority) values ('user-496', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-496', 'first-name-496', 'last-name-496', 'first-name-496.last-name-496@springtravel.com');
insert into users (username, password, enabled) values ('user-497', '1ddce38cab2e338d89bcfc0db245a465', true);
insert into authorities (username, authority) values ('user-497', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-497', 'first-name-497', 'last-name-497', 'first-name-497.last-name-497@springtravel.com');
insert into users (username, password, enabled) values ('user-498', 'a20db53ee26e69f88b1f50eecce0466d', true);
insert into authorities (username, authority) values ('user-498', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-498', 'first-name-498', 'last-name-498', 'first-name-498.last-name-498@springtravel.com');
insert into users (username, password, enabled) values ('user-499', '2d31ae1ca5c091c840f817cd2745a3b8', true);
insert into authorities (username, authority) values ('user-499', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-499', 'first-name-499', 'last-name-499', 'first-name-499.last-name-499@springtravel.com');
insert into users (username, password, enabled) values ('user-500', '4fe520039830209951c8ef2dc8f323b1', true);
insert into authorities (username, authority) values ('user-500', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-500', 'first-name-500', 'last-name-500', 'first-name-500.last-name-500@springtravel.com');
insert into users (username, password, enabled) values ('user-501', 'f424aa736dde99902874bf871a558d8b', true);
insert into authorities (username, authority) values ('user-501', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-501', 'first-name-501', 'last-name-501', 'first-name-501.last-name-501@springtravel.com');
insert into users (username, password, enabled) values ('user-502', '29421ccc1d3779e5ee22b507b0669ee2', true);
insert into authorities (username, authority) values ('user-502', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-502', 'first-name-502', 'last-name-502', 'first-name-502.last-name-502@springtravel.com');
insert into users (username, password, enabled) values ('user-503', '703ec4fa31abf38f8593def4faebc360', true);
insert into authorities (username, authority) values ('user-503', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-503', 'first-name-503', 'last-name-503', 'first-name-503.last-name-503@springtravel.com');
insert into users (username, password, enabled) values ('user-504', 'ba4d7c18f51fbc7e9f2a44b966a0da5a', true);
insert into authorities (username, authority) values ('user-504', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-504', 'first-name-504', 'last-name-504', 'first-name-504.last-name-504@springtravel.com');
insert into users (username, password, enabled) values ('user-505', '7ed91b81326bfe73a3e9c3f76bfac13d', true);
insert into authorities (username, authority) values ('user-505', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-505', 'first-name-505', 'last-name-505', 'first-name-505.last-name-505@springtravel.com');
insert into users (username, password, enabled) values ('user-506', '83acbe0286c44eff3efa28c48d8cabb8', true);
insert into authorities (username, authority) values ('user-506', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-506', 'first-name-506', 'last-name-506', 'first-name-506.last-name-506@springtravel.com');
insert into users (username, password, enabled) values ('user-507', '51a88f49f5b86f964cc43d7863e08e48', true);
insert into authorities (username, authority) values ('user-507', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-507', 'first-name-507', 'last-name-507', 'first-name-507.last-name-507@springtravel.com');
insert into users (username, password, enabled) values ('user-508', '882f62d28baf7ffcd4a1b3b363d0f1ac', true);
insert into authorities (username, authority) values ('user-508', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-508', 'first-name-508', 'last-name-508', 'first-name-508.last-name-508@springtravel.com');
insert into users (username, password, enabled) values ('user-509', '26807e76c0e729625d1fa39c351414b1', true);
insert into authorities (username, authority) values ('user-509', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-509', 'first-name-509', 'last-name-509', 'first-name-509.last-name-509@springtravel.com');
insert into users (username, password, enabled) values ('user-510', 'b33b8f6e593553fedf16e67a3a44e2cf', true);
insert into authorities (username, authority) values ('user-510', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-510', 'first-name-510', 'last-name-510', 'first-name-510.last-name-510@springtravel.com');
insert into users (username, password, enabled) values ('user-511', '67cab723c64369abfec70de3ae6a4795', true);
insert into authorities (username, authority) values ('user-511', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-511', 'first-name-511', 'last-name-511', 'first-name-511.last-name-511@springtravel.com');
insert into users (username, password, enabled) values ('user-512', '63822e6167ac86f9eb1c527b35285c24', true);
insert into authorities (username, authority) values ('user-512', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-512', 'first-name-512', 'last-name-512', 'first-name-512.last-name-512@springtravel.com');
insert into users (username, password, enabled) values ('user-513', '4c9032e8c666337ba875c76f346b0665', true);
insert into authorities (username, authority) values ('user-513', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-513', 'first-name-513', 'last-name-513', 'first-name-513.last-name-513@springtravel.com');
insert into users (username, password, enabled) values ('user-514', 'f587f654257c3c2fcba358ce987eba48', true);
insert into authorities (username, authority) values ('user-514', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-514', 'first-name-514', 'last-name-514', 'first-name-514.last-name-514@springtravel.com');
insert into users (username, password, enabled) values ('user-515', '5d5aed223724c8c0b79dbe6376b73fc0', true);
insert into authorities (username, authority) values ('user-515', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-515', 'first-name-515', 'last-name-515', 'first-name-515.last-name-515@springtravel.com');
insert into users (username, password, enabled) values ('user-516', 'fe48f37fc71e89cf2b1a62c5383ebe2e', true);
insert into authorities (username, authority) values ('user-516', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-516', 'first-name-516', 'last-name-516', 'first-name-516.last-name-516@springtravel.com');
insert into users (username, password, enabled) values ('user-517', 'b3f5a87dd77a20dbdb35a12c52cc4378', true);
insert into authorities (username, authority) values ('user-517', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-517', 'first-name-517', 'last-name-517', 'first-name-517.last-name-517@springtravel.com');
insert into users (username, password, enabled) values ('user-518', 'aef0643fa4dfc5476669b03dce39d848', true);
insert into authorities (username, authority) values ('user-518', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-518', 'first-name-518', 'last-name-518', 'first-name-518.last-name-518@springtravel.com');
insert into users (username, password, enabled) values ('user-519', '59009f85bc093544b51995f47d95137c', true);
insert into authorities (username, authority) values ('user-519', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-519', 'first-name-519', 'last-name-519', 'first-name-519.last-name-519@springtravel.com');
insert into users (username, password, enabled) values ('user-520', '77df47c4b98529d6d9fbb5ed441862e2', true);
insert into authorities (username, authority) values ('user-520', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-520', 'first-name-520', 'last-name-520', 'first-name-520.last-name-520@springtravel.com');
insert into users (username, password, enabled) values ('user-521', '27c9dacbccc215b1dc5e9cdc9d6c1bcf', true);
insert into authorities (username, authority) values ('user-521', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-521', 'first-name-521', 'last-name-521', 'first-name-521.last-name-521@springtravel.com');
insert into users (username, password, enabled) values ('user-522', '0a5a4e3e527ce28e81776823545542fc', true);
insert into authorities (username, authority) values ('user-522', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-522', 'first-name-522', 'last-name-522', 'first-name-522.last-name-522@springtravel.com');
insert into users (username, password, enabled) values ('user-523', '45c81d9d31f2a8cba73b283d1aa22554', true);
insert into authorities (username, authority) values ('user-523', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-523', 'first-name-523', 'last-name-523', 'first-name-523.last-name-523@springtravel.com');
insert into users (username, password, enabled) values ('user-524', '6203f37cbdbe01f901dfdc7c54188dd8', true);
insert into authorities (username, authority) values ('user-524', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-524', 'first-name-524', 'last-name-524', 'first-name-524.last-name-524@springtravel.com');
insert into users (username, password, enabled) values ('user-525', 'c2ef008c9fc353ebe15385ab4c42287a', true);
insert into authorities (username, authority) values ('user-525', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-525', 'first-name-525', 'last-name-525', 'first-name-525.last-name-525@springtravel.com');
insert into users (username, password, enabled) values ('user-526', 'e9b0cfc72aee4b3a71239718e4c574f2', true);
insert into authorities (username, authority) values ('user-526', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-526', 'first-name-526', 'last-name-526', 'first-name-526.last-name-526@springtravel.com');
insert into users (username, password, enabled) values ('user-527', 'c20cfa169f360c3a302c05d7c33cdcb2', true);
insert into authorities (username, authority) values ('user-527', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-527', 'first-name-527', 'last-name-527', 'first-name-527.last-name-527@springtravel.com');
insert into users (username, password, enabled) values ('user-528', '6ee9dfe1f6510c6c43ad01bdc97edae7', true);
insert into authorities (username, authority) values ('user-528', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-528', 'first-name-528', 'last-name-528', 'first-name-528.last-name-528@springtravel.com');
insert into users (username, password, enabled) values ('user-529', 'e5e73c1ce6b19f45fdbe3a75ffc32f1b', true);
insert into authorities (username, authority) values ('user-529', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-529', 'first-name-529', 'last-name-529', 'first-name-529.last-name-529@springtravel.com');
insert into users (username, password, enabled) values ('user-530', 'f86bbe58d7b7ca41f6c9070405b9302d', true);
insert into authorities (username, authority) values ('user-530', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-530', 'first-name-530', 'last-name-530', 'first-name-530.last-name-530@springtravel.com');
insert into users (username, password, enabled) values ('user-531', '5044e44c6d48e62fb5fb530a6c1ec126', true);
insert into authorities (username, authority) values ('user-531', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-531', 'first-name-531', 'last-name-531', 'first-name-531.last-name-531@springtravel.com');
insert into users (username, password, enabled) values ('user-532', '575f198983cba6d2d696e5e21edf99b0', true);
insert into authorities (username, authority) values ('user-532', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-532', 'first-name-532', 'last-name-532', 'first-name-532.last-name-532@springtravel.com');
insert into users (username, password, enabled) values ('user-533', 'db5bd8a57fc30c15b766f7736d3b8f66', true);
insert into authorities (username, authority) values ('user-533', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-533', 'first-name-533', 'last-name-533', 'first-name-533.last-name-533@springtravel.com');
insert into users (username, password, enabled) values ('user-534', '7cd9fb6db73eca0a4ef48d4f160fd5dd', true);
insert into authorities (username, authority) values ('user-534', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-534', 'first-name-534', 'last-name-534', 'first-name-534.last-name-534@springtravel.com');
insert into users (username, password, enabled) values ('user-535', '89960c8e24325edc4b8196ffcf086ba3', true);
insert into authorities (username, authority) values ('user-535', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-535', 'first-name-535', 'last-name-535', 'first-name-535.last-name-535@springtravel.com');
insert into users (username, password, enabled) values ('user-536', '8ac46f29c4d2d53db654d3c51cff7c1b', true);
insert into authorities (username, authority) values ('user-536', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-536', 'first-name-536', 'last-name-536', 'first-name-536.last-name-536@springtravel.com');
insert into users (username, password, enabled) values ('user-537', '6b3cab68f224e2c6134ffd5e8beceb91', true);
insert into authorities (username, authority) values ('user-537', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-537', 'first-name-537', 'last-name-537', 'first-name-537.last-name-537@springtravel.com');
insert into users (username, password, enabled) values ('user-538', '4b86d823cfe4a1819c604d021e3e2301', true);
insert into authorities (username, authority) values ('user-538', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-538', 'first-name-538', 'last-name-538', 'first-name-538.last-name-538@springtravel.com');
insert into users (username, password, enabled) values ('user-539', '8885a9fe149b7f2fcb6b700d126afc47', true);
insert into authorities (username, authority) values ('user-539', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-539', 'first-name-539', 'last-name-539', 'first-name-539.last-name-539@springtravel.com');
insert into users (username, password, enabled) values ('user-540', 'c5707f7615b6d5f9397587d611cc751d', true);
insert into authorities (username, authority) values ('user-540', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-540', 'first-name-540', 'last-name-540', 'first-name-540.last-name-540@springtravel.com');
insert into users (username, password, enabled) values ('user-541', 'cc3e4c92a0ea909f3b4cd6ac5ef6f9af', true);
insert into authorities (username, authority) values ('user-541', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-541', 'first-name-541', 'last-name-541', 'first-name-541.last-name-541@springtravel.com');
insert into users (username, password, enabled) values ('user-542', '1394aff01b939aa1b952d308e68cf37d', true);
insert into authorities (username, authority) values ('user-542', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-542', 'first-name-542', 'last-name-542', 'first-name-542.last-name-542@springtravel.com');
insert into users (username, password, enabled) values ('user-543', 'f926c730913bc3018c2605db7c7e2979', true);
insert into authorities (username, authority) values ('user-543', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-543', 'first-name-543', 'last-name-543', 'first-name-543.last-name-543@springtravel.com');
insert into users (username, password, enabled) values ('user-544', '1b0c981c74dc7dd9e7933775bcb3aaa1', true);
insert into authorities (username, authority) values ('user-544', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-544', 'first-name-544', 'last-name-544', 'first-name-544.last-name-544@springtravel.com');
insert into users (username, password, enabled) values ('user-545', '917c48bad56275822704fb4edcf4637c', true);
insert into authorities (username, authority) values ('user-545', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-545', 'first-name-545', 'last-name-545', 'first-name-545.last-name-545@springtravel.com');
insert into users (username, password, enabled) values ('user-546', '4b7c3a7b9ade018e8746833b8b848d98', true);
insert into authorities (username, authority) values ('user-546', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-546', 'first-name-546', 'last-name-546', 'first-name-546.last-name-546@springtravel.com');
insert into users (username, password, enabled) values ('user-547', '2074716f9a9f0548088a414ea4b20a62', true);
insert into authorities (username, authority) values ('user-547', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-547', 'first-name-547', 'last-name-547', 'first-name-547.last-name-547@springtravel.com');
insert into users (username, password, enabled) values ('user-548', 'f24538138ef3f0da9119b8981117cd86', true);
insert into authorities (username, authority) values ('user-548', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-548', 'first-name-548', 'last-name-548', 'first-name-548.last-name-548@springtravel.com');
insert into users (username, password, enabled) values ('user-549', '0d427c32b2e4a0e357856ac0815c803b', true);
insert into authorities (username, authority) values ('user-549', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-549', 'first-name-549', 'last-name-549', 'first-name-549.last-name-549@springtravel.com');
insert into users (username, password, enabled) values ('user-550', 'e670f0debed598373c6683139ce36455', true);
insert into authorities (username, authority) values ('user-550', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-550', 'first-name-550', 'last-name-550', 'first-name-550.last-name-550@springtravel.com');
insert into users (username, password, enabled) values ('user-551', '2fc47aee16ed08a471abff12d39bb342', true);
insert into authorities (username, authority) values ('user-551', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-551', 'first-name-551', 'last-name-551', 'first-name-551.last-name-551@springtravel.com');
insert into users (username, password, enabled) values ('user-552', '2e9badb19e30e92cae2f892b48c5c3a1', true);
insert into authorities (username, authority) values ('user-552', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-552', 'first-name-552', 'last-name-552', 'first-name-552.last-name-552@springtravel.com');
insert into users (username, password, enabled) values ('user-553', '4f4283939a0031015f5dfa74569ee63d', true);
insert into authorities (username, authority) values ('user-553', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-553', 'first-name-553', 'last-name-553', 'first-name-553.last-name-553@springtravel.com');
insert into users (username, password, enabled) values ('user-554', 'b9e4ba27ec15e06c451aad0d56cc4ace', true);
insert into authorities (username, authority) values ('user-554', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-554', 'first-name-554', 'last-name-554', 'first-name-554.last-name-554@springtravel.com');
insert into users (username, password, enabled) values ('user-555', '934f2d0cb7187c1eda090b92af32b257', true);
insert into authorities (username, authority) values ('user-555', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-555', 'first-name-555', 'last-name-555', 'first-name-555.last-name-555@springtravel.com');
insert into users (username, password, enabled) values ('user-556', '67391c4b1de4da02cb8ccfc3be25f566', true);
insert into authorities (username, authority) values ('user-556', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-556', 'first-name-556', 'last-name-556', 'first-name-556.last-name-556@springtravel.com');
insert into users (username, password, enabled) values ('user-557', '6b4437b5a99502f612b1abbf288c33ee', true);
insert into authorities (username, authority) values ('user-557', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-557', 'first-name-557', 'last-name-557', 'first-name-557.last-name-557@springtravel.com');
insert into users (username, password, enabled) values ('user-558', 'edc94b07df4f4f98ea54fcadb1af0d44', true);
insert into authorities (username, authority) values ('user-558', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-558', 'first-name-558', 'last-name-558', 'first-name-558.last-name-558@springtravel.com');
insert into users (username, password, enabled) values ('user-559', 'dbd7b2687603735d96ef455e6dad4c50', true);
insert into authorities (username, authority) values ('user-559', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-559', 'first-name-559', 'last-name-559', 'first-name-559.last-name-559@springtravel.com');
insert into users (username, password, enabled) values ('user-560', '6fba7501e9dc6567b1073e3f77f42669', true);
insert into authorities (username, authority) values ('user-560', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-560', 'first-name-560', 'last-name-560', 'first-name-560.last-name-560@springtravel.com');
insert into users (username, password, enabled) values ('user-561', '60043da8c23cd62017d0c37fc388f31a', true);
insert into authorities (username, authority) values ('user-561', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-561', 'first-name-561', 'last-name-561', 'first-name-561.last-name-561@springtravel.com');
insert into users (username, password, enabled) values ('user-562', '2532915cdf3e7d9b75108b37a204d10d', true);
insert into authorities (username, authority) values ('user-562', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-562', 'first-name-562', 'last-name-562', 'first-name-562.last-name-562@springtravel.com');
insert into users (username, password, enabled) values ('user-563', 'b19dfc1404d76b07e19972af1c30491b', true);
insert into authorities (username, authority) values ('user-563', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-563', 'first-name-563', 'last-name-563', 'first-name-563.last-name-563@springtravel.com');
insert into users (username, password, enabled) values ('user-564', 'dabd0a1b4cc9fb8e6f99614cada0814e', true);
insert into authorities (username, authority) values ('user-564', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-564', 'first-name-564', 'last-name-564', 'first-name-564.last-name-564@springtravel.com');
insert into users (username, password, enabled) values ('user-565', '3964036d2b0daf6168ffbea662aa27e3', true);
insert into authorities (username, authority) values ('user-565', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-565', 'first-name-565', 'last-name-565', 'first-name-565.last-name-565@springtravel.com');
insert into users (username, password, enabled) values ('user-566', '06c3a271b44055674e126ed3b2e16901', true);
insert into authorities (username, authority) values ('user-566', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-566', 'first-name-566', 'last-name-566', 'first-name-566.last-name-566@springtravel.com');
insert into users (username, password, enabled) values ('user-567', 'd145c42429e1022fb4fc79eb34ac332d', true);
insert into authorities (username, authority) values ('user-567', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-567', 'first-name-567', 'last-name-567', 'first-name-567.last-name-567@springtravel.com');
insert into users (username, password, enabled) values ('user-568', '54c5cb59bbb3ba42490b5dc3cb700364', true);
insert into authorities (username, authority) values ('user-568', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-568', 'first-name-568', 'last-name-568', 'first-name-568.last-name-568@springtravel.com');
insert into users (username, password, enabled) values ('user-569', '39276ac65bbe473dc82f3b00fc337115', true);
insert into authorities (username, authority) values ('user-569', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-569', 'first-name-569', 'last-name-569', 'first-name-569.last-name-569@springtravel.com');
insert into users (username, password, enabled) values ('user-570', '3c834107d046a802914db51af31f4364', true);
insert into authorities (username, authority) values ('user-570', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-570', 'first-name-570', 'last-name-570', 'first-name-570.last-name-570@springtravel.com');
insert into users (username, password, enabled) values ('user-571', '945fe76c31a1a7f843f8eea6cba5759a', true);
insert into authorities (username, authority) values ('user-571', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-571', 'first-name-571', 'last-name-571', 'first-name-571.last-name-571@springtravel.com');
insert into users (username, password, enabled) values ('user-572', '79dffd61d1008f4afc5fcc1c6f278d62', true);
insert into authorities (username, authority) values ('user-572', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-572', 'first-name-572', 'last-name-572', 'first-name-572.last-name-572@springtravel.com');
insert into users (username, password, enabled) values ('user-573', '167e0dc743822d5ba34e2f98a2bfa132', true);
insert into authorities (username, authority) values ('user-573', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-573', 'first-name-573', 'last-name-573', 'first-name-573.last-name-573@springtravel.com');
insert into users (username, password, enabled) values ('user-574', '39c6fa7817a08073f1a77e3448e3c6c5', true);
insert into authorities (username, authority) values ('user-574', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-574', 'first-name-574', 'last-name-574', 'first-name-574.last-name-574@springtravel.com');
insert into users (username, password, enabled) values ('user-575', '8a748992a8399e16c5f7f5bbc04e6d3d', true);
insert into authorities (username, authority) values ('user-575', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-575', 'first-name-575', 'last-name-575', 'first-name-575.last-name-575@springtravel.com');
insert into users (username, password, enabled) values ('user-576', '00aa5f050161a2429dfdf7e9ee137fa3', true);
insert into authorities (username, authority) values ('user-576', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-576', 'first-name-576', 'last-name-576', 'first-name-576.last-name-576@springtravel.com');
insert into users (username, password, enabled) values ('user-577', '3c1ae8610956acb938607d7916d8fced', true);
insert into authorities (username, authority) values ('user-577', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-577', 'first-name-577', 'last-name-577', 'first-name-577.last-name-577@springtravel.com');
insert into users (username, password, enabled) values ('user-578', 'c486d0a8e5b3311bbbd14a30f2a0be64', true);
insert into authorities (username, authority) values ('user-578', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-578', 'first-name-578', 'last-name-578', 'first-name-578.last-name-578@springtravel.com');
insert into users (username, password, enabled) values ('user-579', '119036d1ddf6a65eafb7a7d0da609c55', true);
insert into authorities (username, authority) values ('user-579', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-579', 'first-name-579', 'last-name-579', 'first-name-579.last-name-579@springtravel.com');
insert into users (username, password, enabled) values ('user-580', 'f18e198f1361e044d1e4738d80333184', true);
insert into authorities (username, authority) values ('user-580', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-580', 'first-name-580', 'last-name-580', 'first-name-580.last-name-580@springtravel.com');
insert into users (username, password, enabled) values ('user-581', 'e6b221712b745ac6618d8fe0578ae67f', true);
insert into authorities (username, authority) values ('user-581', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-581', 'first-name-581', 'last-name-581', 'first-name-581.last-name-581@springtravel.com');
insert into users (username, password, enabled) values ('user-582', '0bf230d29325c89c8deac8c4c4d258c1', true);
insert into authorities (username, authority) values ('user-582', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-582', 'first-name-582', 'last-name-582', 'first-name-582.last-name-582@springtravel.com');
insert into users (username, password, enabled) values ('user-583', 'e1503b5d9686d427214c52a904013416', true);
insert into authorities (username, authority) values ('user-583', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-583', 'first-name-583', 'last-name-583', 'first-name-583.last-name-583@springtravel.com');
insert into users (username, password, enabled) values ('user-584', '4d1b6da8d75276bc2b395ef94f41e0cc', true);
insert into authorities (username, authority) values ('user-584', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-584', 'first-name-584', 'last-name-584', 'first-name-584.last-name-584@springtravel.com');
insert into users (username, password, enabled) values ('user-585', '7bc8ab7b98b1c76fdbafb5033370011c', true);
insert into authorities (username, authority) values ('user-585', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-585', 'first-name-585', 'last-name-585', 'first-name-585.last-name-585@springtravel.com');
insert into users (username, password, enabled) values ('user-586', 'b5cd0f8b4a794308a659bbc34b55dda5', true);
insert into authorities (username, authority) values ('user-586', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-586', 'first-name-586', 'last-name-586', 'first-name-586.last-name-586@springtravel.com');
insert into users (username, password, enabled) values ('user-587', 'a927975da3e29d26ceba618a47e459ae', true);
insert into authorities (username, authority) values ('user-587', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-587', 'first-name-587', 'last-name-587', 'first-name-587.last-name-587@springtravel.com');
insert into users (username, password, enabled) values ('user-588', '61c1f0c328fe959686d7630f1ec5e67b', true);
insert into authorities (username, authority) values ('user-588', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-588', 'first-name-588', 'last-name-588', 'first-name-588.last-name-588@springtravel.com');
insert into users (username, password, enabled) values ('user-589', '3e5742b0dbae64ee8b6bee28054c7b4d', true);
insert into authorities (username, authority) values ('user-589', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-589', 'first-name-589', 'last-name-589', 'first-name-589.last-name-589@springtravel.com');
insert into users (username, password, enabled) values ('user-590', '2bbeeeb87192d9c2326a162b1ea8a504', true);
insert into authorities (username, authority) values ('user-590', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-590', 'first-name-590', 'last-name-590', 'first-name-590.last-name-590@springtravel.com');
insert into users (username, password, enabled) values ('user-591', 'b70e997feecc597ee705dd5d2ddbe005', true);
insert into authorities (username, authority) values ('user-591', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-591', 'first-name-591', 'last-name-591', 'first-name-591.last-name-591@springtravel.com');
insert into users (username, password, enabled) values ('user-592', '9f6bd0b01da0f4326605faf85bc84c5e', true);
insert into authorities (username, authority) values ('user-592', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-592', 'first-name-592', 'last-name-592', 'first-name-592.last-name-592@springtravel.com');
insert into users (username, password, enabled) values ('user-593', '69af854b292e937d03f4ea441843dbcb', true);
insert into authorities (username, authority) values ('user-593', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-593', 'first-name-593', 'last-name-593', 'first-name-593.last-name-593@springtravel.com');
insert into users (username, password, enabled) values ('user-594', '5bebc22c25f9b8496941825e991e330d', true);
insert into authorities (username, authority) values ('user-594', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-594', 'first-name-594', 'last-name-594', 'first-name-594.last-name-594@springtravel.com');
insert into users (username, password, enabled) values ('user-595', 'b198870e32f3ef7d09c2d4daad6bd241', true);
insert into authorities (username, authority) values ('user-595', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-595', 'first-name-595', 'last-name-595', 'first-name-595.last-name-595@springtravel.com');
insert into users (username, password, enabled) values ('user-596', '74449c91c6bdd7fd220aab72c7d67dff', true);
insert into authorities (username, authority) values ('user-596', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-596', 'first-name-596', 'last-name-596', 'first-name-596.last-name-596@springtravel.com');
insert into users (username, password, enabled) values ('user-597', '057adc99927a6fb0b645167705266181', true);
insert into authorities (username, authority) values ('user-597', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-597', 'first-name-597', 'last-name-597', 'first-name-597.last-name-597@springtravel.com');
insert into users (username, password, enabled) values ('user-598', '71e410988f77e3fc6eb6b58bf56e3e1c', true);
insert into authorities (username, authority) values ('user-598', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-598', 'first-name-598', 'last-name-598', 'first-name-598.last-name-598@springtravel.com');
insert into users (username, password, enabled) values ('user-599', '22df27441f93a35542ed93cf9137aa0b', true);
insert into authorities (username, authority) values ('user-599', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-599', 'first-name-599', 'last-name-599', 'first-name-599.last-name-599@springtravel.com');
insert into users (username, password, enabled) values ('user-600', '8f5e8414ae6bbe4601cea1c0b125f072', true);
insert into authorities (username, authority) values ('user-600', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-600', 'first-name-600', 'last-name-600', 'first-name-600.last-name-600@springtravel.com');
insert into users (username, password, enabled) values ('user-601', '2b9311ba9c592b808148d7a4ce7e1b29', true);
insert into authorities (username, authority) values ('user-601', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-601', 'first-name-601', 'last-name-601', 'first-name-601.last-name-601@springtravel.com');
insert into users (username, password, enabled) values ('user-602', '9a715adbe3c0247fe9051aef4108488e', true);
insert into authorities (username, authority) values ('user-602', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-602', 'first-name-602', 'last-name-602', 'first-name-602.last-name-602@springtravel.com');
insert into users (username, password, enabled) values ('user-603', '0167fe2f4c7f720a28ec2e180a6276ff', true);
insert into authorities (username, authority) values ('user-603', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-603', 'first-name-603', 'last-name-603', 'first-name-603.last-name-603@springtravel.com');
insert into users (username, password, enabled) values ('user-604', '934879269732d22765a25a9e5ea5f697', true);
insert into authorities (username, authority) values ('user-604', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-604', 'first-name-604', 'last-name-604', 'first-name-604.last-name-604@springtravel.com');
insert into users (username, password, enabled) values ('user-605', '92c3d6b49b4a1cddf1406bd6dcc704d8', true);
insert into authorities (username, authority) values ('user-605', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-605', 'first-name-605', 'last-name-605', 'first-name-605.last-name-605@springtravel.com');
insert into users (username, password, enabled) values ('user-606', '12c90bb3e084961a98203e4602b3b4c6', true);
insert into authorities (username, authority) values ('user-606', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-606', 'first-name-606', 'last-name-606', 'first-name-606.last-name-606@springtravel.com');
insert into users (username, password, enabled) values ('user-607', '94493180f6e45c72dc35e23ad96070b5', true);
insert into authorities (username, authority) values ('user-607', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-607', 'first-name-607', 'last-name-607', 'first-name-607.last-name-607@springtravel.com');
insert into users (username, password, enabled) values ('user-608', '0b98a49ec20b29598c331d329fb1318c', true);
insert into authorities (username, authority) values ('user-608', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-608', 'first-name-608', 'last-name-608', 'first-name-608.last-name-608@springtravel.com');
insert into users (username, password, enabled) values ('user-609', 'd541e061e0e80a4c88895e09e3612bbc', true);
insert into authorities (username, authority) values ('user-609', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-609', 'first-name-609', 'last-name-609', 'first-name-609.last-name-609@springtravel.com');
insert into users (username, password, enabled) values ('user-610', '3a16a8fc9638921c9073b7283c5c44e9', true);
insert into authorities (username, authority) values ('user-610', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-610', 'first-name-610', 'last-name-610', 'first-name-610.last-name-610@springtravel.com');
insert into users (username, password, enabled) values ('user-611', 'd28c6d03c933d6a1f64ee1059a0f2fd1', true);
insert into authorities (username, authority) values ('user-611', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-611', 'first-name-611', 'last-name-611', 'first-name-611.last-name-611@springtravel.com');
insert into users (username, password, enabled) values ('user-612', '7712acf8e45f210803cb71ba89d488f7', true);
insert into authorities (username, authority) values ('user-612', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-612', 'first-name-612', 'last-name-612', 'first-name-612.last-name-612@springtravel.com');
insert into users (username, password, enabled) values ('user-613', 'c75128235ec3416e483b33084a261001', true);
insert into authorities (username, authority) values ('user-613', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-613', 'first-name-613', 'last-name-613', 'first-name-613.last-name-613@springtravel.com');
insert into users (username, password, enabled) values ('user-614', '8750c60456e5f7d4626d0f71b22a8f4f', true);
insert into authorities (username, authority) values ('user-614', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-614', 'first-name-614', 'last-name-614', 'first-name-614.last-name-614@springtravel.com');
insert into users (username, password, enabled) values ('user-615', '94a4a9358ddfad8c933e0ecfd088bea1', true);
insert into authorities (username, authority) values ('user-615', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-615', 'first-name-615', 'last-name-615', 'first-name-615.last-name-615@springtravel.com');
insert into users (username, password, enabled) values ('user-616', '206bdc42c93d4442daa65ed620b6af0a', true);
insert into authorities (username, authority) values ('user-616', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-616', 'first-name-616', 'last-name-616', 'first-name-616.last-name-616@springtravel.com');
insert into users (username, password, enabled) values ('user-617', '26caa0418e43c810dd805a297d9ec486', true);
insert into authorities (username, authority) values ('user-617', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-617', 'first-name-617', 'last-name-617', 'first-name-617.last-name-617@springtravel.com');
insert into users (username, password, enabled) values ('user-618', '438ea647428fb2271ac48b195273de2d', true);
insert into authorities (username, authority) values ('user-618', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-618', 'first-name-618', 'last-name-618', 'first-name-618.last-name-618@springtravel.com');
insert into users (username, password, enabled) values ('user-619', '5ecb4701c390067a46100d8cd75b63b6', true);
insert into authorities (username, authority) values ('user-619', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-619', 'first-name-619', 'last-name-619', 'first-name-619.last-name-619@springtravel.com');
insert into users (username, password, enabled) values ('user-620', '698ce6b9e44aec1cd9e5c2a67727afe6', true);
insert into authorities (username, authority) values ('user-620', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-620', 'first-name-620', 'last-name-620', 'first-name-620.last-name-620@springtravel.com');
insert into users (username, password, enabled) values ('user-621', 'cc8daaa612347766cd06c088795156dd', true);
insert into authorities (username, authority) values ('user-621', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-621', 'first-name-621', 'last-name-621', 'first-name-621.last-name-621@springtravel.com');
insert into users (username, password, enabled) values ('user-622', '73e0c4175a2cf39c902be87da5ff60f4', true);
insert into authorities (username, authority) values ('user-622', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-622', 'first-name-622', 'last-name-622', 'first-name-622.last-name-622@springtravel.com');
insert into users (username, password, enabled) values ('user-623', '306a3ae02be7f5d69f212d87b59f9967', true);
insert into authorities (username, authority) values ('user-623', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-623', 'first-name-623', 'last-name-623', 'first-name-623.last-name-623@springtravel.com');
insert into users (username, password, enabled) values ('user-624', 'fbe379ece1837bba38db2dfa9e9bfdc1', true);
insert into authorities (username, authority) values ('user-624', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-624', 'first-name-624', 'last-name-624', 'first-name-624.last-name-624@springtravel.com');
insert into users (username, password, enabled) values ('user-625', '596edcd34309804c4d92b788a0abc064', true);
insert into authorities (username, authority) values ('user-625', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-625', 'first-name-625', 'last-name-625', 'first-name-625.last-name-625@springtravel.com');
insert into users (username, password, enabled) values ('user-626', '7d64891a60c2611f3d2fa384454bcc43', true);
insert into authorities (username, authority) values ('user-626', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-626', 'first-name-626', 'last-name-626', 'first-name-626.last-name-626@springtravel.com');
insert into users (username, password, enabled) values ('user-627', 'bf2498008a527849088b550a121d3952', true);
insert into authorities (username, authority) values ('user-627', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-627', 'first-name-627', 'last-name-627', 'first-name-627.last-name-627@springtravel.com');
insert into users (username, password, enabled) values ('user-628', '39f0c00316bace2b5b55d69a38278ce6', true);
insert into authorities (username, authority) values ('user-628', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-628', 'first-name-628', 'last-name-628', 'first-name-628.last-name-628@springtravel.com');
insert into users (username, password, enabled) values ('user-629', 'bc0f0fa779fda881dbde1f42d6c6e489', true);
insert into authorities (username, authority) values ('user-629', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-629', 'first-name-629', 'last-name-629', 'first-name-629.last-name-629@springtravel.com');
insert into users (username, password, enabled) values ('user-630', 'ae53bb968334c83f15616a38a6d3ce94', true);
insert into authorities (username, authority) values ('user-630', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-630', 'first-name-630', 'last-name-630', 'first-name-630.last-name-630@springtravel.com');
insert into users (username, password, enabled) values ('user-631', '66c9d3b4ca27d62722cf839c8c68a05f', true);
insert into authorities (username, authority) values ('user-631', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-631', 'first-name-631', 'last-name-631', 'first-name-631.last-name-631@springtravel.com');
insert into users (username, password, enabled) values ('user-632', '477f7c1ce503df664331d7a4881ed7c7', true);
insert into authorities (username, authority) values ('user-632', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-632', 'first-name-632', 'last-name-632', 'first-name-632.last-name-632@springtravel.com');
insert into users (username, password, enabled) values ('user-633', 'e50984ec2455528c366628bbeed87c57', true);
insert into authorities (username, authority) values ('user-633', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-633', 'first-name-633', 'last-name-633', 'first-name-633.last-name-633@springtravel.com');
insert into users (username, password, enabled) values ('user-634', '27db6110d1a7fab4a1ec8764a9c994b0', true);
insert into authorities (username, authority) values ('user-634', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-634', 'first-name-634', 'last-name-634', 'first-name-634.last-name-634@springtravel.com');
insert into users (username, password, enabled) values ('user-635', '42769ffca49304205ac316fcbd60df2d', true);
insert into authorities (username, authority) values ('user-635', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-635', 'first-name-635', 'last-name-635', 'first-name-635.last-name-635@springtravel.com');
insert into users (username, password, enabled) values ('user-636', '2394ee0fc292f5b8146dda9adc99a31a', true);
insert into authorities (username, authority) values ('user-636', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-636', 'first-name-636', 'last-name-636', 'first-name-636.last-name-636@springtravel.com');
insert into users (username, password, enabled) values ('user-637', 'ddef13c7b8ec9466dce12331a45735a7', true);
insert into authorities (username, authority) values ('user-637', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-637', 'first-name-637', 'last-name-637', 'first-name-637.last-name-637@springtravel.com');
insert into users (username, password, enabled) values ('user-638', '2ad8478a50705a673a7a85110f1794cf', true);
insert into authorities (username, authority) values ('user-638', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-638', 'first-name-638', 'last-name-638', 'first-name-638.last-name-638@springtravel.com');
insert into users (username, password, enabled) values ('user-639', 'c50c4040b33c0b6bbc5f25331511fe6e', true);
insert into authorities (username, authority) values ('user-639', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-639', 'first-name-639', 'last-name-639', 'first-name-639.last-name-639@springtravel.com');
insert into users (username, password, enabled) values ('user-640', 'c708bbcafb5a72d890c245b69f5c1e39', true);
insert into authorities (username, authority) values ('user-640', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-640', 'first-name-640', 'last-name-640', 'first-name-640.last-name-640@springtravel.com');
insert into users (username, password, enabled) values ('user-641', '8c52c9f42cca41282a1e944238377691', true);
insert into authorities (username, authority) values ('user-641', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-641', 'first-name-641', 'last-name-641', 'first-name-641.last-name-641@springtravel.com');
insert into users (username, password, enabled) values ('user-642', 'c3a89703f6722519f334b10cc4d76361', true);
insert into authorities (username, authority) values ('user-642', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-642', 'first-name-642', 'last-name-642', 'first-name-642.last-name-642@springtravel.com');
insert into users (username, password, enabled) values ('user-643', 'c6b68912a0c784f4a60cafeefa8885c9', true);
insert into authorities (username, authority) values ('user-643', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-643', 'first-name-643', 'last-name-643', 'first-name-643.last-name-643@springtravel.com');
insert into users (username, password, enabled) values ('user-644', 'f45580a12f5d3393c714ac0d1c593ceb', true);
insert into authorities (username, authority) values ('user-644', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-644', 'first-name-644', 'last-name-644', 'first-name-644.last-name-644@springtravel.com');
insert into users (username, password, enabled) values ('user-645', '7e201e408b0c5b0e27c01196c1b0b333', true);
insert into authorities (username, authority) values ('user-645', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-645', 'first-name-645', 'last-name-645', 'first-name-645.last-name-645@springtravel.com');
insert into users (username, password, enabled) values ('user-646', 'f984507ee2422b5fe76390db9a5c317c', true);
insert into authorities (username, authority) values ('user-646', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-646', 'first-name-646', 'last-name-646', 'first-name-646.last-name-646@springtravel.com');
insert into users (username, password, enabled) values ('user-647', '0ecdbb53c3e99f4b94e08429fd1cae6e', true);
insert into authorities (username, authority) values ('user-647', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-647', 'first-name-647', 'last-name-647', 'first-name-647.last-name-647@springtravel.com');
insert into users (username, password, enabled) values ('user-648', 'be80fc1fd8eb8143edc60a25786a27ff', true);
insert into authorities (username, authority) values ('user-648', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-648', 'first-name-648', 'last-name-648', 'first-name-648.last-name-648@springtravel.com');
insert into users (username, password, enabled) values ('user-649', 'ce8f8ea5ab77a645d7560cf472f836aa', true);
insert into authorities (username, authority) values ('user-649', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-649', 'first-name-649', 'last-name-649', 'first-name-649.last-name-649@springtravel.com');
insert into users (username, password, enabled) values ('user-650', 'a8feb36e10f124b8d2e3e408871dd086', true);
insert into authorities (username, authority) values ('user-650', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-650', 'first-name-650', 'last-name-650', 'first-name-650.last-name-650@springtravel.com');
insert into users (username, password, enabled) values ('user-651', '4669a264795b7831ef9118e88c4efc56', true);
insert into authorities (username, authority) values ('user-651', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-651', 'first-name-651', 'last-name-651', 'first-name-651.last-name-651@springtravel.com');
insert into users (username, password, enabled) values ('user-652', 'e5e600cd8d18411622b173730ca1d6aa', true);
insert into authorities (username, authority) values ('user-652', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-652', 'first-name-652', 'last-name-652', 'first-name-652.last-name-652@springtravel.com');
insert into users (username, password, enabled) values ('user-653', '24098a7628a2bb0eb1c1f744e3edf6a5', true);
insert into authorities (username, authority) values ('user-653', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-653', 'first-name-653', 'last-name-653', 'first-name-653.last-name-653@springtravel.com');
insert into users (username, password, enabled) values ('user-654', '344b85fa44acc984c794f87269ab0a76', true);
insert into authorities (username, authority) values ('user-654', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-654', 'first-name-654', 'last-name-654', 'first-name-654.last-name-654@springtravel.com');
insert into users (username, password, enabled) values ('user-655', 'f2b7b79cb0f1a5409b76d3987829c612', true);
insert into authorities (username, authority) values ('user-655', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-655', 'first-name-655', 'last-name-655', 'first-name-655.last-name-655@springtravel.com');
insert into users (username, password, enabled) values ('user-656', 'cc585d14c181614b3cdf809083d14aaa', true);
insert into authorities (username, authority) values ('user-656', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-656', 'first-name-656', 'last-name-656', 'first-name-656.last-name-656@springtravel.com');
insert into users (username, password, enabled) values ('user-657', '8ae00edc046a0992ba8a282132e9780c', true);
insert into authorities (username, authority) values ('user-657', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-657', 'first-name-657', 'last-name-657', 'first-name-657.last-name-657@springtravel.com');
insert into users (username, password, enabled) values ('user-658', 'afee48c7c81839bb1d9a351bd17ee5ac', true);
insert into authorities (username, authority) values ('user-658', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-658', 'first-name-658', 'last-name-658', 'first-name-658.last-name-658@springtravel.com');
insert into users (username, password, enabled) values ('user-659', 'c040135824b7aed943b758237d6a55e7', true);
insert into authorities (username, authority) values ('user-659', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-659', 'first-name-659', 'last-name-659', 'first-name-659.last-name-659@springtravel.com');
insert into users (username, password, enabled) values ('user-660', '35da502ca31fdb40a26e2b5c353bb4c2', true);
insert into authorities (username, authority) values ('user-660', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-660', 'first-name-660', 'last-name-660', 'first-name-660.last-name-660@springtravel.com');
insert into users (username, password, enabled) values ('user-661', 'c68e03db522a839449cb08374f85db17', true);
insert into authorities (username, authority) values ('user-661', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-661', 'first-name-661', 'last-name-661', 'first-name-661.last-name-661@springtravel.com');
insert into users (username, password, enabled) values ('user-662', '680def3468070f58e922840797fe7b78', true);
insert into authorities (username, authority) values ('user-662', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-662', 'first-name-662', 'last-name-662', 'first-name-662.last-name-662@springtravel.com');
insert into users (username, password, enabled) values ('user-663', '835cada8bd9d6d63ea9aed2857bd5194', true);
insert into authorities (username, authority) values ('user-663', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-663', 'first-name-663', 'last-name-663', 'first-name-663.last-name-663@springtravel.com');
insert into users (username, password, enabled) values ('user-664', '19bf371cc080854e69eea4605a1cee70', true);
insert into authorities (username, authority) values ('user-664', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-664', 'first-name-664', 'last-name-664', 'first-name-664.last-name-664@springtravel.com');
insert into users (username, password, enabled) values ('user-665', '48ccde14fe976d77e83eb86c08b623cd', true);
insert into authorities (username, authority) values ('user-665', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-665', 'first-name-665', 'last-name-665', 'first-name-665.last-name-665@springtravel.com');
insert into users (username, password, enabled) values ('user-666', '2f1bd7b5f4104d092b959097918000f6', true);
insert into authorities (username, authority) values ('user-666', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-666', 'first-name-666', 'last-name-666', 'first-name-666.last-name-666@springtravel.com');
insert into users (username, password, enabled) values ('user-667', '39c160f66e66ca5e0cae0ff4f3af72c0', true);
insert into authorities (username, authority) values ('user-667', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-667', 'first-name-667', 'last-name-667', 'first-name-667.last-name-667@springtravel.com');
insert into users (username, password, enabled) values ('user-668', 'e0f63f55666f9c8c129d170b1ac9d788', true);
insert into authorities (username, authority) values ('user-668', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-668', 'first-name-668', 'last-name-668', 'first-name-668.last-name-668@springtravel.com');
insert into users (username, password, enabled) values ('user-669', '9ad5866d4acfcfc9c0d94235a8121c92', true);
insert into authorities (username, authority) values ('user-669', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-669', 'first-name-669', 'last-name-669', 'first-name-669.last-name-669@springtravel.com');
insert into users (username, password, enabled) values ('user-670', '75b6a297e2c9c9da323a14fe26d5551f', true);
insert into authorities (username, authority) values ('user-670', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-670', 'first-name-670', 'last-name-670', 'first-name-670.last-name-670@springtravel.com');
insert into users (username, password, enabled) values ('user-671', 'd0c90316c5cb69c78c9c13c9ad4bb585', true);
insert into authorities (username, authority) values ('user-671', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-671', 'first-name-671', 'last-name-671', 'first-name-671.last-name-671@springtravel.com');
insert into users (username, password, enabled) values ('user-672', '39878c24fbc19ad559e9242e73cf1e97', true);
insert into authorities (username, authority) values ('user-672', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-672', 'first-name-672', 'last-name-672', 'first-name-672.last-name-672@springtravel.com');
insert into users (username, password, enabled) values ('user-673', '0f67e8aefe8b8e03a31b72988da9667b', true);
insert into authorities (username, authority) values ('user-673', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-673', 'first-name-673', 'last-name-673', 'first-name-673.last-name-673@springtravel.com');
insert into users (username, password, enabled) values ('user-674', '097f38e89ae04504c20da2e9bd424b61', true);
insert into authorities (username, authority) values ('user-674', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-674', 'first-name-674', 'last-name-674', 'first-name-674.last-name-674@springtravel.com');
insert into users (username, password, enabled) values ('user-675', 'c2f19e83f0fd396a1661d00ec345fbcc', true);
insert into authorities (username, authority) values ('user-675', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-675', 'first-name-675', 'last-name-675', 'first-name-675.last-name-675@springtravel.com');
insert into users (username, password, enabled) values ('user-676', '591da37d0750d494ee867e9e0c175c85', true);
insert into authorities (username, authority) values ('user-676', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-676', 'first-name-676', 'last-name-676', 'first-name-676.last-name-676@springtravel.com');
insert into users (username, password, enabled) values ('user-677', 'a00f3e38e74ea7858fe6a9d39d7b047e', true);
insert into authorities (username, authority) values ('user-677', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-677', 'first-name-677', 'last-name-677', 'first-name-677.last-name-677@springtravel.com');
insert into users (username, password, enabled) values ('user-678', 'cd6128a09b664a8c919b8f6f397eba35', true);
insert into authorities (username, authority) values ('user-678', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-678', 'first-name-678', 'last-name-678', 'first-name-678.last-name-678@springtravel.com');
insert into users (username, password, enabled) values ('user-679', '006de54a15460b0d98e997379889dcf9', true);
insert into authorities (username, authority) values ('user-679', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-679', 'first-name-679', 'last-name-679', 'first-name-679.last-name-679@springtravel.com');
insert into users (username, password, enabled) values ('user-680', '2b9be729a0984625057d99204e90c561', true);
insert into authorities (username, authority) values ('user-680', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-680', 'first-name-680', 'last-name-680', 'first-name-680.last-name-680@springtravel.com');
insert into users (username, password, enabled) values ('user-681', '3fd74888ec24ca059f774b31a4d0347f', true);
insert into authorities (username, authority) values ('user-681', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-681', 'first-name-681', 'last-name-681', 'first-name-681.last-name-681@springtravel.com');
insert into users (username, password, enabled) values ('user-682', '5944c92f131bf7ec6d214ce7142fb032', true);
insert into authorities (username, authority) values ('user-682', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-682', 'first-name-682', 'last-name-682', 'first-name-682.last-name-682@springtravel.com');
insert into users (username, password, enabled) values ('user-683', 'eb636f7717d3bb12def134dd2bfe6dda', true);
insert into authorities (username, authority) values ('user-683', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-683', 'first-name-683', 'last-name-683', 'first-name-683.last-name-683@springtravel.com');
insert into users (username, password, enabled) values ('user-684', '245a4605621de4380931530fdbb3b131', true);
insert into authorities (username, authority) values ('user-684', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-684', 'first-name-684', 'last-name-684', 'first-name-684.last-name-684@springtravel.com');
insert into users (username, password, enabled) values ('user-685', 'aa6ec05eb5ba6983f02e2ff172358c1c', true);
insert into authorities (username, authority) values ('user-685', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-685', 'first-name-685', 'last-name-685', 'first-name-685.last-name-685@springtravel.com');
insert into users (username, password, enabled) values ('user-686', '7e781ff4f7d7445f837a155136563855', true);
insert into authorities (username, authority) values ('user-686', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-686', 'first-name-686', 'last-name-686', 'first-name-686.last-name-686@springtravel.com');
insert into users (username, password, enabled) values ('user-687', '5430ee58384e63847c9804e66cb2baac', true);
insert into authorities (username, authority) values ('user-687', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-687', 'first-name-687', 'last-name-687', 'first-name-687.last-name-687@springtravel.com');
insert into users (username, password, enabled) values ('user-688', '793ae2d69afde4b093cd1da46fd02449', true);
insert into authorities (username, authority) values ('user-688', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-688', 'first-name-688', 'last-name-688', 'first-name-688.last-name-688@springtravel.com');
insert into users (username, password, enabled) values ('user-689', '309876ca7d6f328f30f427062e852754', true);
insert into authorities (username, authority) values ('user-689', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-689', 'first-name-689', 'last-name-689', 'first-name-689.last-name-689@springtravel.com');
insert into users (username, password, enabled) values ('user-690', '01c12c2b83576903e40dc19f9799ee2a', true);
insert into authorities (username, authority) values ('user-690', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-690', 'first-name-690', 'last-name-690', 'first-name-690.last-name-690@springtravel.com');
insert into users (username, password, enabled) values ('user-691', 'c464ab12794a4d7dfcfe508e21e56c46', true);
insert into authorities (username, authority) values ('user-691', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-691', 'first-name-691', 'last-name-691', 'first-name-691.last-name-691@springtravel.com');
insert into users (username, password, enabled) values ('user-692', '7d9c4d5e246517f9a3359ed4661a95b4', true);
insert into authorities (username, authority) values ('user-692', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-692', 'first-name-692', 'last-name-692', 'first-name-692.last-name-692@springtravel.com');
insert into users (username, password, enabled) values ('user-693', '97defd72f6aeeb3b3ec71209d89b0122', true);
insert into authorities (username, authority) values ('user-693', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-693', 'first-name-693', 'last-name-693', 'first-name-693.last-name-693@springtravel.com');
insert into users (username, password, enabled) values ('user-694', '683a21f7f689bab70344b42a4132695b', true);
insert into authorities (username, authority) values ('user-694', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-694', 'first-name-694', 'last-name-694', 'first-name-694.last-name-694@springtravel.com');
insert into users (username, password, enabled) values ('user-695', 'f50d83af9399b385686da94545acb7a4', true);
insert into authorities (username, authority) values ('user-695', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-695', 'first-name-695', 'last-name-695', 'first-name-695.last-name-695@springtravel.com');
insert into users (username, password, enabled) values ('user-696', 'c7503825d60c7a652d73311ab102e772', true);
insert into authorities (username, authority) values ('user-696', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-696', 'first-name-696', 'last-name-696', 'first-name-696.last-name-696@springtravel.com');
insert into users (username, password, enabled) values ('user-697', '05b6312019a310ea30b8e2c3e324e015', true);
insert into authorities (username, authority) values ('user-697', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-697', 'first-name-697', 'last-name-697', 'first-name-697.last-name-697@springtravel.com');
insert into users (username, password, enabled) values ('user-698', 'cdf55bef008dea19e35acdd0b1d76f05', true);
insert into authorities (username, authority) values ('user-698', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-698', 'first-name-698', 'last-name-698', 'first-name-698.last-name-698@springtravel.com');
insert into users (username, password, enabled) values ('user-699', '5830bb18a065adaea2ca57962f279526', true);
insert into authorities (username, authority) values ('user-699', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-699', 'first-name-699', 'last-name-699', 'first-name-699.last-name-699@springtravel.com');
insert into users (username, password, enabled) values ('user-700', '8db48d28a11573d7574b3509cd3fa4d0', true);
insert into authorities (username, authority) values ('user-700', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-700', 'first-name-700', 'last-name-700', 'first-name-700.last-name-700@springtravel.com');
insert into users (username, password, enabled) values ('user-701', 'c99200635f23fea9e66f0df6a5f1e612', true);
insert into authorities (username, authority) values ('user-701', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-701', 'first-name-701', 'last-name-701', 'first-name-701.last-name-701@springtravel.com');
insert into users (username, password, enabled) values ('user-702', '0f7a99a85f39ea1e1d99c408c4e4a816', true);
insert into authorities (username, authority) values ('user-702', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-702', 'first-name-702', 'last-name-702', 'first-name-702.last-name-702@springtravel.com');
insert into users (username, password, enabled) values ('user-703', 'bfd4f2201ffae1606ed8b0b5ede2fc87', true);
insert into authorities (username, authority) values ('user-703', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-703', 'first-name-703', 'last-name-703', 'first-name-703.last-name-703@springtravel.com');
insert into users (username, password, enabled) values ('user-704', '908dfe36839a5cd6fb7a711bfe233612', true);
insert into authorities (username, authority) values ('user-704', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-704', 'first-name-704', 'last-name-704', 'first-name-704.last-name-704@springtravel.com');
insert into users (username, password, enabled) values ('user-705', 'af9c4ca63354a6b8b8d48090f7aff7ca', true);
insert into authorities (username, authority) values ('user-705', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-705', 'first-name-705', 'last-name-705', 'first-name-705.last-name-705@springtravel.com');
insert into users (username, password, enabled) values ('user-706', 'f92c18833a4324e124b258f80d84c0bc', true);
insert into authorities (username, authority) values ('user-706', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-706', 'first-name-706', 'last-name-706', 'first-name-706.last-name-706@springtravel.com');
insert into users (username, password, enabled) values ('user-707', '3b385928aa56c837df46ce20a4212950', true);
insert into authorities (username, authority) values ('user-707', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-707', 'first-name-707', 'last-name-707', 'first-name-707.last-name-707@springtravel.com');
insert into users (username, password, enabled) values ('user-708', 'fa306a3ae4d19af5ad08e3e43de6bcb2', true);
insert into authorities (username, authority) values ('user-708', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-708', 'first-name-708', 'last-name-708', 'first-name-708.last-name-708@springtravel.com');
insert into users (username, password, enabled) values ('user-709', '2812db26108771912ff79cc1a1b5ca69', true);
insert into authorities (username, authority) values ('user-709', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-709', 'first-name-709', 'last-name-709', 'first-name-709.last-name-709@springtravel.com');
insert into users (username, password, enabled) values ('user-710', '20a140b5a960b24f41b3840e6c8f224d', true);
insert into authorities (username, authority) values ('user-710', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-710', 'first-name-710', 'last-name-710', 'first-name-710.last-name-710@springtravel.com');
insert into users (username, password, enabled) values ('user-711', '61ded6b982de737dad9efcb94ff1b716', true);
insert into authorities (username, authority) values ('user-711', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-711', 'first-name-711', 'last-name-711', 'first-name-711.last-name-711@springtravel.com');
insert into users (username, password, enabled) values ('user-712', 'e23244b4e6fbd63800c921257b9391a9', true);
insert into authorities (username, authority) values ('user-712', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-712', 'first-name-712', 'last-name-712', 'first-name-712.last-name-712@springtravel.com');
insert into users (username, password, enabled) values ('user-713', '4d5fb0e3a71be21bc52a7312ae5467f7', true);
insert into authorities (username, authority) values ('user-713', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-713', 'first-name-713', 'last-name-713', 'first-name-713.last-name-713@springtravel.com');
insert into users (username, password, enabled) values ('user-714', 'dc34724eaee0220721d860744efb1bf4', true);
insert into authorities (username, authority) values ('user-714', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-714', 'first-name-714', 'last-name-714', 'first-name-714.last-name-714@springtravel.com');
insert into users (username, password, enabled) values ('user-715', '253de0d04e37d486115903b60749659a', true);
insert into authorities (username, authority) values ('user-715', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-715', 'first-name-715', 'last-name-715', 'first-name-715.last-name-715@springtravel.com');
insert into users (username, password, enabled) values ('user-716', 'cfe5b6b57e96f8514289d316a1bd31ef', true);
insert into authorities (username, authority) values ('user-716', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-716', 'first-name-716', 'last-name-716', 'first-name-716.last-name-716@springtravel.com');
insert into users (username, password, enabled) values ('user-717', 'bf2bee551f2037be132173bb71f79bad', true);
insert into authorities (username, authority) values ('user-717', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-717', 'first-name-717', 'last-name-717', 'first-name-717.last-name-717@springtravel.com');
insert into users (username, password, enabled) values ('user-718', '856fb4a06c0220b0498382ba52791b19', true);
insert into authorities (username, authority) values ('user-718', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-718', 'first-name-718', 'last-name-718', 'first-name-718.last-name-718@springtravel.com');
insert into users (username, password, enabled) values ('user-719', '76b1aafb55f1548f95a5c24fda3c3ff3', true);
insert into authorities (username, authority) values ('user-719', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-719', 'first-name-719', 'last-name-719', 'first-name-719.last-name-719@springtravel.com');
insert into users (username, password, enabled) values ('user-720', '30c54c1aa678b7da093e43f3d9f0f327', true);
insert into authorities (username, authority) values ('user-720', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-720', 'first-name-720', 'last-name-720', 'first-name-720.last-name-720@springtravel.com');
insert into users (username, password, enabled) values ('user-721', '121333e994a4c82d8af88ca338a53f8c', true);
insert into authorities (username, authority) values ('user-721', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-721', 'first-name-721', 'last-name-721', 'first-name-721.last-name-721@springtravel.com');
insert into users (username, password, enabled) values ('user-722', '4f77953da2667f6bf546db38f2b55557', true);
insert into authorities (username, authority) values ('user-722', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-722', 'first-name-722', 'last-name-722', 'first-name-722.last-name-722@springtravel.com');
insert into users (username, password, enabled) values ('user-723', 'aeda9587443bf273f94d2b09d4268d6b', true);
insert into authorities (username, authority) values ('user-723', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-723', 'first-name-723', 'last-name-723', 'first-name-723.last-name-723@springtravel.com');
insert into users (username, password, enabled) values ('user-724', 'ad7ac88f60366388bde16926d6d400e4', true);
insert into authorities (username, authority) values ('user-724', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-724', 'first-name-724', 'last-name-724', 'first-name-724.last-name-724@springtravel.com');
insert into users (username, password, enabled) values ('user-725', '5c1b8e09539ced88f58cc4857ccd607d', true);
insert into authorities (username, authority) values ('user-725', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-725', 'first-name-725', 'last-name-725', 'first-name-725.last-name-725@springtravel.com');
insert into users (username, password, enabled) values ('user-726', '28e91b58802f5010d202745f81010679', true);
insert into authorities (username, authority) values ('user-726', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-726', 'first-name-726', 'last-name-726', 'first-name-726.last-name-726@springtravel.com');
insert into users (username, password, enabled) values ('user-727', 'edf20380f967ee81148f4fcbf26eb152', true);
insert into authorities (username, authority) values ('user-727', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-727', 'first-name-727', 'last-name-727', 'first-name-727.last-name-727@springtravel.com');
insert into users (username, password, enabled) values ('user-728', 'c65507f352ffe906263a174ad29b40d8', true);
insert into authorities (username, authority) values ('user-728', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-728', 'first-name-728', 'last-name-728', 'first-name-728.last-name-728@springtravel.com');
insert into users (username, password, enabled) values ('user-729', '10af7bdc1efadacafcc39151bb0df402', true);
insert into authorities (username, authority) values ('user-729', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-729', 'first-name-729', 'last-name-729', 'first-name-729.last-name-729@springtravel.com');
insert into users (username, password, enabled) values ('user-730', '0ccaa7679dd63b5cac2645886251a85e', true);
insert into authorities (username, authority) values ('user-730', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-730', 'first-name-730', 'last-name-730', 'first-name-730.last-name-730@springtravel.com');
insert into users (username, password, enabled) values ('user-731', 'b287f191b20507deb95dcaa64f45a52b', true);
insert into authorities (username, authority) values ('user-731', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-731', 'first-name-731', 'last-name-731', 'first-name-731.last-name-731@springtravel.com');
insert into users (username, password, enabled) values ('user-732', '4d8546d8bc91c44fef2c7e2f0fe663e1', true);
insert into authorities (username, authority) values ('user-732', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-732', 'first-name-732', 'last-name-732', 'first-name-732.last-name-732@springtravel.com');
insert into users (username, password, enabled) values ('user-733', 'f26e32c324578c599aac941aaff21c7a', true);
insert into authorities (username, authority) values ('user-733', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-733', 'first-name-733', 'last-name-733', 'first-name-733.last-name-733@springtravel.com');
insert into users (username, password, enabled) values ('user-734', 'e3ff139ff7b23e9cd6748fe65d46e7b4', true);
insert into authorities (username, authority) values ('user-734', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-734', 'first-name-734', 'last-name-734', 'first-name-734.last-name-734@springtravel.com');
insert into users (username, password, enabled) values ('user-735', '7541bd0644817e2736e60c0e515dd40b', true);
insert into authorities (username, authority) values ('user-735', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-735', 'first-name-735', 'last-name-735', 'first-name-735.last-name-735@springtravel.com');
insert into users (username, password, enabled) values ('user-736', '8263164f0badd3ecafe81760b3961193', true);
insert into authorities (username, authority) values ('user-736', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-736', 'first-name-736', 'last-name-736', 'first-name-736.last-name-736@springtravel.com');
insert into users (username, password, enabled) values ('user-737', '4a714c8978ff5293d276eba0fc465473', true);
insert into authorities (username, authority) values ('user-737', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-737', 'first-name-737', 'last-name-737', 'first-name-737.last-name-737@springtravel.com');
insert into users (username, password, enabled) values ('user-738', '407fde872515a9fe34fbc4ddd6b167e3', true);
insert into authorities (username, authority) values ('user-738', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-738', 'first-name-738', 'last-name-738', 'first-name-738.last-name-738@springtravel.com');
insert into users (username, password, enabled) values ('user-739', '4e9f3fb0d779a7282a5159aa229239ef', true);
insert into authorities (username, authority) values ('user-739', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-739', 'first-name-739', 'last-name-739', 'first-name-739.last-name-739@springtravel.com');
insert into users (username, password, enabled) values ('user-740', 'bce2a26b470a61bcfdbabf6e3ecc2d51', true);
insert into authorities (username, authority) values ('user-740', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-740', 'first-name-740', 'last-name-740', 'first-name-740.last-name-740@springtravel.com');
insert into users (username, password, enabled) values ('user-741', 'd957e3a1e5e74a2161498110d99ce7a2', true);
insert into authorities (username, authority) values ('user-741', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-741', 'first-name-741', 'last-name-741', 'first-name-741.last-name-741@springtravel.com');
insert into users (username, password, enabled) values ('user-742', '428b6b8317751683409a2106757b1808', true);
insert into authorities (username, authority) values ('user-742', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-742', 'first-name-742', 'last-name-742', 'first-name-742.last-name-742@springtravel.com');
insert into users (username, password, enabled) values ('user-743', 'cb372328519179297a80b304952370f3', true);
insert into authorities (username, authority) values ('user-743', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-743', 'first-name-743', 'last-name-743', 'first-name-743.last-name-743@springtravel.com');
insert into users (username, password, enabled) values ('user-744', '210364447e5ef4873a94e0c65c87d6a4', true);
insert into authorities (username, authority) values ('user-744', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-744', 'first-name-744', 'last-name-744', 'first-name-744.last-name-744@springtravel.com');
insert into users (username, password, enabled) values ('user-745', '701ddd48fda73adcecbcc0cad257877f', true);
insert into authorities (username, authority) values ('user-745', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-745', 'first-name-745', 'last-name-745', 'first-name-745.last-name-745@springtravel.com');
insert into users (username, password, enabled) values ('user-746', '2a578c59d0b2b73127cc5c835c695067', true);
insert into authorities (username, authority) values ('user-746', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-746', 'first-name-746', 'last-name-746', 'first-name-746.last-name-746@springtravel.com');
insert into users (username, password, enabled) values ('user-747', '956f7cfa4319e075fbad5ad7e6f31d5b', true);
insert into authorities (username, authority) values ('user-747', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-747', 'first-name-747', 'last-name-747', 'first-name-747.last-name-747@springtravel.com');
insert into users (username, password, enabled) values ('user-748', 'e4073df370324c8e87cf1310841afbac', true);
insert into authorities (username, authority) values ('user-748', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-748', 'first-name-748', 'last-name-748', 'first-name-748.last-name-748@springtravel.com');
insert into users (username, password, enabled) values ('user-749', 'cd55d3eaa08f57d81a7294f670a4dc48', true);
insert into authorities (username, authority) values ('user-749', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-749', 'first-name-749', 'last-name-749', 'first-name-749.last-name-749@springtravel.com');
insert into users (username, password, enabled) values ('user-750', 'c6b1b48cfafdf1a92b6822274087ec3d', true);
insert into authorities (username, authority) values ('user-750', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-750', 'first-name-750', 'last-name-750', 'first-name-750.last-name-750@springtravel.com');
insert into users (username, password, enabled) values ('user-751', 'bb53f9e1e5a11f6520832a21892e3dd1', true);
insert into authorities (username, authority) values ('user-751', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-751', 'first-name-751', 'last-name-751', 'first-name-751.last-name-751@springtravel.com');
insert into users (username, password, enabled) values ('user-752', '3771c0a8a9547cd5a181ccd8bf653f69', true);
insert into authorities (username, authority) values ('user-752', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-752', 'first-name-752', 'last-name-752', 'first-name-752.last-name-752@springtravel.com');
insert into users (username, password, enabled) values ('user-753', 'bd573be0880586a68028a88837daa8f7', true);
insert into authorities (username, authority) values ('user-753', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-753', 'first-name-753', 'last-name-753', 'first-name-753.last-name-753@springtravel.com');
insert into users (username, password, enabled) values ('user-754', 'e7a64ddca8476f2c97b5c196cac8fc36', true);
insert into authorities (username, authority) values ('user-754', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-754', 'first-name-754', 'last-name-754', 'first-name-754.last-name-754@springtravel.com');
insert into users (username, password, enabled) values ('user-755', '058be03c330cbe6677315ee0a2d31164', true);
insert into authorities (username, authority) values ('user-755', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-755', 'first-name-755', 'last-name-755', 'first-name-755.last-name-755@springtravel.com');
insert into users (username, password, enabled) values ('user-756', 'b7c79feba361c5e79550127a249f2ad5', true);
insert into authorities (username, authority) values ('user-756', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-756', 'first-name-756', 'last-name-756', 'first-name-756.last-name-756@springtravel.com');
insert into users (username, password, enabled) values ('user-757', 'b907e82c6c9704e9fc94b755adc8556d', true);
insert into authorities (username, authority) values ('user-757', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-757', 'first-name-757', 'last-name-757', 'first-name-757.last-name-757@springtravel.com');
insert into users (username, password, enabled) values ('user-758', '934d8a6684f45a3ed139efbfd1e2f6dd', true);
insert into authorities (username, authority) values ('user-758', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-758', 'first-name-758', 'last-name-758', 'first-name-758.last-name-758@springtravel.com');
insert into users (username, password, enabled) values ('user-759', '9c87b8b4a10baa201143e7b4eff0e32a', true);
insert into authorities (username, authority) values ('user-759', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-759', 'first-name-759', 'last-name-759', 'first-name-759.last-name-759@springtravel.com');
insert into users (username, password, enabled) values ('user-760', '32da1af60261375a4a16dbcffe5f76b1', true);
insert into authorities (username, authority) values ('user-760', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-760', 'first-name-760', 'last-name-760', 'first-name-760.last-name-760@springtravel.com');
insert into users (username, password, enabled) values ('user-761', '1456deb43141eac6029187e19ccdbd65', true);
insert into authorities (username, authority) values ('user-761', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-761', 'first-name-761', 'last-name-761', 'first-name-761.last-name-761@springtravel.com');
insert into users (username, password, enabled) values ('user-762', '10080c11d1a9ad2b3604f393c3e1f7e5', true);
insert into authorities (username, authority) values ('user-762', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-762', 'first-name-762', 'last-name-762', 'first-name-762.last-name-762@springtravel.com');
insert into users (username, password, enabled) values ('user-763', '14ef34e6b9e6b9bd31d0c9568466a9b3', true);
insert into authorities (username, authority) values ('user-763', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-763', 'first-name-763', 'last-name-763', 'first-name-763.last-name-763@springtravel.com');
insert into users (username, password, enabled) values ('user-764', '43be8323304b2a1842183333a65dcf9d', true);
insert into authorities (username, authority) values ('user-764', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-764', 'first-name-764', 'last-name-764', 'first-name-764.last-name-764@springtravel.com');
insert into users (username, password, enabled) values ('user-765', '318f5f6ca78eb277d3f79519406626ee', true);
insert into authorities (username, authority) values ('user-765', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-765', 'first-name-765', 'last-name-765', 'first-name-765.last-name-765@springtravel.com');
insert into users (username, password, enabled) values ('user-766', '664acc1b53bbd76097f1762e24dc6466', true);
insert into authorities (username, authority) values ('user-766', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-766', 'first-name-766', 'last-name-766', 'first-name-766.last-name-766@springtravel.com');
insert into users (username, password, enabled) values ('user-767', 'aff61e8ab3c73b92c2e80dea10681cf8', true);
insert into authorities (username, authority) values ('user-767', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-767', 'first-name-767', 'last-name-767', 'first-name-767.last-name-767@springtravel.com');
insert into users (username, password, enabled) values ('user-768', '9772e80bdeca4b470b8f8b9772505a5b', true);
insert into authorities (username, authority) values ('user-768', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-768', 'first-name-768', 'last-name-768', 'first-name-768.last-name-768@springtravel.com');
insert into users (username, password, enabled) values ('user-769', '1862df612c99b2bb2a4d0bc109249da8', true);
insert into authorities (username, authority) values ('user-769', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-769', 'first-name-769', 'last-name-769', 'first-name-769.last-name-769@springtravel.com');
insert into users (username, password, enabled) values ('user-770', '67fa19cf782d898966257c57c5c3e5a0', true);
insert into authorities (username, authority) values ('user-770', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-770', 'first-name-770', 'last-name-770', 'first-name-770.last-name-770@springtravel.com');
insert into users (username, password, enabled) values ('user-771', 'ea53bc01aacfa57df032bbb8f030ada9', true);
insert into authorities (username, authority) values ('user-771', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-771', 'first-name-771', 'last-name-771', 'first-name-771.last-name-771@springtravel.com');
insert into users (username, password, enabled) values ('user-772', '32a4c41228b47f252a538a99a2b6bd6d', true);
insert into authorities (username, authority) values ('user-772', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-772', 'first-name-772', 'last-name-772', 'first-name-772.last-name-772@springtravel.com');
insert into users (username, password, enabled) values ('user-773', '0c1fcfac3a6f570bf35a5ff7d3cbfce9', true);
insert into authorities (username, authority) values ('user-773', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-773', 'first-name-773', 'last-name-773', 'first-name-773.last-name-773@springtravel.com');
insert into users (username, password, enabled) values ('user-774', '28a4fd5cee2d95e4caba689b48beb732', true);
insert into authorities (username, authority) values ('user-774', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-774', 'first-name-774', 'last-name-774', 'first-name-774.last-name-774@springtravel.com');
insert into users (username, password, enabled) values ('user-775', '651e791ced109f485ba5d7fad87e2bbe', true);
insert into authorities (username, authority) values ('user-775', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-775', 'first-name-775', 'last-name-775', 'first-name-775.last-name-775@springtravel.com');
insert into users (username, password, enabled) values ('user-776', '8784c79863a22c5b012b535e13b07408', true);
insert into authorities (username, authority) values ('user-776', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-776', 'first-name-776', 'last-name-776', 'first-name-776.last-name-776@springtravel.com');
insert into users (username, password, enabled) values ('user-777', 'c7da3a82ff345b14f45eea173a1527b4', true);
insert into authorities (username, authority) values ('user-777', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-777', 'first-name-777', 'last-name-777', 'first-name-777.last-name-777@springtravel.com');
insert into users (username, password, enabled) values ('user-778', '06b138d481bc601072252751d36007ab', true);
insert into authorities (username, authority) values ('user-778', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-778', 'first-name-778', 'last-name-778', 'first-name-778.last-name-778@springtravel.com');
insert into users (username, password, enabled) values ('user-779', '8fc8072d10a2bae73fe3c6f90351c1bc', true);
insert into authorities (username, authority) values ('user-779', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-779', 'first-name-779', 'last-name-779', 'first-name-779.last-name-779@springtravel.com');
insert into users (username, password, enabled) values ('user-780', '07e29abf635a2bb355abaeff47bfd4fc', true);
insert into authorities (username, authority) values ('user-780', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-780', 'first-name-780', 'last-name-780', 'first-name-780.last-name-780@springtravel.com');
insert into users (username, password, enabled) values ('user-781', 'd3f37044ccdca4abeadddfa8ccfec5aa', true);
insert into authorities (username, authority) values ('user-781', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-781', 'first-name-781', 'last-name-781', 'first-name-781.last-name-781@springtravel.com');
insert into users (username, password, enabled) values ('user-782', 'fe94658c32090fcb8780ee5ba3d3c144', true);
insert into authorities (username, authority) values ('user-782', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-782', 'first-name-782', 'last-name-782', 'first-name-782.last-name-782@springtravel.com');
insert into users (username, password, enabled) values ('user-783', 'b28b5ee0a04fb485df047e6d24bdc0d7', true);
insert into authorities (username, authority) values ('user-783', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-783', 'first-name-783', 'last-name-783', 'first-name-783.last-name-783@springtravel.com');
insert into users (username, password, enabled) values ('user-784', 'a743d5c22df79e029ff34a084bed2c63', true);
insert into authorities (username, authority) values ('user-784', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-784', 'first-name-784', 'last-name-784', 'first-name-784.last-name-784@springtravel.com');
insert into users (username, password, enabled) values ('user-785', 'ebf3e4d7f2c8e3e4caaae8976a9e146f', true);
insert into authorities (username, authority) values ('user-785', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-785', 'first-name-785', 'last-name-785', 'first-name-785.last-name-785@springtravel.com');
insert into users (username, password, enabled) values ('user-786', 'f4725f64bdb646f1916dc481d130423c', true);
insert into authorities (username, authority) values ('user-786', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-786', 'first-name-786', 'last-name-786', 'first-name-786.last-name-786@springtravel.com');
insert into users (username, password, enabled) values ('user-787', 'b15ff9656510894d77a046d1a1664078', true);
insert into authorities (username, authority) values ('user-787', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-787', 'first-name-787', 'last-name-787', 'first-name-787.last-name-787@springtravel.com');
insert into users (username, password, enabled) values ('user-788', '49958b67cd3c84d17f777c57c0f00f76', true);
insert into authorities (username, authority) values ('user-788', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-788', 'first-name-788', 'last-name-788', 'first-name-788.last-name-788@springtravel.com');
insert into users (username, password, enabled) values ('user-789', '7c357a00852461e597e26d385748b348', true);
insert into authorities (username, authority) values ('user-789', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-789', 'first-name-789', 'last-name-789', 'first-name-789.last-name-789@springtravel.com');
insert into users (username, password, enabled) values ('user-790', 'f6cbd789efd184707bf477ae3af0812e', true);
insert into authorities (username, authority) values ('user-790', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-790', 'first-name-790', 'last-name-790', 'first-name-790.last-name-790@springtravel.com');
insert into users (username, password, enabled) values ('user-791', '9f2aa5d0d02e8c3db12fc1d874467df0', true);
insert into authorities (username, authority) values ('user-791', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-791', 'first-name-791', 'last-name-791', 'first-name-791.last-name-791@springtravel.com');
insert into users (username, password, enabled) values ('user-792', '5d592414ffd2233ea12f863fdbfcb740', true);
insert into authorities (username, authority) values ('user-792', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-792', 'first-name-792', 'last-name-792', 'first-name-792.last-name-792@springtravel.com');
insert into users (username, password, enabled) values ('user-793', '102a0c114976ecc9d451aec440d642e6', true);
insert into authorities (username, authority) values ('user-793', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-793', 'first-name-793', 'last-name-793', 'first-name-793.last-name-793@springtravel.com');
insert into users (username, password, enabled) values ('user-794', 'd824a8c677b002beeadbe34e8813415d', true);
insert into authorities (username, authority) values ('user-794', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-794', 'first-name-794', 'last-name-794', 'first-name-794.last-name-794@springtravel.com');
insert into users (username, password, enabled) values ('user-795', 'fbb453f2bafbd998696cc2cff70ff01e', true);
insert into authorities (username, authority) values ('user-795', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-795', 'first-name-795', 'last-name-795', 'first-name-795.last-name-795@springtravel.com');
insert into users (username, password, enabled) values ('user-796', '3b47184645c1f09ffccfc66c95e82a64', true);
insert into authorities (username, authority) values ('user-796', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-796', 'first-name-796', 'last-name-796', 'first-name-796.last-name-796@springtravel.com');
insert into users (username, password, enabled) values ('user-797', '1cb5b830b5e75aef53b4b1ec3c0009b2', true);
insert into authorities (username, authority) values ('user-797', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-797', 'first-name-797', 'last-name-797', 'first-name-797.last-name-797@springtravel.com');
insert into users (username, password, enabled) values ('user-798', '2fa02b46f6c80551c4959e23f3f5001d', true);
insert into authorities (username, authority) values ('user-798', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-798', 'first-name-798', 'last-name-798', 'first-name-798.last-name-798@springtravel.com');
insert into users (username, password, enabled) values ('user-799', 'aba3f10ed720f80a9fd8a1570172a74b', true);
insert into authorities (username, authority) values ('user-799', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-799', 'first-name-799', 'last-name-799', 'first-name-799.last-name-799@springtravel.com');
insert into users (username, password, enabled) values ('user-800', '65b3c143e160d4e83c02ea790af3a77f', true);
insert into authorities (username, authority) values ('user-800', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-800', 'first-name-800', 'last-name-800', 'first-name-800.last-name-800@springtravel.com');
insert into users (username, password, enabled) values ('user-801', 'b4bfecff5d769f9fa0c7a86d1a0895e9', true);
insert into authorities (username, authority) values ('user-801', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-801', 'first-name-801', 'last-name-801', 'first-name-801.last-name-801@springtravel.com');
insert into users (username, password, enabled) values ('user-802', '50a88a95662367fdac6b29aef457a223', true);
insert into authorities (username, authority) values ('user-802', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-802', 'first-name-802', 'last-name-802', 'first-name-802.last-name-802@springtravel.com');
insert into users (username, password, enabled) values ('user-803', '523a90af821b8b2cbf1a87631c37490e', true);
insert into authorities (username, authority) values ('user-803', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-803', 'first-name-803', 'last-name-803', 'first-name-803.last-name-803@springtravel.com');
insert into users (username, password, enabled) values ('user-804', '2c021ba3f0c1f050046dabfb06796608', true);
insert into authorities (username, authority) values ('user-804', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-804', 'first-name-804', 'last-name-804', 'first-name-804.last-name-804@springtravel.com');
insert into users (username, password, enabled) values ('user-805', '12a274678a5e2372d515b177d1fac3c8', true);
insert into authorities (username, authority) values ('user-805', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-805', 'first-name-805', 'last-name-805', 'first-name-805.last-name-805@springtravel.com');
insert into users (username, password, enabled) values ('user-806', '4b1c15307b52969064a7d43495297b23', true);
insert into authorities (username, authority) values ('user-806', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-806', 'first-name-806', 'last-name-806', 'first-name-806.last-name-806@springtravel.com');
insert into users (username, password, enabled) values ('user-807', '70598efb10be539682809c07536f6e30', true);
insert into authorities (username, authority) values ('user-807', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-807', 'first-name-807', 'last-name-807', 'first-name-807.last-name-807@springtravel.com');
insert into users (username, password, enabled) values ('user-808', 'ee4975e14d309cf63d2c6bb820a36007', true);
insert into authorities (username, authority) values ('user-808', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-808', 'first-name-808', 'last-name-808', 'first-name-808.last-name-808@springtravel.com');
insert into users (username, password, enabled) values ('user-809', '6ab2e052922ff970394eacf97d999f22', true);
insert into authorities (username, authority) values ('user-809', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-809', 'first-name-809', 'last-name-809', 'first-name-809.last-name-809@springtravel.com');
insert into users (username, password, enabled) values ('user-810', '17c2ef79d109245416711c157ff09230', true);
insert into authorities (username, authority) values ('user-810', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-810', 'first-name-810', 'last-name-810', 'first-name-810.last-name-810@springtravel.com');
insert into users (username, password, enabled) values ('user-811', '59e0504ae2eb3ea05c8c4ef3c5662013', true);
insert into authorities (username, authority) values ('user-811', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-811', 'first-name-811', 'last-name-811', 'first-name-811.last-name-811@springtravel.com');
insert into users (username, password, enabled) values ('user-812', '86dfb0f5cdd8b12079f0f8582f75079c', true);
insert into authorities (username, authority) values ('user-812', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-812', 'first-name-812', 'last-name-812', 'first-name-812.last-name-812@springtravel.com');
insert into users (username, password, enabled) values ('user-813', '15b746e4e9476074d651b694bcccda32', true);
insert into authorities (username, authority) values ('user-813', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-813', 'first-name-813', 'last-name-813', 'first-name-813.last-name-813@springtravel.com');
insert into users (username, password, enabled) values ('user-814', '330707236ec297cf869749a84f052532', true);
insert into authorities (username, authority) values ('user-814', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-814', 'first-name-814', 'last-name-814', 'first-name-814.last-name-814@springtravel.com');
insert into users (username, password, enabled) values ('user-815', 'e18800ceb1bf3a71e5da3fe21eab1092', true);
insert into authorities (username, authority) values ('user-815', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-815', 'first-name-815', 'last-name-815', 'first-name-815.last-name-815@springtravel.com');
insert into users (username, password, enabled) values ('user-816', 'ea217114432e2f5cd06c149d6748431b', true);
insert into authorities (username, authority) values ('user-816', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-816', 'first-name-816', 'last-name-816', 'first-name-816.last-name-816@springtravel.com');
insert into users (username, password, enabled) values ('user-817', 'fcd99d03d9dba209824dd8576a406a9c', true);
insert into authorities (username, authority) values ('user-817', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-817', 'first-name-817', 'last-name-817', 'first-name-817.last-name-817@springtravel.com');
insert into users (username, password, enabled) values ('user-818', '93b8f99a95d0287bc2df30700fb27adc', true);
insert into authorities (username, authority) values ('user-818', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-818', 'first-name-818', 'last-name-818', 'first-name-818.last-name-818@springtravel.com');
insert into users (username, password, enabled) values ('user-819', '62de65c57d776c0323c25b02cc29c69e', true);
insert into authorities (username, authority) values ('user-819', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-819', 'first-name-819', 'last-name-819', 'first-name-819.last-name-819@springtravel.com');
insert into users (username, password, enabled) values ('user-820', '5a5292f0b7070489fa5bf13fd5a907a0', true);
insert into authorities (username, authority) values ('user-820', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-820', 'first-name-820', 'last-name-820', 'first-name-820.last-name-820@springtravel.com');
insert into users (username, password, enabled) values ('user-821', '532cb2ceb4013563895ff8dc06b49e18', true);
insert into authorities (username, authority) values ('user-821', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-821', 'first-name-821', 'last-name-821', 'first-name-821.last-name-821@springtravel.com');
insert into users (username, password, enabled) values ('user-822', '9ac4bd960c747f8b3c2a9a26ffb72659', true);
insert into authorities (username, authority) values ('user-822', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-822', 'first-name-822', 'last-name-822', 'first-name-822.last-name-822@springtravel.com');
insert into users (username, password, enabled) values ('user-823', '8f7c6f83b41771601978c132e110a4ae', true);
insert into authorities (username, authority) values ('user-823', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-823', 'first-name-823', 'last-name-823', 'first-name-823.last-name-823@springtravel.com');
insert into users (username, password, enabled) values ('user-824', '31e56f06b9eebfc6a4a26e831b265611', true);
insert into authorities (username, authority) values ('user-824', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-824', 'first-name-824', 'last-name-824', 'first-name-824.last-name-824@springtravel.com');
insert into users (username, password, enabled) values ('user-825', '0c3bb5c13006d5ea2466b608b5451fb0', true);
insert into authorities (username, authority) values ('user-825', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-825', 'first-name-825', 'last-name-825', 'first-name-825.last-name-825@springtravel.com');
insert into users (username, password, enabled) values ('user-826', 'ac19c89892a4fcb8f09bb10ae0cbc89e', true);
insert into authorities (username, authority) values ('user-826', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-826', 'first-name-826', 'last-name-826', 'first-name-826.last-name-826@springtravel.com');
insert into users (username, password, enabled) values ('user-827', '3039b56828026d5374a40e82d40e1ebf', true);
insert into authorities (username, authority) values ('user-827', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-827', 'first-name-827', 'last-name-827', 'first-name-827.last-name-827@springtravel.com');
insert into users (username, password, enabled) values ('user-828', '32151e81b312e14136ec0e9eab836904', true);
insert into authorities (username, authority) values ('user-828', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-828', 'first-name-828', 'last-name-828', 'first-name-828.last-name-828@springtravel.com');
insert into users (username, password, enabled) values ('user-829', '92cd8d2f99bfeb375e04f8a1a63dd29b', true);
insert into authorities (username, authority) values ('user-829', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-829', 'first-name-829', 'last-name-829', 'first-name-829.last-name-829@springtravel.com');
insert into users (username, password, enabled) values ('user-830', '77c753718b92a63c1930d61bbfc62ecd', true);
insert into authorities (username, authority) values ('user-830', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-830', 'first-name-830', 'last-name-830', 'first-name-830.last-name-830@springtravel.com');
insert into users (username, password, enabled) values ('user-831', '013e691b806de3fa963c66bc35af9b5f', true);
insert into authorities (username, authority) values ('user-831', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-831', 'first-name-831', 'last-name-831', 'first-name-831.last-name-831@springtravel.com');
insert into users (username, password, enabled) values ('user-832', 'cfa1382778fc747ab61ad54e5a88bfb9', true);
insert into authorities (username, authority) values ('user-832', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-832', 'first-name-832', 'last-name-832', 'first-name-832.last-name-832@springtravel.com');
insert into users (username, password, enabled) values ('user-833', '254feb6271093d2dec77d8b019d8956d', true);
insert into authorities (username, authority) values ('user-833', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-833', 'first-name-833', 'last-name-833', 'first-name-833.last-name-833@springtravel.com');
insert into users (username, password, enabled) values ('user-834', 'edcbca6ead0f090c55fc53d1a564fa99', true);
insert into authorities (username, authority) values ('user-834', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-834', 'first-name-834', 'last-name-834', 'first-name-834.last-name-834@springtravel.com');
insert into users (username, password, enabled) values ('user-835', '9f1ff785777ec31b44d2841620129894', true);
insert into authorities (username, authority) values ('user-835', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-835', 'first-name-835', 'last-name-835', 'first-name-835.last-name-835@springtravel.com');
insert into users (username, password, enabled) values ('user-836', '7fbf5e6e1933e5d9f9994cac083ee530', true);
insert into authorities (username, authority) values ('user-836', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-836', 'first-name-836', 'last-name-836', 'first-name-836.last-name-836@springtravel.com');
insert into users (username, password, enabled) values ('user-837', '8a4740fa10d08293551810609ae8f71d', true);
insert into authorities (username, authority) values ('user-837', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-837', 'first-name-837', 'last-name-837', 'first-name-837.last-name-837@springtravel.com');
insert into users (username, password, enabled) values ('user-838', '1f1bd478af659a9438d72fc6c60fee6d', true);
insert into authorities (username, authority) values ('user-838', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-838', 'first-name-838', 'last-name-838', 'first-name-838.last-name-838@springtravel.com');
insert into users (username, password, enabled) values ('user-839', '38bbbfe76c95b1b6a99b6042902d000c', true);
insert into authorities (username, authority) values ('user-839', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-839', 'first-name-839', 'last-name-839', 'first-name-839.last-name-839@springtravel.com');
insert into users (username, password, enabled) values ('user-840', 'fbef7ea01334f7182d5012fd8a977087', true);
insert into authorities (username, authority) values ('user-840', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-840', 'first-name-840', 'last-name-840', 'first-name-840.last-name-840@springtravel.com');
insert into users (username, password, enabled) values ('user-841', '8e615705684b34747b1194235d8a45eb', true);
insert into authorities (username, authority) values ('user-841', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-841', 'first-name-841', 'last-name-841', 'first-name-841.last-name-841@springtravel.com');
insert into users (username, password, enabled) values ('user-842', '037a53155e896c0ffd74c8060077ac4d', true);
insert into authorities (username, authority) values ('user-842', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-842', 'first-name-842', 'last-name-842', 'first-name-842.last-name-842@springtravel.com');
insert into users (username, password, enabled) values ('user-843', '79e363edee94675b0253bcf17918a477', true);
insert into authorities (username, authority) values ('user-843', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-843', 'first-name-843', 'last-name-843', 'first-name-843.last-name-843@springtravel.com');
insert into users (username, password, enabled) values ('user-844', '04a9f7c302681a5c06ad21de598de839', true);
insert into authorities (username, authority) values ('user-844', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-844', 'first-name-844', 'last-name-844', 'first-name-844.last-name-844@springtravel.com');
insert into users (username, password, enabled) values ('user-845', 'a2bf54135927026464042a9bb2216ecc', true);
insert into authorities (username, authority) values ('user-845', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-845', 'first-name-845', 'last-name-845', 'first-name-845.last-name-845@springtravel.com');
insert into users (username, password, enabled) values ('user-846', '26ca6c56cbe8ac6d1dbe028c8dcb6365', true);
insert into authorities (username, authority) values ('user-846', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-846', 'first-name-846', 'last-name-846', 'first-name-846.last-name-846@springtravel.com');
insert into users (username, password, enabled) values ('user-847', 'dce6b1021aaa78cb5585c525023dfa5a', true);
insert into authorities (username, authority) values ('user-847', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-847', 'first-name-847', 'last-name-847', 'first-name-847.last-name-847@springtravel.com');
insert into users (username, password, enabled) values ('user-848', '88e17b0ccb8caa308238e399045391a6', true);
insert into authorities (username, authority) values ('user-848', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-848', 'first-name-848', 'last-name-848', 'first-name-848.last-name-848@springtravel.com');
insert into users (username, password, enabled) values ('user-849', '3fdca07d49b6f7959e8dbe4b7f4068dd', true);
insert into authorities (username, authority) values ('user-849', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-849', 'first-name-849', 'last-name-849', 'first-name-849.last-name-849@springtravel.com');
insert into users (username, password, enabled) values ('user-850', 'b3aefa76bd3c0ccf67b332ee9c8380fb', true);
insert into authorities (username, authority) values ('user-850', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-850', 'first-name-850', 'last-name-850', 'first-name-850.last-name-850@springtravel.com');
insert into users (username, password, enabled) values ('user-851', 'f2e3a3d518f01712c2e797e871c5b811', true);
insert into authorities (username, authority) values ('user-851', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-851', 'first-name-851', 'last-name-851', 'first-name-851.last-name-851@springtravel.com');
insert into users (username, password, enabled) values ('user-852', '4a859fb7a96989330db79d4f89adc777', true);
insert into authorities (username, authority) values ('user-852', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-852', 'first-name-852', 'last-name-852', 'first-name-852.last-name-852@springtravel.com');
insert into users (username, password, enabled) values ('user-853', '0b9048d2abc6ce65c1110df92c7e828c', true);
insert into authorities (username, authority) values ('user-853', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-853', 'first-name-853', 'last-name-853', 'first-name-853.last-name-853@springtravel.com');
insert into users (username, password, enabled) values ('user-854', '632c5a1ab4dc5f4771021d26b2a741ad', true);
insert into authorities (username, authority) values ('user-854', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-854', 'first-name-854', 'last-name-854', 'first-name-854.last-name-854@springtravel.com');
insert into users (username, password, enabled) values ('user-855', 'a72d2903e615b03fc8b5ba5113ae57c1', true);
insert into authorities (username, authority) values ('user-855', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-855', 'first-name-855', 'last-name-855', 'first-name-855.last-name-855@springtravel.com');
insert into users (username, password, enabled) values ('user-856', '0a024bde3d51de1ffa283536f2d60b2f', true);
insert into authorities (username, authority) values ('user-856', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-856', 'first-name-856', 'last-name-856', 'first-name-856.last-name-856@springtravel.com');
insert into users (username, password, enabled) values ('user-857', '5577f26fd6a4aa4c400f7da6b50f0e7d', true);
insert into authorities (username, authority) values ('user-857', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-857', 'first-name-857', 'last-name-857', 'first-name-857.last-name-857@springtravel.com');
insert into users (username, password, enabled) values ('user-858', '4b724989a63204016c6188c9c8ea7466', true);
insert into authorities (username, authority) values ('user-858', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-858', 'first-name-858', 'last-name-858', 'first-name-858.last-name-858@springtravel.com');
insert into users (username, password, enabled) values ('user-859', '066805107f17cc37587875df9aecbf22', true);
insert into authorities (username, authority) values ('user-859', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-859', 'first-name-859', 'last-name-859', 'first-name-859.last-name-859@springtravel.com');
insert into users (username, password, enabled) values ('user-860', 'ea47a89d342149cb09257cfd63af7a53', true);
insert into authorities (username, authority) values ('user-860', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-860', 'first-name-860', 'last-name-860', 'first-name-860.last-name-860@springtravel.com');
insert into users (username, password, enabled) values ('user-861', 'd4fd1a620ba061108bda2fa3d54a635f', true);
insert into authorities (username, authority) values ('user-861', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-861', 'first-name-861', 'last-name-861', 'first-name-861.last-name-861@springtravel.com');
insert into users (username, password, enabled) values ('user-862', '6646f11c9d8c3fccb90598c943c9bc8d', true);
insert into authorities (username, authority) values ('user-862', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-862', 'first-name-862', 'last-name-862', 'first-name-862.last-name-862@springtravel.com');
insert into users (username, password, enabled) values ('user-863', '8b4d6a4068018bad4b82e3173f674e2a', true);
insert into authorities (username, authority) values ('user-863', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-863', 'first-name-863', 'last-name-863', 'first-name-863.last-name-863@springtravel.com');
insert into users (username, password, enabled) values ('user-864', 'c8ba7165d82138eecf64b800b3115417', true);
insert into authorities (username, authority) values ('user-864', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-864', 'first-name-864', 'last-name-864', 'first-name-864.last-name-864@springtravel.com');
insert into users (username, password, enabled) values ('user-865', '0c6fe6343abc91c5067f67dbe910bc17', true);
insert into authorities (username, authority) values ('user-865', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-865', 'first-name-865', 'last-name-865', 'first-name-865.last-name-865@springtravel.com');
insert into users (username, password, enabled) values ('user-866', '21c63c8ac97fafff2ff65bc19895697a', true);
insert into authorities (username, authority) values ('user-866', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-866', 'first-name-866', 'last-name-866', 'first-name-866.last-name-866@springtravel.com');
insert into users (username, password, enabled) values ('user-867', '6119f03713aa518918f4da482826071d', true);
insert into authorities (username, authority) values ('user-867', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-867', 'first-name-867', 'last-name-867', 'first-name-867.last-name-867@springtravel.com');
insert into users (username, password, enabled) values ('user-868', '344451962e3b8d1b531521dd7ea49ef1', true);
insert into authorities (username, authority) values ('user-868', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-868', 'first-name-868', 'last-name-868', 'first-name-868.last-name-868@springtravel.com');
insert into users (username, password, enabled) values ('user-869', '04482c1be6e9c9cbb5d9805899a03ac6', true);
insert into authorities (username, authority) values ('user-869', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-869', 'first-name-869', 'last-name-869', 'first-name-869.last-name-869@springtravel.com');
insert into users (username, password, enabled) values ('user-870', '676061ec3092858d43a79a5fedf64a7f', true);
insert into authorities (username, authority) values ('user-870', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-870', 'first-name-870', 'last-name-870', 'first-name-870.last-name-870@springtravel.com');
insert into users (username, password, enabled) values ('user-871', 'c73489603e0c41922d6d482b197e61e4', true);
insert into authorities (username, authority) values ('user-871', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-871', 'first-name-871', 'last-name-871', 'first-name-871.last-name-871@springtravel.com');
insert into users (username, password, enabled) values ('user-872', '9be76b41ef6a1b4b68edb77b2110f378', true);
insert into authorities (username, authority) values ('user-872', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-872', 'first-name-872', 'last-name-872', 'first-name-872.last-name-872@springtravel.com');
insert into users (username, password, enabled) values ('user-873', '304a39c9470dae48e4ec91bbfe4ee39c', true);
insert into authorities (username, authority) values ('user-873', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-873', 'first-name-873', 'last-name-873', 'first-name-873.last-name-873@springtravel.com');
insert into users (username, password, enabled) values ('user-874', '02b5805bf38c761aa2a77ebba91ad4c6', true);
insert into authorities (username, authority) values ('user-874', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-874', 'first-name-874', 'last-name-874', 'first-name-874.last-name-874@springtravel.com');
insert into users (username, password, enabled) values ('user-875', 'e59bd00d32cc0803c15a639367783e31', true);
insert into authorities (username, authority) values ('user-875', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-875', 'first-name-875', 'last-name-875', 'first-name-875.last-name-875@springtravel.com');
insert into users (username, password, enabled) values ('user-876', 'fe9b528babde52cec1f5e2dbd07f598e', true);
insert into authorities (username, authority) values ('user-876', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-876', 'first-name-876', 'last-name-876', 'first-name-876.last-name-876@springtravel.com');
insert into users (username, password, enabled) values ('user-877', 'd4874ae934c3b8118a33a6c19d0f5f4e', true);
insert into authorities (username, authority) values ('user-877', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-877', 'first-name-877', 'last-name-877', 'first-name-877.last-name-877@springtravel.com');
insert into users (username, password, enabled) values ('user-878', '720a1e9e7ba5da95c48bced899481f8b', true);
insert into authorities (username, authority) values ('user-878', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-878', 'first-name-878', 'last-name-878', 'first-name-878.last-name-878@springtravel.com');
insert into users (username, password, enabled) values ('user-879', '73f5b2d4797b66aa1b9e966707978350', true);
insert into authorities (username, authority) values ('user-879', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-879', 'first-name-879', 'last-name-879', 'first-name-879.last-name-879@springtravel.com');
insert into users (username, password, enabled) values ('user-880', '82c567c9fa60e78c3f358f4f3208062c', true);
insert into authorities (username, authority) values ('user-880', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-880', 'first-name-880', 'last-name-880', 'first-name-880.last-name-880@springtravel.com');
insert into users (username, password, enabled) values ('user-881', 'd247b7a6104afeaa33192c172b63854c', true);
insert into authorities (username, authority) values ('user-881', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-881', 'first-name-881', 'last-name-881', 'first-name-881.last-name-881@springtravel.com');
insert into users (username, password, enabled) values ('user-882', 'd881a23ee45ca594a62d7fc963e2533b', true);
insert into authorities (username, authority) values ('user-882', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-882', 'first-name-882', 'last-name-882', 'first-name-882.last-name-882@springtravel.com');
insert into users (username, password, enabled) values ('user-883', 'c61cae25b7a059d2b9c0c7b8b5ae0a00', true);
insert into authorities (username, authority) values ('user-883', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-883', 'first-name-883', 'last-name-883', 'first-name-883.last-name-883@springtravel.com');
insert into users (username, password, enabled) values ('user-884', '140b72c79b3a1e16fc8f8bfd1d71d752', true);
insert into authorities (username, authority) values ('user-884', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-884', 'first-name-884', 'last-name-884', 'first-name-884.last-name-884@springtravel.com');
insert into users (username, password, enabled) values ('user-885', '064110a39e8ea96d8868e5353a5ff1c3', true);
insert into authorities (username, authority) values ('user-885', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-885', 'first-name-885', 'last-name-885', 'first-name-885.last-name-885@springtravel.com');
insert into users (username, password, enabled) values ('user-886', 'f04038cef8c63254a2ce78221a525f02', true);
insert into authorities (username, authority) values ('user-886', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-886', 'first-name-886', 'last-name-886', 'first-name-886.last-name-886@springtravel.com');
insert into users (username, password, enabled) values ('user-887', '05df290ac0caf2ac344c7535a7989187', true);
insert into authorities (username, authority) values ('user-887', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-887', 'first-name-887', 'last-name-887', 'first-name-887.last-name-887@springtravel.com');
insert into users (username, password, enabled) values ('user-888', '1bbb095397fe3a4604a014ed456c82d0', true);
insert into authorities (username, authority) values ('user-888', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-888', 'first-name-888', 'last-name-888', 'first-name-888.last-name-888@springtravel.com');
insert into users (username, password, enabled) values ('user-889', 'cf1aec017db59133eea55f0fbe9b415e', true);
insert into authorities (username, authority) values ('user-889', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-889', 'first-name-889', 'last-name-889', 'first-name-889.last-name-889@springtravel.com');
insert into users (username, password, enabled) values ('user-890', 'badc1a0ffef16a0b03fcfd526842102b', true);
insert into authorities (username, authority) values ('user-890', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-890', 'first-name-890', 'last-name-890', 'first-name-890.last-name-890@springtravel.com');
insert into users (username, password, enabled) values ('user-891', 'f026c0f5db23a53fa952ada06a894416', true);
insert into authorities (username, authority) values ('user-891', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-891', 'first-name-891', 'last-name-891', 'first-name-891.last-name-891@springtravel.com');
insert into users (username, password, enabled) values ('user-892', '9404fc374fde9e29cf02614138816412', true);
insert into authorities (username, authority) values ('user-892', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-892', 'first-name-892', 'last-name-892', 'first-name-892.last-name-892@springtravel.com');
insert into users (username, password, enabled) values ('user-893', '79f0031a20d8b04b05526c4fd3e7fb4f', true);
insert into authorities (username, authority) values ('user-893', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-893', 'first-name-893', 'last-name-893', 'first-name-893.last-name-893@springtravel.com');
insert into users (username, password, enabled) values ('user-894', 'cacb3426f11f47324930cb481aa67403', true);
insert into authorities (username, authority) values ('user-894', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-894', 'first-name-894', 'last-name-894', 'first-name-894.last-name-894@springtravel.com');
insert into users (username, password, enabled) values ('user-895', '210bd58a8996b420c3856eff31a6174c', true);
insert into authorities (username, authority) values ('user-895', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-895', 'first-name-895', 'last-name-895', 'first-name-895.last-name-895@springtravel.com');
insert into users (username, password, enabled) values ('user-896', '33a5260f5c95b4fedfaeebc415b5012e', true);
insert into authorities (username, authority) values ('user-896', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-896', 'first-name-896', 'last-name-896', 'first-name-896.last-name-896@springtravel.com');
insert into users (username, password, enabled) values ('user-897', 'ffadf66bd081fc79c408958beb644503', true);
insert into authorities (username, authority) values ('user-897', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-897', 'first-name-897', 'last-name-897', 'first-name-897.last-name-897@springtravel.com');
insert into users (username, password, enabled) values ('user-898', '035cd355c8b554584b0026637da99d2c', true);
insert into authorities (username, authority) values ('user-898', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-898', 'first-name-898', 'last-name-898', 'first-name-898.last-name-898@springtravel.com');
insert into users (username, password, enabled) values ('user-899', 'da972d074a414ba792065fee8769f47b', true);
insert into authorities (username, authority) values ('user-899', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-899', 'first-name-899', 'last-name-899', 'first-name-899.last-name-899@springtravel.com');
insert into users (username, password, enabled) values ('user-900', '6b0c44f560aad5d09b9208a7cfb69935', true);
insert into authorities (username, authority) values ('user-900', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-900', 'first-name-900', 'last-name-900', 'first-name-900.last-name-900@springtravel.com');
insert into users (username, password, enabled) values ('user-901', '1dc853ca1992b0b9f49cb1a631db8e17', true);
insert into authorities (username, authority) values ('user-901', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-901', 'first-name-901', 'last-name-901', 'first-name-901.last-name-901@springtravel.com');
insert into users (username, password, enabled) values ('user-902', 'a3ac9434d719463c9a47aa09276cb61c', true);
insert into authorities (username, authority) values ('user-902', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-902', 'first-name-902', 'last-name-902', 'first-name-902.last-name-902@springtravel.com');
insert into users (username, password, enabled) values ('user-903', '433e73fbe8675f53aa9b724cb7589764', true);
insert into authorities (username, authority) values ('user-903', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-903', 'first-name-903', 'last-name-903', 'first-name-903.last-name-903@springtravel.com');
insert into users (username, password, enabled) values ('user-904', '24d5f359ff1162948c2a2b90bcf9231f', true);
insert into authorities (username, authority) values ('user-904', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-904', 'first-name-904', 'last-name-904', 'first-name-904.last-name-904@springtravel.com');
insert into users (username, password, enabled) values ('user-905', 'cc3fbd1a4e462f5be499f3a9130b2f05', true);
insert into authorities (username, authority) values ('user-905', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-905', 'first-name-905', 'last-name-905', 'first-name-905.last-name-905@springtravel.com');
insert into users (username, password, enabled) values ('user-906', '381cde25e29345607eba1c4530c9d97d', true);
insert into authorities (username, authority) values ('user-906', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-906', 'first-name-906', 'last-name-906', 'first-name-906.last-name-906@springtravel.com');
insert into users (username, password, enabled) values ('user-907', '822a980f579492e7836d4a6bfbe78d00', true);
insert into authorities (username, authority) values ('user-907', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-907', 'first-name-907', 'last-name-907', 'first-name-907.last-name-907@springtravel.com');
insert into users (username, password, enabled) values ('user-908', 'a9c7151e616cb7409e66b1acae0786d3', true);
insert into authorities (username, authority) values ('user-908', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-908', 'first-name-908', 'last-name-908', 'first-name-908.last-name-908@springtravel.com');
insert into users (username, password, enabled) values ('user-909', 'e3b92ab31866480008ca3fbf9ebf56d4', true);
insert into authorities (username, authority) values ('user-909', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-909', 'first-name-909', 'last-name-909', 'first-name-909.last-name-909@springtravel.com');
insert into users (username, password, enabled) values ('user-910', '0e2c15ffda352fb2cfe8006dfd7843b4', true);
insert into authorities (username, authority) values ('user-910', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-910', 'first-name-910', 'last-name-910', 'first-name-910.last-name-910@springtravel.com');
insert into users (username, password, enabled) values ('user-911', '2407ac12c874f17bdc7ffc2e2e41562d', true);
insert into authorities (username, authority) values ('user-911', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-911', 'first-name-911', 'last-name-911', 'first-name-911.last-name-911@springtravel.com');
insert into users (username, password, enabled) values ('user-912', 'a7a8e8b990d0dc76f37c1c47bd019602', true);
insert into authorities (username, authority) values ('user-912', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-912', 'first-name-912', 'last-name-912', 'first-name-912.last-name-912@springtravel.com');
insert into users (username, password, enabled) values ('user-913', '45ed5c33a81e7e92a7df0bf28532cd79', true);
insert into authorities (username, authority) values ('user-913', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-913', 'first-name-913', 'last-name-913', 'first-name-913.last-name-913@springtravel.com');
insert into users (username, password, enabled) values ('user-914', 'cacbb48c91cc3c969123ece6fc0a6c58', true);
insert into authorities (username, authority) values ('user-914', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-914', 'first-name-914', 'last-name-914', 'first-name-914.last-name-914@springtravel.com');
insert into users (username, password, enabled) values ('user-915', 'ef0dfa41b0e1bda158fce7db4db88780', true);
insert into authorities (username, authority) values ('user-915', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-915', 'first-name-915', 'last-name-915', 'first-name-915.last-name-915@springtravel.com');
insert into users (username, password, enabled) values ('user-916', 'aa7a3f2ccacdf936084a3f8634666155', true);
insert into authorities (username, authority) values ('user-916', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-916', 'first-name-916', 'last-name-916', 'first-name-916.last-name-916@springtravel.com');
insert into users (username, password, enabled) values ('user-917', '114dd87cb068b59230ec5307e43174b6', true);
insert into authorities (username, authority) values ('user-917', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-917', 'first-name-917', 'last-name-917', 'first-name-917.last-name-917@springtravel.com');
insert into users (username, password, enabled) values ('user-918', '15d2096f0e3c89942f37690dfb0b8338', true);
insert into authorities (username, authority) values ('user-918', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-918', 'first-name-918', 'last-name-918', 'first-name-918.last-name-918@springtravel.com');
insert into users (username, password, enabled) values ('user-919', '848cd9b31c421df1ad1ec1401d1f30fb', true);
insert into authorities (username, authority) values ('user-919', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-919', 'first-name-919', 'last-name-919', 'first-name-919.last-name-919@springtravel.com');
insert into users (username, password, enabled) values ('user-920', 'cd309db5ec1daf8ee69fa41168ab5a3e', true);
insert into authorities (username, authority) values ('user-920', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-920', 'first-name-920', 'last-name-920', 'first-name-920.last-name-920@springtravel.com');
insert into users (username, password, enabled) values ('user-921', 'a6412f13ccc7a77dbc5d716e569d7f6e', true);
insert into authorities (username, authority) values ('user-921', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-921', 'first-name-921', 'last-name-921', 'first-name-921.last-name-921@springtravel.com');
insert into users (username, password, enabled) values ('user-922', '234a71aef67e9a96303f0627cdc1f998', true);
insert into authorities (username, authority) values ('user-922', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-922', 'first-name-922', 'last-name-922', 'first-name-922.last-name-922@springtravel.com');
insert into users (username, password, enabled) values ('user-923', 'ef59e2499906c52a5e9895c7bc3ff506', true);
insert into authorities (username, authority) values ('user-923', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-923', 'first-name-923', 'last-name-923', 'first-name-923.last-name-923@springtravel.com');
insert into users (username, password, enabled) values ('user-924', 'c6136ab9c177a0356999f4c0389b783d', true);
insert into authorities (username, authority) values ('user-924', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-924', 'first-name-924', 'last-name-924', 'first-name-924.last-name-924@springtravel.com');
insert into users (username, password, enabled) values ('user-925', '3da97efa1730ee509511c5ddd437ad43', true);
insert into authorities (username, authority) values ('user-925', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-925', 'first-name-925', 'last-name-925', 'first-name-925.last-name-925@springtravel.com');
insert into users (username, password, enabled) values ('user-926', '6ede0e02d0caa8901ad37d54b2cf1975', true);
insert into authorities (username, authority) values ('user-926', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-926', 'first-name-926', 'last-name-926', 'first-name-926.last-name-926@springtravel.com');
insert into users (username, password, enabled) values ('user-927', '704b0185d9c58e04992049b210dcfa27', true);
insert into authorities (username, authority) values ('user-927', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-927', 'first-name-927', 'last-name-927', 'first-name-927.last-name-927@springtravel.com');
insert into users (username, password, enabled) values ('user-928', '49c9e368d0840d46660e8097a917cff3', true);
insert into authorities (username, authority) values ('user-928', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-928', 'first-name-928', 'last-name-928', 'first-name-928.last-name-928@springtravel.com');
insert into users (username, password, enabled) values ('user-929', '856cde28e4226272c6ea6cd2a3cc9dca', true);
insert into authorities (username, authority) values ('user-929', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-929', 'first-name-929', 'last-name-929', 'first-name-929.last-name-929@springtravel.com');
insert into users (username, password, enabled) values ('user-930', 'f91d4d12899acb41f07ac95c530d52f9', true);
insert into authorities (username, authority) values ('user-930', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-930', 'first-name-930', 'last-name-930', 'first-name-930.last-name-930@springtravel.com');
insert into users (username, password, enabled) values ('user-931', '6a7d8080819c12c7032e8f628cdaafb0', true);
insert into authorities (username, authority) values ('user-931', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-931', 'first-name-931', 'last-name-931', 'first-name-931.last-name-931@springtravel.com');
insert into users (username, password, enabled) values ('user-932', 'c3d82375eeda3f0640291f63a2e6bf90', true);
insert into authorities (username, authority) values ('user-932', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-932', 'first-name-932', 'last-name-932', 'first-name-932.last-name-932@springtravel.com');
insert into users (username, password, enabled) values ('user-933', 'b740375c43d035c931cfbd66600c91ce', true);
insert into authorities (username, authority) values ('user-933', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-933', 'first-name-933', 'last-name-933', 'first-name-933.last-name-933@springtravel.com');
insert into users (username, password, enabled) values ('user-934', '48a28cb929cc7593502a62b30257081f', true);
insert into authorities (username, authority) values ('user-934', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-934', 'first-name-934', 'last-name-934', 'first-name-934.last-name-934@springtravel.com');
insert into users (username, password, enabled) values ('user-935', 'e1ff6e46fc5a27032057e2f663c76b49', true);
insert into authorities (username, authority) values ('user-935', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-935', 'first-name-935', 'last-name-935', 'first-name-935.last-name-935@springtravel.com');
insert into users (username, password, enabled) values ('user-936', '1c0260f67c5aaeaa8e94e5b4af94f874', true);
insert into authorities (username, authority) values ('user-936', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-936', 'first-name-936', 'last-name-936', 'first-name-936.last-name-936@springtravel.com');
insert into users (username, password, enabled) values ('user-937', 'dd905f9680be96b4e5acf332a9f1c5c9', true);
insert into authorities (username, authority) values ('user-937', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-937', 'first-name-937', 'last-name-937', 'first-name-937.last-name-937@springtravel.com');
insert into users (username, password, enabled) values ('user-938', '79da187e58cead9cb266da218742bb34', true);
insert into authorities (username, authority) values ('user-938', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-938', 'first-name-938', 'last-name-938', 'first-name-938.last-name-938@springtravel.com');
insert into users (username, password, enabled) values ('user-939', '331b0d721b430f5b4384ae0abc26433b', true);
insert into authorities (username, authority) values ('user-939', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-939', 'first-name-939', 'last-name-939', 'first-name-939.last-name-939@springtravel.com');
insert into users (username, password, enabled) values ('user-940', 'a7e948b03a3fa1ba056203bbcd16f9f1', true);
insert into authorities (username, authority) values ('user-940', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-940', 'first-name-940', 'last-name-940', 'first-name-940.last-name-940@springtravel.com');
insert into users (username, password, enabled) values ('user-941', '951586df231dcb64c4bd848aeb68af4a', true);
insert into authorities (username, authority) values ('user-941', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-941', 'first-name-941', 'last-name-941', 'first-name-941.last-name-941@springtravel.com');
insert into users (username, password, enabled) values ('user-942', '0eb73b9dc296b5380573049928de3b39', true);
insert into authorities (username, authority) values ('user-942', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-942', 'first-name-942', 'last-name-942', 'first-name-942.last-name-942@springtravel.com');
insert into users (username, password, enabled) values ('user-943', '26b0656ae7c8073b82bc9f7073db98ad', true);
insert into authorities (username, authority) values ('user-943', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-943', 'first-name-943', 'last-name-943', 'first-name-943.last-name-943@springtravel.com');
insert into users (username, password, enabled) values ('user-944', '044f798f31fe681d337eb221249f7fa0', true);
insert into authorities (username, authority) values ('user-944', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-944', 'first-name-944', 'last-name-944', 'first-name-944.last-name-944@springtravel.com');
insert into users (username, password, enabled) values ('user-945', '2ba1843f1c431593cd99e808fa04d5b2', true);
insert into authorities (username, authority) values ('user-945', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-945', 'first-name-945', 'last-name-945', 'first-name-945.last-name-945@springtravel.com');
insert into users (username, password, enabled) values ('user-946', '4e80972cc8cdf313b24e08adfbd36dfa', true);
insert into authorities (username, authority) values ('user-946', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-946', 'first-name-946', 'last-name-946', 'first-name-946.last-name-946@springtravel.com');
insert into users (username, password, enabled) values ('user-947', 'd955fc372858d31b52bbf9ec471c3a6c', true);
insert into authorities (username, authority) values ('user-947', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-947', 'first-name-947', 'last-name-947', 'first-name-947.last-name-947@springtravel.com');
insert into users (username, password, enabled) values ('user-948', 'a52cf8ffab4523463f6922e0d75f50d1', true);
insert into authorities (username, authority) values ('user-948', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-948', 'first-name-948', 'last-name-948', 'first-name-948.last-name-948@springtravel.com');
insert into users (username, password, enabled) values ('user-949', '40ff4b895eb8ca78f750861a8e9f9dd0', true);
insert into authorities (username, authority) values ('user-949', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-949', 'first-name-949', 'last-name-949', 'first-name-949.last-name-949@springtravel.com');
insert into users (username, password, enabled) values ('user-950', '71eac0c13a1ee14d34c01d5e4ca43096', true);
insert into authorities (username, authority) values ('user-950', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-950', 'first-name-950', 'last-name-950', 'first-name-950.last-name-950@springtravel.com');
insert into users (username, password, enabled) values ('user-951', '75b0f0c2c267378272f612a707f2ed2e', true);
insert into authorities (username, authority) values ('user-951', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-951', 'first-name-951', 'last-name-951', 'first-name-951.last-name-951@springtravel.com');
insert into users (username, password, enabled) values ('user-952', 'bf9a73a53a81ec885e3acf235447172f', true);
insert into authorities (username, authority) values ('user-952', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-952', 'first-name-952', 'last-name-952', 'first-name-952.last-name-952@springtravel.com');
insert into users (username, password, enabled) values ('user-953', 'ab4c2a954c25c9877ebac89d505e462c', true);
insert into authorities (username, authority) values ('user-953', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-953', 'first-name-953', 'last-name-953', 'first-name-953.last-name-953@springtravel.com');
insert into users (username, password, enabled) values ('user-954', 'fd69f7154b6db1b2c43e01ca02cc5230', true);
insert into authorities (username, authority) values ('user-954', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-954', 'first-name-954', 'last-name-954', 'first-name-954.last-name-954@springtravel.com');
insert into users (username, password, enabled) values ('user-955', '104d102541c9a78bf3c67c67d15362ac', true);
insert into authorities (username, authority) values ('user-955', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-955', 'first-name-955', 'last-name-955', 'first-name-955.last-name-955@springtravel.com');
insert into users (username, password, enabled) values ('user-956', 'c56ccc0b89946aca6ab7a82b969512a5', true);
insert into authorities (username, authority) values ('user-956', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-956', 'first-name-956', 'last-name-956', 'first-name-956.last-name-956@springtravel.com');
insert into users (username, password, enabled) values ('user-957', '687dab0b48ebd1792156fcb615dbdd65', true);
insert into authorities (username, authority) values ('user-957', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-957', 'first-name-957', 'last-name-957', 'first-name-957.last-name-957@springtravel.com');
insert into users (username, password, enabled) values ('user-958', '84d667d3c34408eb53d387591dfdfd08', true);
insert into authorities (username, authority) values ('user-958', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-958', 'first-name-958', 'last-name-958', 'first-name-958.last-name-958@springtravel.com');
insert into users (username, password, enabled) values ('user-959', '9f1cfbe59d2d39aeba526ef0c45ca374', true);
insert into authorities (username, authority) values ('user-959', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-959', 'first-name-959', 'last-name-959', 'first-name-959.last-name-959@springtravel.com');
insert into users (username, password, enabled) values ('user-960', '6278f9d080f98ae55cb52066085f26b1', true);
insert into authorities (username, authority) values ('user-960', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-960', 'first-name-960', 'last-name-960', 'first-name-960.last-name-960@springtravel.com');
insert into users (username, password, enabled) values ('user-961', '568003b21b670597cd653eb83a76f3c0', true);
insert into authorities (username, authority) values ('user-961', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-961', 'first-name-961', 'last-name-961', 'first-name-961.last-name-961@springtravel.com');
insert into users (username, password, enabled) values ('user-962', '1fb90aed213d19f1e699d00b85dd9968', true);
insert into authorities (username, authority) values ('user-962', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-962', 'first-name-962', 'last-name-962', 'first-name-962.last-name-962@springtravel.com');
insert into users (username, password, enabled) values ('user-963', '1800cd4cf834addd9da379e675c23425', true);
insert into authorities (username, authority) values ('user-963', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-963', 'first-name-963', 'last-name-963', 'first-name-963.last-name-963@springtravel.com');
insert into users (username, password, enabled) values ('user-964', '3f717e92405457437deae36810aa011b', true);
insert into authorities (username, authority) values ('user-964', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-964', 'first-name-964', 'last-name-964', 'first-name-964.last-name-964@springtravel.com');
insert into users (username, password, enabled) values ('user-965', 'fa53061f9b777417c6192c76794b8391', true);
insert into authorities (username, authority) values ('user-965', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-965', 'first-name-965', 'last-name-965', 'first-name-965.last-name-965@springtravel.com');
insert into users (username, password, enabled) values ('user-966', '5b687d9d1ad22048ceaea064dee1d1b5', true);
insert into authorities (username, authority) values ('user-966', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-966', 'first-name-966', 'last-name-966', 'first-name-966.last-name-966@springtravel.com');
insert into users (username, password, enabled) values ('user-967', 'cde84be2b3c6317eb8224c1ccfc19f64', true);
insert into authorities (username, authority) values ('user-967', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-967', 'first-name-967', 'last-name-967', 'first-name-967.last-name-967@springtravel.com');
insert into users (username, password, enabled) values ('user-968', '713465fa134cb3fa335686b015f78209', true);
insert into authorities (username, authority) values ('user-968', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-968', 'first-name-968', 'last-name-968', 'first-name-968.last-name-968@springtravel.com');
insert into users (username, password, enabled) values ('user-969', '3beda30ee5ec408122683a26f7a34215', true);
insert into authorities (username, authority) values ('user-969', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-969', 'first-name-969', 'last-name-969', 'first-name-969.last-name-969@springtravel.com');
insert into users (username, password, enabled) values ('user-970', 'e5c010d13404f134c2b0c1050f2a996a', true);
insert into authorities (username, authority) values ('user-970', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-970', 'first-name-970', 'last-name-970', 'first-name-970.last-name-970@springtravel.com');
insert into users (username, password, enabled) values ('user-971', 'd0d4a2f61c787f388233d23f1692efb6', true);
insert into authorities (username, authority) values ('user-971', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-971', 'first-name-971', 'last-name-971', 'first-name-971.last-name-971@springtravel.com');
insert into users (username, password, enabled) values ('user-972', 'dd9bd13128cb8231f4a531180d003995', true);
insert into authorities (username, authority) values ('user-972', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-972', 'first-name-972', 'last-name-972', 'first-name-972.last-name-972@springtravel.com');
insert into users (username, password, enabled) values ('user-973', 'ae0653b41551af0018538b1d6c773838', true);
insert into authorities (username, authority) values ('user-973', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-973', 'first-name-973', 'last-name-973', 'first-name-973.last-name-973@springtravel.com');
insert into users (username, password, enabled) values ('user-974', '44b6329347d4f38e66e62984e7c9c450', true);
insert into authorities (username, authority) values ('user-974', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-974', 'first-name-974', 'last-name-974', 'first-name-974.last-name-974@springtravel.com');
insert into users (username, password, enabled) values ('user-975', 'e57b2717812ba3be1cee7da298bbbe73', true);
insert into authorities (username, authority) values ('user-975', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-975', 'first-name-975', 'last-name-975', 'first-name-975.last-name-975@springtravel.com');
insert into users (username, password, enabled) values ('user-976', 'b3d26e80c253bfb5f5b66da2d51054c0', true);
insert into authorities (username, authority) values ('user-976', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-976', 'first-name-976', 'last-name-976', 'first-name-976.last-name-976@springtravel.com');
insert into users (username, password, enabled) values ('user-977', '91825fbd528701611e45451d9989e332', true);
insert into authorities (username, authority) values ('user-977', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-977', 'first-name-977', 'last-name-977', 'first-name-977.last-name-977@springtravel.com');
insert into users (username, password, enabled) values ('user-978', '3a40635a6a2224c1fdf0615d012f5fbc', true);
insert into authorities (username, authority) values ('user-978', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-978', 'first-name-978', 'last-name-978', 'first-name-978.last-name-978@springtravel.com');
insert into users (username, password, enabled) values ('user-979', 'cf75cf080354b523a5d1f8e11a63b585', true);
insert into authorities (username, authority) values ('user-979', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-979', 'first-name-979', 'last-name-979', 'first-name-979.last-name-979@springtravel.com');
insert into users (username, password, enabled) values ('user-980', 'd4f50eb94a5907248e41a2f78423bfe4', true);
insert into authorities (username, authority) values ('user-980', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-980', 'first-name-980', 'last-name-980', 'first-name-980.last-name-980@springtravel.com');
insert into users (username, password, enabled) values ('user-981', '038ef9f3f8310c9bb7269c6d69e71123', true);
insert into authorities (username, authority) values ('user-981', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-981', 'first-name-981', 'last-name-981', 'first-name-981.last-name-981@springtravel.com');
insert into users (username, password, enabled) values ('user-982', 'af7f0feac36744e559df1a5228a6ff5b', true);
insert into authorities (username, authority) values ('user-982', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-982', 'first-name-982', 'last-name-982', 'first-name-982.last-name-982@springtravel.com');
insert into users (username, password, enabled) values ('user-983', 'b095ccb8aaedc5b56b84155e7f9bdf92', true);
insert into authorities (username, authority) values ('user-983', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-983', 'first-name-983', 'last-name-983', 'first-name-983.last-name-983@springtravel.com');
insert into users (username, password, enabled) values ('user-984', 'd7dc8ff81af130c0c8e0c08594e66969', true);
insert into authorities (username, authority) values ('user-984', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-984', 'first-name-984', 'last-name-984', 'first-name-984.last-name-984@springtravel.com');
insert into users (username, password, enabled) values ('user-985', '53dc5159a40cde8ddcda517ce496299a', true);
insert into authorities (username, authority) values ('user-985', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-985', 'first-name-985', 'last-name-985', 'first-name-985.last-name-985@springtravel.com');
insert into users (username, password, enabled) values ('user-986', 'db51fe963756bf45fd4200a8783a47ab', true);
insert into authorities (username, authority) values ('user-986', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-986', 'first-name-986', 'last-name-986', 'first-name-986.last-name-986@springtravel.com');
insert into users (username, password, enabled) values ('user-987', '6667b9cb3bdcf216cd2764d5b97bf112', true);
insert into authorities (username, authority) values ('user-987', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-987', 'first-name-987', 'last-name-987', 'first-name-987.last-name-987@springtravel.com');
insert into users (username, password, enabled) values ('user-988', '89e47afd4603b0d03dff26e0c2210af8', true);
insert into authorities (username, authority) values ('user-988', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-988', 'first-name-988', 'last-name-988', 'first-name-988.last-name-988@springtravel.com');
insert into users (username, password, enabled) values ('user-989', 'ca2ed4ac2a23504f71fd7d89cb92ca70', true);
insert into authorities (username, authority) values ('user-989', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-989', 'first-name-989', 'last-name-989', 'first-name-989.last-name-989@springtravel.com');
insert into users (username, password, enabled) values ('user-990', 'f8faaf47f9c4495f4d6acbf05dc0d443', true);
insert into authorities (username, authority) values ('user-990', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-990', 'first-name-990', 'last-name-990', 'first-name-990.last-name-990@springtravel.com');
insert into users (username, password, enabled) values ('user-991', '9e6746d0a2ec45d687db449d6d177844', true);
insert into authorities (username, authority) values ('user-991', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-991', 'first-name-991', 'last-name-991', 'first-name-991.last-name-991@springtravel.com');
insert into users (username, password, enabled) values ('user-992', 'ad1439a7a2d522498b1e985f8264df91', true);
insert into authorities (username, authority) values ('user-992', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-992', 'first-name-992', 'last-name-992', 'first-name-992.last-name-992@springtravel.com');
insert into users (username, password, enabled) values ('user-993', '08e965b0b07da57c78a5589b59b1a412', true);
insert into authorities (username, authority) values ('user-993', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-993', 'first-name-993', 'last-name-993', 'first-name-993.last-name-993@springtravel.com');
insert into users (username, password, enabled) values ('user-994', '952989ef721d69f9f5b38a8692951ff8', true);
insert into authorities (username, authority) values ('user-994', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-994', 'first-name-994', 'last-name-994', 'first-name-994.last-name-994@springtravel.com');
insert into users (username, password, enabled) values ('user-995', '86a31ed155c0c9f554d707dd3fa32d20', true);
insert into authorities (username, authority) values ('user-995', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-995', 'first-name-995', 'last-name-995', 'first-name-995.last-name-995@springtravel.com');
insert into users (username, password, enabled) values ('user-996', '535c38c15ed443a5a869fc99095fb4a6', true);
insert into authorities (username, authority) values ('user-996', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-996', 'first-name-996', 'last-name-996', 'first-name-996.last-name-996@springtravel.com');
insert into users (username, password, enabled) values ('user-997', '38d54ca4ebe3fa05be2d0b99747862f9', true);
insert into authorities (username, authority) values ('user-997', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-997', 'first-name-997', 'last-name-997', 'first-name-997.last-name-997@springtravel.com');
insert into users (username, password, enabled) values ('user-998', 'a26e41c518702faa55d20a81f4f03d2a', true);
insert into authorities (username, authority) values ('user-998', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-998', 'first-name-998', 'last-name-998', 'first-name-998.last-name-998@springtravel.com');
insert into users (username, password, enabled) values ('user-999', '724fa57eb0a14c36eac91084c22e44d4', true);
insert into authorities (username, authority) values ('user-999', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-999', 'first-name-999', 'last-name-999', 'first-name-999.last-name-999@springtravel.com');
insert into users (username, password, enabled) values ('user-1000', 'dd815cee762c4607cb451ee18ca72abd', true);
insert into authorities (username, authority) values ('user-1000', 'ROLE_USER');
insert into Customer (username, first, last, email) values ('user-1000', 'first-name-1000', 'last-name-1000', 'first-name-1000.last-name-1000@springtravel.com');
