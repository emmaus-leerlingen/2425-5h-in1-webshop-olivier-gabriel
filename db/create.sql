--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(40),
  description VARCHAR(255),
  brands_id INTEGER,
  engine_capacity INTEGER(4),
  construction_year INTEGER(4),
  categories_id INTEGER,
  price NUMERIC(10, 2),
  colors_id INTEGER,
  FOREIGN KEY (brands_id) REFERENCES brands(id),
  FOREIGN KEY (categories_id) REFERENCES categories(id),
  FOREIGN KEY (colors_id) REFERENCES colors(id)
);

CREATE TABLE categories (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(40)
);

CREATE TABLE brands (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  suppliers_id INTEGER,
  FOREIGN KEY (suppliers_id) REFERENCES suppliers(id)
);

CREATE TABLE suppliers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  address VARCHAR(30),
  phonenumber VARCHAR(12)
);

CREATE TABLE colors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(15)
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

insert into colors (name) values ('wit');
insert into colors (name) values ('donkerblauw');
insert into colors (name) values ('zwart');
insert into colors (name) values ('rood');
insert into colors (name) values ('geel');
insert into colors (name) values ('grijs');

insert into brands (code, name, suppliers_id) values ('pia', 'Piaggio', 1);
insert into brands (code, name, suppliers_id) values ('ves', 'Vespa', 2);
insert into brands (code, name, suppliers_id) values ('yam', 'Yamaha', 1);
insert into brands (code, name, suppliers_id) values ('gil', 'Gilera', 2);
insert into brands (code, name, suppliers_id) values ('las', 'La Souris', 1);
insert into brands (code, name, suppliers_id) values ('peu', 'Peugeot', 2);
insert into brands (code, name, suppliers_id) values ('bet', 'Beta', 1);
insert into brands (code, name, suppliers_id) values ('apr', 'Aprilia', 1);

insert into suppliers (code, name, address, phonenumber) values ('sup1', 'Bromselect Rdam', 'Weena 10', '010-2734232');
insert into suppliers (code, name, address, phonenumber) values ('sup2', 'Brommermans Adam', 'Spui 100', '020-8453487');

insert into products (code, name, description, brands_id, engine_capacity, categories_id, construction_year, price, colors_id) values ('piazip', 'Piaggio Zip', 'Stijlvol, compact, innovatief', 1, 50, 2, 2022, 2149.99, 1);
insert into products (code, name, description, brands_id, engine_capacity, categories_id, construction_year, price, colors_id) values ('piaski', 'Piaggio Skipper', ' Robuust, efficiënt, veelzijdig', 1, 125, 1, 2019, 1649.99, 2);
insert into products (code, name, description, brands_id, engine_capacity, categories_id, construction_year, price, colors_id) values ('vesspr', 'Vespa Sprint', ' Retro, luxe, iconisch', 2, 50, 2, 2023, 3199.99, 3);
insert into products (code, name, description, brands_id, engine_capacity, categories_id, construction_year, price, colors_id) values ('vespri', 'Vespa Primavera', 'Verfijnd, stijlvol, shic', 2, 50, 2, 2025, 3099.99, 4);
insert into products (code, name, description, brands_id, engine_capacity, categories_id, construction_year, price, colors_id) values ('yamaer', 'Yamaha Aerox', ' Krachtig, sportief, duurzaam', 3, 50, 1, 2020, 1999.99, 5);
insert into products (code, name, description, brands_id, engine_capacity, categories_id, construction_year, price, colors_id) values ('gilrun', 'Gilera Runner', 'Innovatief, krachtig, stijlvol', 4, 180, 1, 2021, 1449.99, 4);
insert into products (code, name, description, brands_id, engine_capacity, categories_id, construction_year, price, colors_id) values ('lasour', 'La Souris', 'Sportief, betrouwbaar, licht', 5, 50, 2, 2023, 2249.99, 3);
insert into products (code, name, description, brands_id, engine_capacity, categories_id, construction_year, price, colors_id) values ('peuspe', 'Peugeot Speedfight', 'Comfort, design, stevig', 6, 50, 2, 2021, 1849.99, 6);
insert into products (code, name, description, brands_id, engine_capacity, categories_id, construction_year, price, colors_id) values ('betarr', 'Beta RR50', 'Betrouwbaar, snel, populair', 7, 50, 1, 2024, 2589.99, 4);
insert into products (code, name, description, brands_id, engine_capacity, categories_id, construction_year, price, colors_id) values ('aprisr', 'Aprilia SR50', 'Prestatie, snel, technisch', 8, 50, 2, 2022, 2049.99, 1);

