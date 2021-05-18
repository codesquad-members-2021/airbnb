CREATE TABLE place
(
    place_id                 BIGINT AUTO_INCREMENT PRIMARY KEY,
    place_name               VARCHAR(30) NOT NULL,
    maximum_number_of_people INT         NOT NULL
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
    CONSTRAINT place_reserved FOREIGN KEY place_id REFERENCES place(place_id) ON DELETE CASCADE
);
