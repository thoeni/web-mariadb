USE DBWEB;

CREATE TABLE `page`
(
  id VARCHAR(100) NOT NULL PRIMARY KEY,
  summary VARCHAR(500),
  content TEXT
);

INSERT INTO `page` (id, summary, content)
    VALUES ('index', 'This is the index', 'This is the content');