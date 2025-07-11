PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE utilisateurs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(255),
    email VARCHAR(255),
    date_inscription DATE
);
INSERT INTO utilisateurs VALUES(1,'Jean Dupont','jean@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(2,'Marie Durand','marie.durand@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(3,'Paul Martin','paul.martin@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(4,'Lucie Leroy','lucie.leroy@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(5,'Pierre Lefevre','pierre.lefevre@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(6,'Sophie Bernard','sophie.bernard@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(7,'Jacques Moreau','jacques.moreau@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(8,'Emma Thomas','emma.thomas@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(9,'Michel Robin','michel.robin@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(10,'Nathalie Richard','nathalie.richard@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(11,'André Lambert','andre.lambert@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(12,'Claire Lefevre','claire.lefevre@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(13,'Xavier Roux','xavier.roux@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(14,'Isabelle Morin','isabelle.morin@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(15,'François Blanchard','francois.blanchard@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(16,'Catherine Pires','catherine.pires@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(17,'Julien Dupuis','julien.dupuis@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(18,'Véronique Garcia','veronique.garcia@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(19,'David Lefevre','david.lefevre@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(20,'Monique Lefevre','monique.lefevre@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(21,'Robert Leclerc','robert.leclerc@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(22,'Chantal Girard','chantal.girard@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(23,'Alain Fournier','alain.fournier@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(24,'Denise Morel','denise.morel@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(25,'Louis Lambert','louis.lambert@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(26,'Sébastien Vidal','sebastien.vidal@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(27,'Marina Vasseur','marina.vasseur@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(28,'Nicolas Faure','nicolas.faure@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(29,'Florence Marchand','florence.marchand@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(30,'Gérard Hubert','gerard.hubert@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(31,'Martine Lemoine','martine.lemoine@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(32,'Thierry Leclerc','thierry.leclerc@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(33,'Bernadette Lefevre','bernadette.lefevre@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(34,'Dominique Cormier','dominique.cormier@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(35,'René Briand','rene.briand@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(36,'Annie Faye','annie.faye@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(37,'Jacqueline Pires','jacqueline.pires@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(38,'Bernard Lefevre','bernard.lefevre@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(39,'Ludivine Barbe','ludivine.barbe@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(40,'Patricia Duval','patricia.duval@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(41,'Michel Girard','michel.girard@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(42,'Géraldine Fouquet','geraldine.fouquet@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(43,'Aline Vidal','aline.vidal@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(44,'Claude Beaufort','claude.beaufort@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(45,'Lucie Roux','lucie.roux@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(46,'Éric Perrin','eric.perrin@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(47,'Benoît Charles','benoit.charles@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(48,'Catherine Roussel','catherine.roussel@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(49,'Christophe Lefevre','christophe.lefevre@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(50,'Thierry Duval','thierry.duval@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(51,'Françoise Barret','francoise.barret@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(52,'Lucia Lefevre','lucia.lefevre@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(53,'Alice Dupuis','alice.dupuis@example.com','2025-01-06');
INSERT INTO utilisateurs VALUES(54,'Michel Pires','michel.pires@example.com','2025-01-06');
CREATE TABLE commandes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ref VARCHAR(255),
    date DATE,
    montant DECIMAL(10,2),
    id_utilisateur INTEGER,
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateurs(id)
);
INSERT INTO commandes VALUES(1,'CMD001','2025-01-06',199.990000000000009,1);
INSERT INTO commandes VALUES(2,'CMD002','2025-01-06',49.99000000000000198,2);
INSERT INTO commandes VALUES(3,'CMD003','2025-01-06',150,3);
INSERT INTO commandes VALUES(4,'CMD004','2025-01-06',75.5,4);
INSERT INTO commandes VALUES(5,'CMD005','2025-01-06',200,5);
INSERT INTO commandes VALUES(6,'CMD006','2025-01-06',130.4499999999999887,6);
INSERT INTO commandes VALUES(7,'CMD007','2025-01-06',99.9899999999999949,7);
INSERT INTO commandes VALUES(8,'CMD008','2025-01-06',60,8);
INSERT INTO commandes VALUES(9,'CMD009','2025-01-06',80.90000000000000569,9);
INSERT INTO commandes VALUES(10,'CMD010','2025-01-06',125.2999999999999972,10);
INSERT INTO commandes VALUES(11,'CMD011','2025-01-06',300,11);
INSERT INTO commandes VALUES(12,'CMD012','2025-01-06',150.75,12);
INSERT INTO commandes VALUES(13,'CMD013','2025-01-06',89.98999999999999489,13);
INSERT INTO commandes VALUES(14,'CMD014','2025-01-06',45,14);
INSERT INTO commandes VALUES(15,'CMD015','2025-01-06',180.5,15);
INSERT INTO commandes VALUES(16,'CMD016','2025-01-06',110,16);
INSERT INTO commandes VALUES(17,'CMD017','2025-01-06',200.25,17);
INSERT INTO commandes VALUES(18,'CMD018','2025-01-06',75.90000000000000569,18);
INSERT INTO commandes VALUES(19,'CMD019','2025-01-06',145.5999999999999944,19);
INSERT INTO commandes VALUES(20,'CMD020','2025-01-06',250,20);
INSERT INTO commandes VALUES(21,'CMD021','2025-01-06',60.5,21);
INSERT INTO commandes VALUES(22,'CMD022','2025-01-06',190.3000000000000113,22);
INSERT INTO commandes VALUES(23,'CMD023','2025-01-06',80,23);
INSERT INTO commandes VALUES(24,'CMD024','2025-01-06',120.9000000000000056,24);
INSERT INTO commandes VALUES(25,'CMD025','2025-01-06',220.75,25);
INSERT INTO commandes VALUES(26,'CMD026','2025-01-06',30.98999999999999844,26);
INSERT INTO commandes VALUES(27,'CMD027','2025-01-06',140.5999999999999944,27);
INSERT INTO commandes VALUES(28,'CMD028','2025-01-06',90.29999999999999716,28);
INSERT INTO commandes VALUES(29,'CMD029','2025-01-06',200,29);
INSERT INTO commandes VALUES(30,'CMD030','2025-01-06',110,30);
INSERT INTO commandes VALUES(31,'CMD031','2025-01-06',80,31);
INSERT INTO commandes VALUES(32,'CMD032','2025-01-06',300,32);
INSERT INTO commandes VALUES(33,'CMD033','2025-01-06',175.9000000000000056,33);
INSERT INTO commandes VALUES(34,'CMD034','2025-01-06',55,34);
INSERT INTO commandes VALUES(35,'CMD035','2025-01-06',70,35);
INSERT INTO commandes VALUES(36,'CMD036','2025-01-06',160,36);
INSERT INTO commandes VALUES(37,'CMD037','2025-01-06',50.75,37);
INSERT INTO commandes VALUES(38,'CMD038','2025-01-06',40.5,38);
INSERT INTO commandes VALUES(39,'CMD039','2025-01-06',150,39);
INSERT INTO commandes VALUES(40,'CMD040','2025-01-06',110.5,40);
INSERT INTO commandes VALUES(41,'CMD041','2025-01-06',100.9899999999999949,41);
INSERT INTO commandes VALUES(42,'CMD042','2025-01-06',225.5999999999999944,42);
INSERT INTO commandes VALUES(43,'CMD043','2025-01-06',250,43);
INSERT INTO commandes VALUES(44,'CMD044','2025-01-06',60,44);
INSERT INTO commandes VALUES(45,'CMD045','2025-01-06',120.9000000000000056,45);
CREATE TABLE adresses_livraison (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    adresse VARCHAR(255),
    ville VARCHAR(255),
    code_postal VARCHAR(20),
    pays VARCHAR(255),
    id_utilisateur INTEGER,
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateurs(id)
);
INSERT INTO adresses_livraison VALUES(1,'10 Rue de Paris','Paris','75001','France',1);
INSERT INTO adresses_livraison VALUES(2,'22 Avenue des Champs-Élysées','Paris','75008','France',2);
INSERT INTO adresses_livraison VALUES(3,'5 Boulevard Saint-Germain','Paris','75005','France',3);
INSERT INTO adresses_livraison VALUES(4,'30 Rue de la République','Lyon','69001','France',4);
INSERT INTO adresses_livraison VALUES(5,'12 Rue des Martyrs','Paris','75009','France',5);
INSERT INTO adresses_livraison VALUES(6,'8 Place de la Concorde','Paris','75008','France',6);
INSERT INTO adresses_livraison VALUES(7,'14 Rue de la Gare','Marseille','13001','France',7);
INSERT INTO adresses_livraison VALUES(8,'33 Boulevard de la Liberté','Marseille','13003','France',8);
INSERT INTO adresses_livraison VALUES(9,'16 Rue de Bretagne','Lille','59000','France',9);
INSERT INTO adresses_livraison VALUES(10,'47 Avenue de la Mer','Nice','06000','France',10);
INSERT INTO adresses_livraison VALUES(11,'99 Rue de la Paix','Paris','75002','France',11);
INSERT INTO adresses_livraison VALUES(12,'54 Rue des Ternes','Paris','75017','France',12);
INSERT INTO adresses_livraison VALUES(13,'15 Rue des Lilas','Toulouse','31000','France',13);
INSERT INTO adresses_livraison VALUES(14,'10 Rue du Mont-Cenis','Lyon','69004','France',14);
INSERT INTO adresses_livraison VALUES(15,'23 Rue du Faubourg Saint-Antoine','Paris','75011','France',15);
INSERT INTO adresses_livraison VALUES(16,'21 Rue de la Plaine','Marseille','13010','France',16);
INSERT INTO adresses_livraison VALUES(17,'18 Rue du Chardonnet','Paris','75005','France',17);
INSERT INTO adresses_livraison VALUES(18,'5 Rue de la Victoire','Paris','75009','France',18);
INSERT INTO adresses_livraison VALUES(19,'12 Boulevard de Strasbourg','Paris','75010','France',19);
INSERT INTO adresses_livraison VALUES(20,'3 Rue de la Forêt','Bordeaux','33000','France',20);
INSERT INTO adresses_livraison VALUES(21,'77 Avenue de Paris','Nantes','44000','France',21);
INSERT INTO adresses_livraison VALUES(22,'10 Rue de l’Indépendance','Lyon','69002','France',22);
INSERT INTO adresses_livraison VALUES(23,'2 Rue des Acacias','Marseille','13006','France',23);
INSERT INTO adresses_livraison VALUES(24,'58 Boulevard Saint-Michel','Paris','75005','France',24);
INSERT INTO adresses_livraison VALUES(25,'29 Rue de la Fontaine','Lille','59000','France',25);
INSERT INTO adresses_livraison VALUES(26,'20 Rue des Écoles','Lyon','69007','France',26);
INSERT INTO adresses_livraison VALUES(27,'77 Rue des Rosiers','Paris','75003','France',27);
INSERT INTO adresses_livraison VALUES(28,'4 Rue de la Charité','Strasbourg','67000','France',28);
INSERT INTO adresses_livraison VALUES(29,'3 Rue des Aubépines','Marseille','13015','France',29);
INSERT INTO adresses_livraison VALUES(30,'14 Boulevard Victor Hugo','Paris','75016','France',30);
INSERT INTO adresses_livraison VALUES(31,'25 Rue de l’Ouest','Paris','75014','France',31);
INSERT INTO adresses_livraison VALUES(32,'8 Rue de la Lune','Lyon','69001','France',32);
INSERT INTO adresses_livraison VALUES(33,'40 Rue des Érables','Toulouse','31000','France',33);
INSERT INTO adresses_livraison VALUES(34,'62 Rue de la Gare','Nice','06000','France',34);
INSERT INTO adresses_livraison VALUES(35,'36 Boulevard des Filles du Calvaire','Paris','75003','France',35);
INSERT INTO adresses_livraison VALUES(36,'19 Rue de Saintonge','Paris','75003','France',36);
INSERT INTO adresses_livraison VALUES(37,'21 Avenue de la République','Marseille','13002','France',37);
INSERT INTO adresses_livraison VALUES(38,'32 Rue de la Seine','Paris','75006','France',38);
INSERT INTO adresses_livraison VALUES(39,'4 Rue de la Butte','Paris','75018','France',39);
INSERT INTO adresses_livraison VALUES(40,'51 Rue de la Boétie','Paris','75008','France',40);
INSERT INTO adresses_livraison VALUES(41,'28 Rue du Faubourg du Temple','Paris','75010','France',41);
INSERT INTO adresses_livraison VALUES(42,'11 Avenue des Lilas','Lyon','69003','France',42);
INSERT INTO adresses_livraison VALUES(43,'53 Boulevard de Magenta','Paris','75010','France',43);
INSERT INTO adresses_livraison VALUES(44,'26 Rue du Faubourg Saint-Denis','Paris','75010','France',44);
INSERT INTO adresses_livraison VALUES(45,'17 Rue du Val de Grâce','Paris','75005','France',45);
INSERT INTO adresses_livraison VALUES(46,'39 Rue de Charonne','Paris','75011','France',46);
INSERT INTO adresses_livraison VALUES(47,'56 Rue des Saints-Pères','Paris','75007','France',47);
INSERT INTO adresses_livraison VALUES(48,'18 Rue des Boulets','Paris','75011','France',48);
INSERT INTO adresses_livraison VALUES(49,'5 Boulevard de l’Indépendance','Marseille','13003','France',49);
INSERT INTO adresses_livraison VALUES(50,'10 Rue de la Chapelle','Paris','75018','France',50);
INSERT INTO sqlite_sequence VALUES('utilisateurs',54);
INSERT INTO sqlite_sequence VALUES('commandes',50);
INSERT INTO sqlite_sequence VALUES('adresses_livraison',50);
COMMIT;
