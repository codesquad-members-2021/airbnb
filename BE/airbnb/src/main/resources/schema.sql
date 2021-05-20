DROP TABLE IF EXISTS `accommodation`;

CREATE TABLE IF NOT EXISTS `accommodation`
(
    id           BIGINT auto_increment primary key,
    title        varchar(64),
    reviewRating INT,
    reviewCount  INT,
    charge       INT,
    badge        varchar(64),
    image        varchar(64)
) DEFAULT CHARSET = utf8;

DESC accommodation;
