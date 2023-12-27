USE responsi

INSERT INTO PRODUK (NoProduk, NamaProduk, Kategori, Warna, Stok, StokMin, HargaPokok, HargaJual)
VALUES 
    (1, 'Baju T-Shirt', 'Pakaian', 'Merah', 50, 10, 100000, 150000),
    (2, 'Sepatu Sneakers', 'Sepatu', 'Hitam', 20, 5, 250000, 400000),
    (3, 'Jam Tangan', 'Aksesoris', 'Silver', 30, 8, 300000, 500000),
    (4, 'Celana Jeans', 'Pakaian', 'Biru', 40, 15, 150000, 250000),
    (5, 'Tas Ransel', 'Aksesoris', 'Hitam', 15, 3, 200000, 350000);

INSERT INTO JUAL (NoFaktur, NoProduk, TglFaktur, Jumlah)
VALUES 
    (1, 1, '2023-06-08', 5),
    (2, 2, '2023-06-08', 3),
    (3, 5, '2023-06-09', 2),
    (4, 3, '2023-06-09', 1),
    (5, 4, '2023-06-10', 4);
