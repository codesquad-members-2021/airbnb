CREATE TABLE `user`
(
    user_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    github  VARCHAR(30) NOT NULL,
    host    BIT(1) DEFAULT 0,
    `admin` BIT(1) DEFAULT 0
);

CREATE TABLE place
(
    place_id                 BIGINT AUTO_INCREMENT PRIMARY KEY,
    place_name               VARCHAR(30)  NOT NULL,

    city                     VARCHAR(10)  NOT NULL,
    district                 VARCHAR(10)  NOT NULL,
    address1                 VARCHAR(20)  NOT NULL,
    address2                 VARCHAR(20)  NOT NULL,
    latitude                 DOUBLE       NOT NULL,
    longitude                DOUBLE       NOT NULL,

    star                     DOUBLE      DEFAULT 0,
    review_count             INT         DEFAULT 0,

    host_id                  BIGINT       NOT NULL,
    maximum_number_of_people INT          NOT NULL,
    description              VARCHAR(300) NOT NULL,
    price                    INT          NOT NULL,
    CONSTRAINT place_host FOREIGN KEY (host_id) REFERENCES user (user_id)
);

CREATE TABLE `option`
(
    place_id           BIGINT      NOT NULL,
    option_description VARCHAR(10) NOT NULL,
    option_count       INT         NOT NULL,
    CONSTRAINT place_has_option FOREIGN KEY (place_id) REFERENCES place (place_id)
);

CREATE TABLE additional_option
(
    place_id           BIGINT      NOT NULL,
    option_description VARCHAR(10) NOT NULL,
    CONSTRAINT place_has_additional_option FOREIGN KEY (place_id) REFERENCES place (place_id)
);

CREATE TABLE review
(
    review_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    place_id  BIGINT NOT NULL,
    CONSTRAINT place_review FOREIGN KEY (place_id) REFERENCES place (place_id)
);

CREATE TABLE reservation
(
    reservation_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    place_id       BIGINT NOT NULL,
    check_in       DATE   NOT NULL,
    check_out      DATE   NOT NULL,
    adult          INT    NOT NULL,
    child          INT    NOT NULL,
    infant         INT    NOT NULL,
    price          INT    NOT NULL,
    CONSTRAINT place_reserved FOREIGN KEY (place_id) REFERENCES place (place_id)
);
