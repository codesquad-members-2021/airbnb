CREATE TABLE room
(
    room_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    room_name VARCHAR(30) NOT NULL,
    maximum_number_of_people INT NOT NULL
);
