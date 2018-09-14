-- 14 Sep | First day of SQL

-- DB作成のコマンド。
CREATE DATABASE store;

-- 対象DBを選択するコマンド。授業では使用せず。
-- 今回はMWB(MysqlWorkBench)を使用しているので、サイドバーのSCHEMASに入っている一つのDBを選択した。
USE store;

-- storeの中にemployessというテーブルを作成。
CREATE TABLE employees(
    name VARCHAR(255),
    position VARCHAR(255),
    age INT(3),
    address VARCHAR(255)
);

-- storeの中にpersonsというテーブルを作成。DBは一つ、その中に複数のテーブル(employees,persons)があるという構造。
CREATE TABLE persons(
    name VARCHAR(255),
    position VARCHAR(255),
    age INT(3),
    address VARCHAR(255)
);

-- storeの中にあるテーブルを確認。
SHOW TABLES;

-- personsテーブルの中にデータを挿入します。
INSERT INTO persons(name, position, age, address) VALUES ("MASA", "CEO", 40, "JAPAN");

-- personsテーブルの中にある全てのデータを取得。
SELECT * FROM persons;

-- personsテーブルの中にあるデータのうち、nameがmasaのもののみを取得。WHERE以下にはデータを取得する際の条件を書く。
SELECT * FROM persons WHERE name="MASA";

-- 既存のテーブルにカラムを追加。
ALTER TABLE persons ADD contact_number INT(11);

-- productテーブルを作成。
CREATE TABLE products(
    id INT(8) AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20),
    price INT(5),
    quantity INT(5)
);

-- productsテーブルの詳細情報を確認。
DESCRIBE products;

-- productsテーブルにデータを追加。idに関してはauto_increment指定をしているので、新しいレコード(データ)が作成されるごとに自動的に追加されていく。
INSERT INTO products(name, price, quantity) VALUES("Chocolates", 100, 20);

-- カラム名を変えたい時。
ALTER TABLE products CHANGE price newprice INT(5);
ALTER TABLE products CHANGE newprice price INT(5);

-- カラム内の値を更新。
UPDATE products SET price=0 WHERE id=1;

-- レコードを削除したい時
DELETE FROM products WHERE id = 1;