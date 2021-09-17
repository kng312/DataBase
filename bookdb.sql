CREATE TABLE `bookdb`.`writer`
(
	`id`	VARCHAR(10)	NOT NULL PRIMARY KEY,
    `name`	VARCHAR(30)	NOT NULL,
    `addr`	VARCHAR(50)	,
    `phone`	VARCHAR(30)	NOT NULL,
    `Email`	VARCHAR(30)
);



CREATE TABLE `bookdb`.`book`
(
	`code`	VARCHAR(10)	NOT NULL PRIMARY KEY,
    `name`	VARCHAR(30)	NOT NULL,
    `price` INT	NOT NULL,
    `W_ID`	VARCHAR(10)	NOT NULL,book
    FOREIGN KEY(`W_ID`) REFERENCES writer(`id`)
);

INSERT INTO writer VALUES ('hgd', '홍길동', '서울', '010-1234-4321', 'abc@naver.com');
INSERT INTO writer VALUES ('lkj', '임꺽정', '인천', '010-4567-7654', 'def@naver.com');
INSERT INTO writer VALUES ('lss', '이순신', '경기', '010-8900-0098', 'ghi@naver.com');

INSERT INTO book VALUES ('1111', '신과함께1', 29000, 'hgd');
INSERT INTO book VALUES ('2222', '신과함께2', 28000, 'hgd');
INSERT INTO book VALUES ('3333', '신과함께3', 27000, 'hgd');
INSERT INTO book VALUES ('4444', '종의 기원', 18000, 'lkj');
