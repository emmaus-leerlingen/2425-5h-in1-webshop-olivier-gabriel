--
-- create tables
--


CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(40),
  description VARCHAR(255),
  brand_id INTEGER,
  engine_capacity INTEGER(4),
  construction_year INTEGER(4),
  categories_id INTEGER,
  price NUMERIC(10, 2),
  color VARCHAR(16),
  FOREIGN KEY (brand_id) REFERENCES brand(id),
  FOREIGN KEY (categories_id) REFERENCES categories(id)
);

CREATE TABLE categories (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(40)
);

CREATE TABLE brand (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  supplier_id INTEGER,
  FOREIGN KEY (supplier_id) REFERENCES supplier(id)
);

CREATE TABLE supplier (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  address VARCHAR(30),
  phonenumber VARCHAR(12)
);

CREATE TABLE orders (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  orderstatus_id INTEGER,
  FOREIGN KEY (orderstatus_id) REFERENCES orderstatus(id)

);

CREATE TABLE orderstatus (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  description VARCHAR(40)
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--


insert into categories (name) values ('tweetakt');
insert into categories (name) values ('viertakt');

insert into brand (code, name, supplier_id) values ('pia', 'Piaggio', 1);
insert into brand (code, name, supplier_id) values ('ves', 'Vespa', 2);
insert into brand (code, name, supplier_id) values ('yam', 'Yamaha', 1);
insert into brand (code, name, supplier_id) values ('gil', 'Gilera', 2);
insert into brand (code, name, supplier_id) values ('las', 'La Souris', 1);
insert into brand (code, name, supplier_id) values ('peu', 'Peugoat', 2);
insert into brand (code, name, supplier_id) values ('bet', 'Beta', 1);
insert into brand (code, name, supplier_id) values ('apr', 'Aprilia', 1);

insert into supplier (code, name, address, phonenumber) values ('sup1', 'Motoshop Rdam', 'Weena 10', '010-2734232');
insert into supplier (code, name, address, phonenumber) values ('sup2', 'Bromshop Adam', 'Spui 100', '020-8453487');

insert into products (code, name, description, brand_id, engine_capacity, categories_id, construction_year, price, color) values ('piazip', 'Piaggio Zip', 'Krachtig', 1, 50, 2, 2022, 2149.99, 'wit');
insert into products (code, name, description, brand_id, engine_capacity, categories_id, construction_year, price, color) values ('piaski', 'Piaggio Skipper', 'Krachtig', 1, 70, 1, 2019, 1649.99, 'donkerblauw');
insert into products (code, name, description, brand_id, engine_capacity, categories_id, construction_year, price, color) values ('vesspr', 'Vespa Sprint', 'Krachtig', 2, 50, 2, 2023, 3199.99, 'zwart');
insert into products (code, name, description, brand_id, engine_capacity, categories_id, construction_year, price, color) values ('vespri', 'Vespa Primavera', 'Krachtig', 2, 50, 2, 2025, 3099.99, 'rood');
insert into products (code, name, description, brand_id, engine_capacity, categories_id, construction_year, price, color) values ('yamaer', 'Yamaha Aerox', 'Krachtig', 3, 50, 1, 2020, 1999.99, 'lichtblauw');
insert into products (code, name, description, brand_id, engine_capacity, categories_id, construction_year, price, color) values ('gilrun', 'Gilera Runner', 'Heel rood', 4, 180, 1, 2021, 1449.99, 'rood');
insert into products (code, name, description, brand_id, engine_capacity, categories_id, construction_year, price, color) values ('lasour', 'La Souris', 'Krachtig', 5, 50, 2, 2023, 2249.99, 'zwart');
insert into products (code, name, description, brand_id, engine_capacity, categories_id, construction_year, price, color) values ('peuspe', 'Peugeot Speedfight', 'Krachtig', 6, 50, 2, 2021, 1849.99, 'grijs');
insert into products (code, name, description, brand_id, engine_capacity, categories_id, construction_year, price, color) values ('betarr', 'Beta RR50', 'Prachtig', 7, 50, 1, 2024, 2589.99, 'rood');
insert into products (code, name, description, brand_id, engine_capacity, categories_id, construction_year, price, color) values ('aprisr', 'Aprilia SR50', 'Krachtig', 8, 50, 2, 2022, 2049.99, 'wit');

