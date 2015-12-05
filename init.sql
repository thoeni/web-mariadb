USE DBWEB;

CREATE TABLE `page`
(
  id VARCHAR(100) NOT NULL PRIMARY KEY,
  title VARCHAR(128),
  summary VARCHAR(500),
  content TEXT
);

CREATE TABLE `contact`
(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  type VARCHAR(10) NOT NULL,
  content VARCHAR(100) NOT NULL
);

INSERT INTO `page` (id, title, summary, content)
    VALUES ('index', 'This is the title', 'This is the summary', 'This is the content');

INSERT INTO `contact` (id, type, content)
    VALUES (1, 'EMAIL', 'antonio.troina@me.com'),
           (2, 'MOBILE', '+44(0)7428434808');