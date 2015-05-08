CREATE DATABASE IF NOT EXISTS `ecologia` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecologia`;
CREATE TABLE Plante (id INT PRIMARY KEY NOT NULL,Nom VARCHAR(50) , Type VARCHAR(50), Saison VARCHAR(50), Climat VARCHAR(50), Image VARCHAR(50), Origine VARCHAR(50), Description VARCHAR(50), DateDebut VARCHAR(50), DateFin VARCHAR(50));

INSERT INTO Plante VALUES (1, 'Test', 'Test', 'Test', 'Test', './images/rose.jpg', 'Test', 'Test', '12/12', '12/02');