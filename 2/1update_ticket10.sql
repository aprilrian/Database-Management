CREATE TRIGGER 1update_tiket10
AFTER INSERT ON [Order]
FOR EACH ROW
BEGIN
    DECLARE jumlah_pesanan INT;
    DECLARE id_tiket INT;

    SELECT NEW.`Jumlah tiket`, NEW.`ID Pesanan` INTO jumlah_pesanan, id_tiket FROM [Order];

    UPDATE Tiket
    SET Stock = Stock - jumlah_pesanan
    WHERE `ID tiket` = id_tiket;
END;
