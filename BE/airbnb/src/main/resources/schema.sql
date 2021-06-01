ALTER DATABASE `airbnb` DEFAULT CHARACTER SET utf8;
DROP TABLE IF EXISTS `accommodation`;

CREATE TABLE IF NOT EXISTS `accommodation`
(
    id           BIGINT auto_increment primary key,
    title        varchar(64),
    reviewRating decimal(10,5),
    reviewCount  INT,
    charge       INT,
    badge        varchar(64),
    `options`    varchar(640),
    image        varchar(300),
    isLike       TINYINT(1),
    `latitude`     DOUBLE(20,15),
    `longitude`    DOUBLE(20,15)
) DEFAULT CHARSET = utf8;

DESC accommodation;
