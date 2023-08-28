create database proj;
use proj;

CREATE TABLE reservation (
  reid varchar(255) NOT NULL,
  name varchar(255) NOT NULL,
  address varchar(255) NOT NULL,
  mobile int(11) NOT NULL,
  checkin varchar(255) NOT NULL,
  checkout varchar(255) NOT NULL,
  bedtype varchar(255) NOT NULL,
  roomno varchar(255) NOT NULL,
  rtype varchar(255) NOT NULL,
  amount int(11) NOT NULL
) ;

select * from reservation;

INSERT INTO `reservation` (`reid`, `name`, `address`, `mobile`, `checkin`, `checkout`, `bedtype`, `roomno`, `rtype`, `amount`) VALUES
('RE001', 'John', 'Channai India', 3435345, '2019-10-01', '2019-10-02', 'Double', 'R0002', 'A/C', 10000),
('RE002', 'Kishan', 'Madras India', 342432, '2019-10-01', '2019-10-02', 'Single', 'R0001', 'A/C', 10000);


CREATE TABLE room (
  rid varchar(255) NOT NULL,
  rtype varchar(255) NOT NULL,
  btype varchar(255) NOT NULL,
  amount int(11) NOT NULL
) ;

INSERT INTO room VALUES
('R0001', 'A/C', 'Single', 10000),
('R0002', 'A/C', 'Double', 10000);

select * from room;

CREATE TABLE user (
  uid int(11) NOT NULL,
  name varchar(255) NOT NULL,
  username varchar(255) NOT NULL,
  password varchar(255) NOT NULL
);

INSERT INTO user VALUES
(1, 'Peter', 'admin', '123'),
(2, 'sathis', 'neel', '123'),
(3, 'Ravi', 'ravi', '123');

select * from user;

ALTER TABLE user
  MODIFY column `uid` int(11) primary key NOT NULL AUTO_INCREMENT;
  
  describe user;
