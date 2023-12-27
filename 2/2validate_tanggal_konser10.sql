CREATE TRIGGER 2validate_tanggal_konser10
BEFORE INSERT ON Konser
FOR EACH ROW
BEGIN
    DECLARE tanggal_konser DATE;
    DECLARE waktu_konser TIME;

    SELECT NEW.Tanggal, NEW.Waktu INTO tanggal_konser, waktu_konser FROM Konser;

    IF tanggal_konser < CURDATE() THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tanggal konser tidak valid. Tanggal konser harus setelah tanggal hari ini.';
    END IF;
END;
