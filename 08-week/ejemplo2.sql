drop database if exists ciencia_datos;
CREATE DATABASE ciencia_datos;
use ciencia_datos;
CREATE TABLE cliente (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100),
    direccion VARCHAR(255),
    celular VARCHAR(15)
);

CREATE TABLE producto (
    codigo VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(100),
    stock INT,
    valor_unitario FLOAT,
    des_porcentaje FLOAT,
    inc_porcentaje FLOAT
);

CREATE TABLE factura (
    nit VARCHAR(20),
    nombre_empresa VARCHAR(100),
    fecha DATE,
    numero_factura VARCHAR(20) PRIMARY KEY,
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);

CREATE TABLE detalle_factura (
    id INT PRIMARY KEY,
    factura_id VARCHAR(20),
    producto_id VARCHAR(10),
    cantidad INT,
    sub_total FLOAT,
    FOREIGN KEY (factura_id) REFERENCES factura(numero_factura),
    FOREIGN KEY (producto_id) REFERENCES producto(codigo)
);

INSERT INTO cliente (id, nombre, correo, direccion, celular) VALUES
(1, 'Juan Perez', 'juan.perez@example.com', 'Calle 123', '3001234567'),
(2, 'Maria Gomez', 'maria.gomez@example.com', 'Carrera 45', '3002345678'),
(3, 'Carlos Ruiz', 'carlos.ruiz@example.com', 'Avenida 67', '3003456789'),
(4, 'Ana Torres', 'ana.torres@example.com', 'Calle 89', '3004567890'),
(5, 'Luis Martinez', 'luis.martinez@example.com', 'Carrera 12', '3005678901'),
(6, 'Sofia Lopez', 'sofia.lopez@example.com', 'Avenida 34', '3006789012'),
(7, 'Diego Ramirez', 'diego.ramirez@example.com', 'Calle 56', '3007890123'),
(8, 'Laura Sanchez', 'laura.sanchez@example.com', 'Carrera 78', '3008901234'),
(9, 'Jorge Castro', 'jorge.castro@example.com', 'Avenida 90', '3009012345'),
(10, 'Elena Vargas', 'elena.vargas@example.com', 'Calle 101', '3000123456');

INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('LVWAPVOF', 'Laptop Mini', 369, 808.9, 7.02, 11.67);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('PXP27QV0', 'Proyector Smart', 144, 985.79, 18.96, 2.81);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('31BZKEQL', 'Parlante Gamer', 453, 577.64, 1.75, 13.22);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('7EBBOFBZ', 'Parlante Mini', 113, 205.17, 19.85, 2.52);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('D4NJ6E83', 'Laptop Ultra', 237, 761.09, 8.8, 5.41);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('9WT0ZESK', 'Laptop Smart', 101, 715.29, 20.56, 7.07);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('0D6VVWUU', 'Monitor Mini', 219, 312.89, 5.41, 4.76);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('YPDG793X', 'Disco Duro HD', 293, 477.17, 8.31, 12.85);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('6KY5GYV3', 'Teclado HD', 146, 507.59, 26.13, 15.57);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('MT9XHPIT', 'Laptop Mini', 211, 432.25, 29.97, 0.93);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('53B8B6ZL', 'Parlante Smart', 176, 248.5, 9.57, 18.21);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('Z43EI5K0', 'Impresora Plus', 269, 482.17, 12.15, 15.19);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('AAO65IWP', 'Disco Duro Bluetooth', 391, 1331.55, 7.53, 1.32);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('ROY4PB04', 'Disco Duro HD', 341, 1440.57, 10.18, 6.97);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('911SMTG7', 'Tablet 4K', 275, 1154.56, 6.08, 13.96);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('D8I9R52Z', 'Mouse 4K', 430, 470.96, 2.14, 10.52);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('U197BTPK', 'Tablet Max', 346, 93.84, 14.61, 10.18);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('1V9NOCA0', 'Disco Duro Plus', 111, 388.44, 23.96, 5.44);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('PP4MVV37', 'Proyector Smart', 176, 564.49, 6.75, 17.0);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('H3UFOZO6', 'Teclado Mini', 221, 1118.44, 20.98, 10.97);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('MGIPIUAJ', 'Laptop Ultra', 390, 234.51, 26.54, 9.73);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('PZ6329V8', 'Teclado Ultra', 304, 278.5, 27.35, 11.65);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('9Z0I74MO', 'Proyector Max', 34, 154.78, 21.24, 1.83);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('M0J57Q70', 'Disco Duro Plus', 492, 240.61, 21.11, 9.74);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('FKTDAYLL', 'Teclado Pro', 229, 123.41, 4.32, 10.4);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('MF8L16CC', 'Monitor Max', 96, 1135.94, 20.49, 2.61);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('ZI32RSJB', 'Teclado Max', 134, 1053.32, 1.4, 18.02);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('NVU8TFBG', 'Laptop Pro', 186, 98.53, 16.49, 17.41);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('FYTU3SN6', 'Teclado Max', 9, 1016.89, 24.02, 12.93);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('JDPFJWRA', 'Tablet Max', 25, 939.21, 24.83, 4.22);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('EKDZEDWB', 'Parlante Mini', 93, 210.52, 23.11, 15.75);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('VE7EXKSZ', 'Laptop Plus', 482, 1087.85, 25.41, 11.07);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('WQQP4VN3', 'Parlante Gamer', 53, 803.91, 18.12, 10.41);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('IUT5VXV6', 'Teclado 4K', 306, 1005.85, 25.41, 3.93);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('TTUYZ7PS', 'Proyector 4K', 72, 535.86, 9.68, 8.51);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('WBH1SGMF', 'Cámara 4K', 497, 54.29, 29.33, 1.38);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('8Q0W75KV', 'Monitor Gamer', 241, 1450.75, 3.04, 1.96);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('49X5YB5D', 'Cámara Smart', 493, 273.36, 12.47, 3.9);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('BLFR3N3I', 'Proyector HD', 342, 479.52, 26.52, 16.74);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('KSS5F54H', 'Parlante Plus', 75, 202.81, 10.81, 6.8);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('EOK0YVYM', 'Impresora Mini', 442, 1195.92, 7.7, 6.64);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('7A22VAEK', 'Cámara Plus', 417, 1360.55, 8.77, 5.32);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('VR84JQQ8', 'Mouse 4K', 322, 1417.7, 29.14, 12.03);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('EWSWZSPL', 'Laptop Bluetooth', 159, 1029.48, 3.02, 7.32);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('Y3WVHNXN', 'Proyector Mini', 203, 1430.6, 13.07, 3.47);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('LJ3HKCKK', 'Laptop HD', 208, 1017.05, 4.0, 11.12);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('1J78O62Y', 'Impresora Bluetooth', 300, 398.59, 26.9, 11.9);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('GU5YK3QQ', 'Impresora HD', 426, 544.99, 13.03, 4.13);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('85L5U7DY', 'Disco Duro Ultra', 142, 656.26, 13.02, 13.29);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('UVIEGPLU', 'Disco Duro Bluetooth', 245, 762.65, 12.1, 4.16);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('EWS3P14G', 'Laptop Plus', 448, 561.14, 16.39, 3.4);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('MIBWUXLZ', 'Mouse Plus', 117, 487.86, 1.78, 15.59);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('NRZSAJ8V', 'Teclado Mini', 374, 182.58, 28.92, 15.81);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('DOFMCJ4V', 'Impresora Max', 364, 885.07, 5.93, 10.26);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('6H2ETIGR', 'Mouse Bluetooth', 63, 195.34, 3.96, 17.87);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('MYWLGP4E', 'Parlante Plus', 316, 1208.56, 5.91, 7.15);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('N5CD9C7G', 'Impresora 4K', 91, 1478.17, 27.76, 10.04);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('A50MKN8B', 'Monitor Max', 152, 702.84, 25.46, 5.13);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('BRHMF4BN', 'Teclado Gamer', 467, 224.8, 16.55, 19.24);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('P9HUDYIS', 'Disco Duro Bluetooth', 482, 215.11, 21.12, 8.95);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('8AQFSJWB', 'Cámara Gamer', 338, 239.54, 22.52, 3.8);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('63ECLX6W', 'Tablet Bluetooth', 129, 73.36, 11.11, 6.17);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('N9GBESCI', 'Mouse Gamer', 369, 632.6, 18.93, 5.83);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('RCZO63TH', 'Monitor Plus', 500, 789.65, 17.72, 14.95);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('OEXHS49S', 'Teclado Bluetooth', 256, 1077.85, 22.52, 16.41);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('PSYP1MRD', 'Mouse HD', 29, 343.89, 7.41, 9.84);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('4R9E8SPF', 'Cámara Smart', 176, 1291.48, 23.73, 0.37);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('28XBNZ9Z', 'Cámara Gamer', 475, 712.66, 13.21, 19.74);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('IOIRKDFO', 'Laptop 4K', 393, 1115.49, 17.13, 15.98);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('YQMJ8MBU', 'Laptop Bluetooth', 97, 132.3, 2.12, 6.47);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('HBE7KJ07', 'Laptop Smart', 188, 823.21, 9.21, 2.92);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('9KA2HU2A', 'Parlante Max', 388, 513.3, 26.8, 10.92);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('EYP0DMY4', 'Tablet 4K', 500, 1228.1, 4.84, 10.4);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('ANTMUJR3', 'Cámara HD', 1, 497.72, 27.92, 1.7);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('1JENY5FN', 'Disco Duro Smart', 282, 818.23, 19.64, 12.07);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('5SNNJNZA', 'Impresora Smart', 207, 511.91, 14.83, 11.44);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('7HO3UBST', 'Tablet Ultra', 56, 611.66, 0.24, 4.44);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('Z1BI3AOU', 'Tablet Plus', 3, 1000.01, 17.02, 18.76);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('KBPAH0G8', 'Tablet Ultra', 21, 499.84, 2.0, 9.22);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('6CJAPKSY', 'Tablet Max', 375, 857.66, 24.53, 12.25);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('Y36W1ZDG', 'Disco Duro Plus', 44, 539.73, 20.97, 15.27);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('ZB0WY3FE', 'Laptop 4K', 456, 245.05, 29.69, 14.67);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('PV4745ZP', 'Disco Duro Ultra', 102, 178.9, 13.39, 6.26);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('HF11UKQY', 'Laptop Plus', 254, 1150.69, 28.35, 3.8);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('8QRD1LV2', 'Monitor Max', 395, 1128.97, 28.81, 0.9);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('V09W0TK0', 'Cámara Mini', 312, 389.39, 13.77, 8.06);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('MWKHPHBD', 'Tablet 4K', 9, 180.31, 16.63, 13.06);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('N79O25ZI', 'Proyector 4K', 377, 1084.92, 1.54, 1.9);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('OJD1BNYR', 'Teclado Gamer', 354, 1439.49, 18.17, 15.39);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('UVY8VJ32', 'Proyector Ultra', 321, 1431.43, 11.02, 3.34);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('R6QG1KBN', 'Mouse Mini', 323, 784.6, 3.45, 11.55);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('PYAUYH5B', 'Teclado Mini', 290, 698.76, 0.43, 2.98);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('ACTK8AUT', 'Proyector Plus', 90, 434.52, 26.12, 18.72);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('W58229PG', 'Monitor Mini', 404, 372.9, 26.09, 3.04);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('CRJPNZWC', 'Disco Duro 4K', 8, 1048.22, 27.06, 0.14);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('HEO9R395', 'Proyector Plus', 428, 1265.25, 2.66, 13.78);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('Q4Z70D6Q', 'Proyector Bluetooth', 189, 1220.29, 4.43, 5.58);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('KHFTQ1OF', 'Proyector Bluetooth', 277, 593.71, 7.58, 5.34);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('MR17FQ1W', 'Disco Duro Max', 135, 114.38, 12.1, 5.92);
INSERT INTO producto (codigo, nombre, stock, valor_unitario, des_porcentaje, inc_porcentaje) VALUES ('Q3WUQAK8', 'Laptop Plus', 105, 522.1, 22.09, 9.75);

INSERT INTO factura (nit, nombre_empresa, fecha, numero_factura, cliente_id) VALUES ('962925057', 'Tecnología Global S.A.S', '2025-03-26', 'F-1000', 1);
INSERT INTO factura (nit, nombre_empresa, fecha, numero_factura, cliente_id) VALUES ('932355614', 'Inversiones Delta Ltda', '2025-02-27', 'F-1001', 2);
INSERT INTO factura (nit, nombre_empresa, fecha, numero_factura, cliente_id) VALUES ('927313209', 'Soluciones Sigma S.A.', '2025-02-28', 'F-1002', 3);
INSERT INTO factura (nit, nombre_empresa, fecha, numero_factura, cliente_id) VALUES ('846602156', 'Desarrollos Gamma S.A.S', '2025-03-24', 'F-1003', 4);
INSERT INTO factura (nit, nombre_empresa, fecha, numero_factura, cliente_id) VALUES ('992693653', 'Servicios Alfa Ltda', '2025-03-29', 'F-1004', 5);
INSERT INTO factura (nit, nombre_empresa, fecha, numero_factura, cliente_id) VALUES ('937063214', 'Redes Omega S.A.', '2025-02-28', 'F-1005', 6);
INSERT INTO factura (nit, nombre_empresa, fecha, numero_factura, cliente_id) VALUES ('935777130', 'Sistemas Beta S.A.S', '2025-03-19', 'F-1006', 7);
INSERT INTO factura (nit, nombre_empresa, fecha, numero_factura, cliente_id) VALUES ('829475496', 'Innovaciones Épsilon S.A.', '2025-03-15', 'F-1007', 8);
INSERT INTO factura (nit, nombre_empresa, fecha, numero_factura, cliente_id) VALUES ('997062149', 'Negocios Zeta Ltda', '2025-03-27', 'F-1008', 9);
INSERT INTO factura (nit, nombre_empresa, fecha, numero_factura, cliente_id) VALUES ('903238695', 'Corporación Lambda', '2025-03-04', 'F-1009', 10);

INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (1, 'F-1000', 'MYWLGP4E', 3, 3625.68);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (2, 'F-1000', 'DOFMCJ4V', 6, 5310.42);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (3, 'F-1000', '85L5U7DY', 3, 1968.78);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (4, 'F-1001', 'HBE7KJ07', 6, 4939.26);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (5, 'F-1001', 'MIBWUXLZ', 9, 4390.74);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (6, 'F-1001', '8QRD1LV2', 1, 1128.97);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (7, 'F-1002', 'UVY8VJ32', 6, 8588.58);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (8, 'F-1002', '9Z0I74MO', 3, 464.34);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (9, 'F-1002', 'ZB0WY3FE', 5, 1225.25);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (10, 'F-1003', '7A22VAEK', 2, 2721.1);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (11, 'F-1003', 'EWSWZSPL', 9, 9265.32);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (12, 'F-1003', 'PYAUYH5B', 10, 6987.6);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (13, 'F-1004', 'Z1BI3AOU', 5, 3330.05);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (14, 'F-1004', '9KA2HU2A', 8, 4106.4);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (15, 'F-1004', 'KBPAH0G8', 10, 4998.4);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (16, 'F-1005', 'N79O25ZI', 1, 1084.92);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (17, 'F-1005', 'Y36W1ZDG', 8, 4317.84);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (18, 'F-1005', 'KHFTQ1OF', 5, 2968.55);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (19, 'F-1006', 'UVY8VJ32', 10, 14314.3);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (20, 'F-1006', 'VE7EXKSZ', 10, 10878.5);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (21, 'F-1006', 'HF11UKQY', 4, 4602.76);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (22, 'F-1007', '7EBBOFBZ', 2, 410.34);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (23, 'F-1007', 'R6QG1KBN', 3, 2353.8);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (24, 'F-1007', '7A22VAEK', 10, 13605.5);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (25, 'F-1008', 'PP4MVV37', 10, 5644.9);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (26, 'F-1008', 'PXP27QV0', 5, 4928.95);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (27, 'F-1008', '9KA2HU2A', 8, 4106.4);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (28, 'F-1009', 'EOK0YVYM', 10, 11959.2);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (29, 'F-1009', 'R6QG1KBN', 8, 6276.8);
INSERT INTO detalle_factura (id, factura_id, producto_id, cantidad, sub_total) VALUES (30, 'F-1009', 'V09W0TK0', 1, 389.39);