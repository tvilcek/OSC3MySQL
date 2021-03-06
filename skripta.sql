drop database mysqluvod;
create database mysqluvod character set utf8 collate = utf8_general_ci;
use mysqluvod;

create table operater (
sifra int not null primary key auto_increment,
ime varchar(250),
prezime varchar(250),
mail varchar(250),
lozinka char(32)
);

create table polaznik (
sifra int not null primary key auto_increment,
ime varchar(250),
prezime varchar(250),
mail varchar(250)
);

create table predavac (
sifra int not null primary key auto_increment,
ime varchar(250),
prezime varchar(250),
mail varchar(250)
);

create table radionica (
sifra int not null primary key auto_increment,
naziv varchar(250),
iznos decimal,
datum datetime,
lokacija varchar(250),
opis text,
predavac int
);


create table prijava (
polaznik int,
radionica int,
dolazak boolean
);


alter table radionica add foreign key (predavac) references predavac(sifra);
alter table prijava add foreign key (polaznik) references polaznik(sifra);
alter table prijava add foreign key (radionica) references radionica(sifra);

CREATE UNIQUE INDEX un_index
ON operater (sifra);

INSERT INTO operater (ime, prezime, mail, lozinka) VALUES
('Operater', 'Operater', 'aleh@ffos.hr', md5('lozinka'));

INSERT INTO polaznik (ime, prezime) VALUES
('Collier', 'Sheppard'),
('Hendricks', 'Baird'),
('Margarita', 'Brewer'),
('Anne', 'Lott'),
('Jodie', 'Dillon'),
('Potts', 'Stafford'),
('Sasha', 'Schneider'),
('Pratt', 'Byrd'),
('Slater', 'Blackburn'),
('Lynnette', 'Mcmahon'),
('Farrell', 'Houston'),
('Angel', 'Cantrell'),
('York', 'Perez'),
('Reyes', 'Hutchinson'),
('Anna', 'Shepherd'),
('Reva', 'Newman'),
('Moody', 'Diaz'),
('Salas', 'Garcia'),
('Jaclyn', 'Terrell'),
('Eugenia', 'Crane'),
('Frankie', 'Meyers'),
('Dominique', 'Turner'),
('Lela', 'Tillman'),
('Sharon', 'Thomas'),
('Mcclure', 'Riley'),
('Mandy', 'Oconnor'),
('Jean', 'Haley'),
('Mathis', 'Tyson'),
('Ada', 'Valentine'),
('Paula', 'Carson'),
('Marylou', 'Nixon'),
('Lilian', 'Bruce'),
('Finley', 'Deleon'),
('Carole', 'Velasquez'),
('Kinney', 'Hines'),
('Joseph', 'Swanson'),
('Sanders', 'Bond'),
('Karla', 'Bradford'),
('Burt', 'Bowers'),
('Amber', 'Doyle'),
('Selena', 'Snow'),
('Lorene', 'Dunlap'),
('Lakisha', 'Lindsay'),
('Candy', 'Langley'),
('Fulton', 'Kelly'),
('Angie', 'Garza'),
('Little', 'Estrada'),
('Carey', 'Ramos'),
('Sullivan', 'Contreras'),
('Karen', 'Sargent'),
('Collier', 'Sheppard'),
('Hendricks', 'Baird'),
('Margarita', 'Brewer'),
('Anne', 'Lott'),
('Jodie', 'Dillon'),
('Potts', 'Stafford'),
('Sasha', 'Schneider'),
('Pratt', 'Byrd'),
('Slater', 'Blackburn'),
('Lynnette', 'Mcmahon'),
('Farrell', 'Houston'),
('Angel', 'Cantrell'),
('York', 'Perez'),
('Reyes', 'Hutchinson'),
('Anna', 'Shepherd'),
('Reva', 'Newman'),
('Moody', 'Diaz'),
('Salas', 'Garcia'),
('Jaclyn', 'Terrell'),
('Eugenia', 'Crane'),
('Frankie', 'Meyers'),
('Dominique', 'Turner'),
('Lela', 'Tillman'),
('Sharon', 'Thomas'),
('Mcclure', 'Riley'),
('Mandy', 'Oconnor'),
('Jean', 'Haley'),
('Mathis', 'Tyson'),
('Ada', 'Valentine'),
('Paula', 'Carson'),
('Marylou', 'Nixon'),
('Lilian', 'Bruce'),
('Finley', 'Deleon'),
('Carole', 'Velasquez'),
('Kinney', 'Hines'),
('Joseph', 'Swanson'),
('Sanders', 'Bond'),
('Karla', 'Bradford'),
('Burt', 'Bowers'),
('Amber', 'Doyle'),
('Selena', 'Snow'),
('Lorene', 'Dunlap'),
('Lakisha', 'Lindsay'),
('Candy', 'Langley'),
('Fulton', 'Kelly'),
('Angie', 'Garza'),
('Little', 'Estrada'),
('Carey', 'Ramos'),
('Sullivan', 'Contreras'),
('Karen', 'Sargent'),
('Collier', 'Sheppard'),
('Hendricks', 'Baird'),
('Margarita', 'Brewer'),
('Anne', 'Lott'),
('Jodie', 'Dillon'),
('Potts', 'Stafford'),
('Sasha', 'Schneider'),
('Pratt', 'Byrd'),
('Slater', 'Blackburn'),
('Lynnette', 'Mcmahon'),
('Farrell', 'Houston'),
('Angel', 'Cantrell'),
('York', 'Perez'),
('Reyes', 'Hutchinson'),
('Anna', 'Shepherd'),
('Reva', 'Newman'),
('Moody', 'Diaz'),
('Salas', 'Garcia'),
('Jaclyn', 'Terrell'),
('Eugenia', 'Crane'),
('Frankie', 'Meyers'),
('Dominique', 'Turner'),
('Lela', 'Tillman'),
('Sharon', 'Thomas'),
('Mcclure', 'Riley'),
('Mandy', 'Oconnor'),
('Jean', 'Haley'),
('Mathis', 'Tyson'),
('Ada', 'Valentine'),
('Paula', 'Carson'),
('Marylou', 'Nixon'),
('Lilian', 'Bruce'),
('Finley', 'Deleon'),
('Carole', 'Velasquez'),
('Kinney', 'Hines'),
('Joseph', 'Swanson'),
('Sanders', 'Bond'),
('Karla', 'Bradford'),
('Burt', 'Bowers'),
('Amber', 'Doyle'),
('Selena', 'Snow'),
('Lorene', 'Dunlap'),
('Lakisha', 'Lindsay'),
('Candy', 'Langley'),
('Fulton', 'Kelly'),
('Angie', 'Garza'),
('Little', 'Estrada'),
('Carey', 'Ramos'),
('Sullivan', 'Contreras'),
('Karen', 'Sargent');

INSERT INTO predavac (ime, prezime, mail) VALUES 
('Dajana', 'Stojanović', 'dstojanovic@ffos.hr'),
('Tena', 'Vilček', 'tvilcek@ffos.hr'),
('Ana', 'Leh', 'aleh@ffos.hr'),
('Mihaela', 'Konjevod', 'konjevod@ffos.hr'),
('Aleksandra', 'Šarac', 'asarac@ffos.hr'),
('Aleksandra', 'Šarac', 'asarac@ffos.hr'),
('Antea', 'Eskeričić', 'aeskericic@ffos.hr'),
('Manuela', 'Mikulecki', 'mmikulecki@ffos.hr'),
('Marina', 'Dimić', 'mdimic@ffos.hr'),
('Tena', 'Kompar', 'tkompar@ffos.hr'),
('Zvonimir', 'Žulj', 'zzulj@ffos.hr'),
('Katarina', 'Paulić', 'kpaulic@ffos.hr');

INSERT INTO radionica (naziv, iznos, datum, lokacija, opis, predavac) VALUES
('Programiranje uz Clojure', 20, '2016-04-06', 'BIOS', 'Nakon upoznavanja s osnovnim podatkovnim strukturama i evaluacijom Clojure koda, nastavljamo sa opisom najčešćih funkcija u Clojureu, sekvencijalnoj obradi podataka, kao i korištenjem nepromjenjivih kolekcija koje se smatraju najvažnijom osobinom ovog jezika.', 5),
('Design Talks', 20, '2016-04-06', 'GISKO - American Corner', 'Prvi Design Talks je prošao vrlo uspješno. Nasmijana lica, mnoštvo sudionika te panelisti iz raznih tvrtki, svaki s drugim setom vještina i znanja razgovarali su o komunikaciji s klijentima te o procesu dizajna.', 6),
('Prvi Snapchat #Designton u Hrvatskoj', 30, '2016-04-02', 'COWORKING SPACE, PODUZETNIČKI INKUBATOR BIOS', 'Kreativci, ilustratori, dizajneri i svi vi koji se tako osjećate, spremite se na jedinstvenu radionicu u Osijeku. Prvu subotu u mjesecu travnju održati će se #Designton – posebna Snapchat radionica na kojoj će se osmišljavati geofilteri za razne hrvatske gradove.', 2),
('Android Talks 3 - Prvi spoj s Kotlinom', 40, '2016-03-18', 'CAFFE BAR PEPPERMINT', 'Nastavljamo s Android Talks okupljanjima, a ovaj put upoznajemo Kotlin – „novi“ programski jezik za JVM koji donosi zanimljive i korisne feature te drugačiju paradigmu u Java/Android razvoju. Što zapravo donosi, kako izgleda u akciji, kako stoji u usporedbi s Javom možete saznati na trećem Android Talks-u koji će se održati u petak, 18. ožujka 2016. u 17 sati.', 9),
('Uvod u Linux 12', 20, '2016-03-12', 'ETFOS (KAMPUS)', 'S obzirom da smo se do sada vrlo dobro upoznali s Linuxom, dolazimo do poglavlja u kojima će polaznici kroz znatno više praktičnih vježbi imati priliku doživjeti punu snagu i mogućnosti ovog operativnog sustava.', 1),
('Ovladajte drevnom vještinom programiranja uz Clojure', 20, '2016-03-09', 'BIOS', 'Clojure je moderan jezik koji se širi startupima u svijetu i koji se može izvoditi i na serveru i u pregledniku. Nema operator pridodjeljivanja (=), a popularizirao je izradu programa s nepromjenjivim podacima.', 3),
('Uvod u Linux 11', 20, '2016-03-05', 'ETFOS (KAMPUS)', 'S obzirom da smo se do sada vrlo dobro upoznali s Linuxom, dolazimo do poglavlja u kojima će polaznici kroz znatno više praktičnih vježbi imati priliku doživjeti punu snagu i mogućnosti ovog operativnog sustava.', 8), 
('Pyxie Dust', 30, '2016-03-04', 'COWORKING SPACE OSIJEK', 'Projekt Pyxie Dust je model koji tinejdžericama pruža inspiraciju i osnažuje ih da se obrazuju i razvijaju u STEM područjima (Science, Technology, Engineering, Mathematics).', 4),
('Dev Meetup Vinkovci', 20, '2016-02-26', 'COFFE HOUSE CHARLIE', 'Iz Vinkovaca ste i zanima vas svijet developmenta ili već dugo plivate u njegovim vodama? Odlično! Pridružite nam se u Coffe houseu “Charlie” na prvom “Dev Meetup Vinkovci”.', 7),
('iOS Talks 1 - Swift u praksi', 40, '2016-02-26', 'CAFFE BAR PEPPERMINT', 'Već duže vrijeme polaznici CodeCAMP-a u svojim anketama iskazuju interes za sadržaje vezane uz iOS development. Imali smo ih malo u prethodnim godinama, ali toj nestašici dolazi kraj.', 10),
('Design Talks: Proces dizajna i komunikacija s klijentom', 10, '2016-02-24', 'CAFFE BAR PEPPERMINT', 'U srijedu, 24. veljače 2016. godine u 17 h u prostorijama Caffe Bara Peppermint održat će se prvi po redu Design Talks, novi projekt naše udruge pokrenut s ciljem aktivnijeg okupljanja zajednice dizajnera kako bi radili na razmjeni iskustava, vještina i znanja te pružili uvid u stvarne izazove s kojima se susreću u praktičnom radu.', 12);


INSERT INTO radionica (naziv, iznos, datum, lokacija, opis) VALUES
('Android Talks 2 - Data Binding', 20, '2016-02-19', 'CAFFE BAR PEPPERMINT', 'Nakon izrazito uspješnog Android Talks okupljanja u siječnju, dobru praksu nastavljamo i dalje. Hvala svima na komentarima iz ispunjenih anketa. Neke ćemo savjete primijeniti u ovom događaju.'),
('Uvod u Linux 10', 20, '2016-01-30', 'ETFOS (KAMPUS)', 'S jubilarnom desetom “Uvod u Linux” radionicom krećemo u 2016. S obzirom da smo se do sada vrlo dobro upoznali s Linuxom, dolazimo do poglavlja u kojima će polaznici kroz znatno više praktičnih vježbi imati priliku doživjeti punu snagu i mogućnosti ovog operativnog sustava.');

INSERT INTO prijava (polaznik, radionica, dolazak) VALUES 
(35, 9, 0),
(25, 3, 1),
(98, 4, 0),
(53, 8, 1),
(21, 11, 1),
(69, 5, 0),
(36, 6, 1),
(52, 8, 1),
(8, 9, 0),
(48, 10, 1),
(68, 4, 1),
(54, 1, 1),
(55, 2, 1),
(56, 3, 1),
(57, 4, 1),
(58, 6, 1),
(59, 7, 1),
(60, 8, 1),
(61, 9, 0),
(62, 10, 1),
(63, 11, 1),
(64, 12, 0),
(65, 13, 1),
(1, 13, 1),
(2, 12, 0),
(3, 11, 1),
(4, 10, 1),
(5, 9, 0),
(6, 8, 1),
(7, 7, 0),
(8, 6, 1),
(9, 5, 1),
(10, 4, 1),
(11, 3, 0),
(12, 2, 1),
(13, 1, 1),
(14, 1, 1),
(15, 2, 1),
(16, 3, 0),
(17, 4, 1),
(18, 5, 1),
(19, 6, 0),
(20, 7, 1),
(21, 8, 0),
(22, 9, 1),
(23, 10, 1),
(24, 11, 1),
(25, 12, 1),
(26, 13, 1),
(27, 13, 1),
(28, 12, 1),
(29, 11, 1),
(30, 10, 1),
(31, 9, 1),
(32, 8, 0),
(33, 7, 0),
(34, 6, 0),
(35, 5, 1),
(36, 4, 1),
(39, 1, 1),
(37, 3, 1),
(38, 2, 1);