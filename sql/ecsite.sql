SET names utf8;
SET foreign_key_checks=0;
DROP database IF EXISTS ecsite;
CREATE database IF NOT EXISTS ecsite;
use ecsite;

DROP TABLE IF EXISTS login_user_transaction;

CREATE TABLE login_user_transaction(
    id int NOT NULL PRIMARY KEY auto_increment,
    login_id varchar(16) UNIQUE,
    login_pass varchar(16),
    user_name varchar(50),
    insert_date datetime,
    updated_date datetime
);

DROP TABLE IF EXISTS item_info_transaction;

CREATE TABLE item_info_transaction(
    id int NOT NULL PRIMARY KEY auto_increment,
    item_name varchar(30),
    item_price int,
    item_stock int,
    insert_date datetime,
    update_date datetime
);

DROP TABLE IF EXISTS user_buy_item_transaction;

CREATE TABLE user_buy_item_transaction(
    id int NOT NULL PRIMARY KEY auto_increment,
    item_transaction_id int,
    total_price int,
    total_count int,
    user_master_id varchar(16),
    pay varchar(30),
    insert_date datetime,
    delete_date datetime
);

INSERT INTO item_info_transaction(item_name,item_price,item_stock) Values("ノートBook",100,50);

INSERT INTO login_user_transaction(login_id,login_pass,user_name) values("diworks","diworks01","test");