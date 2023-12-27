CREATE TRIGGER 3hitung_total_harga10
AFTER UPDATE ON [Order]
FOR EACH ROW
BEGIN
    DECLARE jumlah_tiket INT;
    DECLARE harga_tiket DECIMAL(10, 2);
    DECLARE total_harga DECIMAL(10, 2);

    SELECT NEW.`Jumlah tiket`, t.`Harga` INTO jumlah_tiket, harga_tiket
    FROM [Order] AS o
    INNER JOIN Tiket AS t ON o.`ID Pesanan` = t.`ID tiket`
    WHERE o.`ID Pesanan` = NEW.`ID Pesanan`;

    SET total_harga = jumlah_tiket * harga_tiket;

    UPDATE [Order]
    SET `Total Harga` = total_harga
    WHERE `ID Pesanan` = NEW.`ID Pesanan`;
END;
