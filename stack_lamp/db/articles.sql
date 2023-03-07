CREATE DATABASE IF NOT EXISTS test CHARACTER SET utf8;
CREATE USER 'test'@'localhost' IDENTIFIED BY 'test';
GRANT ALL PRIVILEGES ON test.* TO 'test'@'localhost';


USE test;

CREATE TABLE IF NOT EXISTS articles (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    content TEXT NULL,
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO articles (title, author, content) VALUES
("Mon premier article", 'Moi!', "Ceci est mon premier article, il va parler de l'utilisation de Docker pour les debutants"),
("Docker pour les inities", 'Toujours moi!', "Ceci est la suite de mon premier article, il s'adresse a un publique ayant deja des connaissances sur Docker"),
("Docker pour les veterans", 'Devine !', "Ceci est mon dernier article, il s'adresse au gens ayant deja utilise Docker dans un contexte professionnel")
