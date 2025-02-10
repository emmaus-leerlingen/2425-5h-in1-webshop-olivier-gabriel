--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('Piaggo Zip', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 80);
insert into products (name, description, code, price) values ('Vespa Sprint', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 160);
insert into products (name, description, code, price) values ('Vespa Primavera', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 320);
insert into products (name, description, code, price) values ('La souris, el pecador de la pradera', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 480);
insert into products (name, description, code, price) values ('Peugeot Speedfight, A (Almost a Bride)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 640);
insert into products (name, description, code, price) values ('Apprilia SR50', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 800);
insert into products (name, description, code, price) values ('Beta RR50', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 920);
insert into products (name, description, code, price) values ('Gilera Runner', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 1200);
insert into products (name, description, code, price) values ('Yamaha Aerox', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 1600);
insert into products (name, description, code, price) values ('Piaggo Skipper', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 2000);
