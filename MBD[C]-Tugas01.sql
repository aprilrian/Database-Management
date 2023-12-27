CREATE database MBD1;
USE MBD1;

CREATE table kos(
kos_id INT primary key AUTO_INCREMENT,
nama_kos VARCHAR(50) not null,
nama_pemilik VARCHAR(50) not null,
lokasi VARCHAR(50) not null);

CREATE table mahasiswa(
nim INT primary key AUTO_INCREMENT,
nama_mahasiswa VARCHAR(50),
universitas_id INT not null,
kos_id INT not null,
FOREIGN KEY (kos_id) REFERENCES kos(kos_id),
FOREIGN KEY (universitas_id) REFERENCES universitas(universitas_id));

CREATE table universitas(
universitas_id INT primary key AUTO_INCREMENT,
nama_universitas VARCHAR(50) not null,
alamat VARCHAR(50) not null);

INSERT INTO kos(kos_id, nama_kos, nama_pemilik, lokasi)
VALUES 
(1, "Joko Kos", "Joko", "Mulawarman"),
(2, "Pele Kos", "Pele", "Bulusan"),
(3, "Yanto Kos", "Yanto", "Meteseh"),
(4, "Aksan Kos", "Aksan", "Gunung Pati"),
(5, "Santo Kos", "Santo", "Ungaran"),
(6, "Kimmich Kos", "Kimmich", "Mulawarman"),
(7, "Karim Kos", "Karim", "Tembalang"),
(8, "Albert Kos", "Albert", "Tembalang"),
(9, "Kante Kos", "Kante", "Pedurungan"),
(10, "Robert Kos", "Robert", "Banyumanik");

INSERT INTO mahasiswa (nim, nama_mahasiswa, universitas_id, kos_id)
VALUES
(11, "Nana", 7, 2),
(22, "Momo", 1, 4),
(33, "Lala", 3, 2),
(44, "Yaya", 1, 3),
(55, "Caca", 2, 5),
(66, "Rara", 3, 10),
(77, "Tata", 8, 3),
(88, "Kiki", 9, 10),
(99, "Rere", 10, 8),
(101, "Sasa", 4, 4);

INSERT INTO universitas(universitas_id, nama_universitas, alamat)
VALUES 
(10, "UNDIP", "Tembalang"),
(20, "UNNES", "Gunung Pati"),
(30, "UNISSULA", "Terboyo Kulon"),
(40, "UDINUS", "Pendrikan Kidul"),
(50, "Unika Soegijapranata", "Gajahmungkur"),
(60, "UNISBANK", "Semarang Selatan"),
(70, "UPGRIS", "Semarang Timur"),
(80, "UIN Walisongo", "Tambakaji"),
(90, "Unimus", "Tembalang"),
(100, "USM", "Tlogosari Kulon");

DELIMITER $$
CREATE PROCEDURE InfoUnivdanKosMahasiswa(IN nim INT)
BEGIN
  SELECT k.nama_kos, k.nama_pemilik, u.nama_universitas, u.alamat
  FROM mahasiswa m
  JOIN kos k ON m.kos_id = k.kos_id
  JOIN universitas u ON m.universitas_id = u.universitas_id
  WHERE m.nim = nim;
END $$
DELIMITER;

CALL InfoUnivdanKosMahasiswa(101);












