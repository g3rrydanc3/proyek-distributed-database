DIVISI)
    REFERENCES pegawai_divisi (KODE_DIVISI)
   )
;

-- -----------------------------------------------------
-- Table `message`
-- -----------------------------------------------------
CREATE TABLE message (
  KODE_MESSAGE NUMBER NOT NULL,
  KIRIM_KODE_DIVISI NUMBER NOT NULL,
  TERIMA_KODE_DIVISI NUMBER NOT NULL,
  WAKTU TIMESTAMP(0) NULL,
  SUBJECT VARCHAR2(50) NULL,
  PESAN VARCHAR2(200) NULL,
  PRIMARY KEY (KODE_MESSAGE)
 ,
  CONSTRAINT fk_message_pegawai_divisi1
    FOREIGN KEY (KIRIM_KODE_DIVISI)
    REFERENCES pegawai_divisi (KODE_DIVISI)
   ,
  CONSTRAINT fk_message_pegawai_divisi2
    FOREIGN KEY (TERIMA_KODE_DIVISI)
    REFERENCES pegawai_divisi (KODE_DIVISI)
   )
;


-- -----------------------------------------------------
-- Data for table `tipe_kamar`
-- -----------------------------------------------------
INSERT INTO tipe_kamar (TIPE_KAMAR, DESKRIPSI, ORANG) VALUES ('Standart', 'DESKRIPSI STANDART', 2);
INSERT INTO tipe_kamar (TIPE_KAMAR, DESKRIPSI, ORANG) VALUES ('Triple', 'DESKRIPSI TRIPLE', 3);
INSERT INTO tipe_kamar (TIPE_KAMAR, DESKRIPSI, ORANG) VALUES ('Suite', 'DESKRIPSI SUITE', 4);

-- -----------------------------------------------------
-- Data for table `kamar`
-- -----------------------------------------------------
INSERT INTO kamar (KODE_KAMAR, TIPE_KAMAR, CATATAN, HARGA_KAMAR) VALUES (101, 'Standart', 'Banyak Kecoak', 300000);
INSERT INTO kamar (KODE_KAMAR, TIPE_KAMAR, CATATAN, HARGA_KAMAR) VALUES (102, 'Standart', NULL, 400000);
INSERT INTO kamar (KODE_KAMAR, TIPE_KAMAR, CATATAN, HARGA_KAMAR) VALUES (103, 'Standart', 'Hujan Bocor', 250000);
INSERT INTO kamar (KODE_KAMAR, TIPE_KAMAR, CATATAN, HARGA_KAMAR) VALUES (104, 'Standart', NULL, 375000);
INSERT INTO kamar (KODE_KAMAR, TIPE_KAMAR, CATATAN, HARGA_KAMAR) VALUES (105, 'Standart', NULL, 360000);
INSERT INTO kamar (KODE_KAMAR, TIPE_KAMAR, CATATAN, HARGA_KAMAR) VALUES (201, 'Triple', NULL, 500000);
INSERT INTO kamar (KODE_KAMAR, TIPE_KAMAR, CATATAN, HARGA_KAMAR) VALUES (202, 'Triple', NULL, 550000);
INSERT INTO kamar (KODE_KAMAR, TIPE_KAMAR, CATATAN, HARGA_KAMAR) VALUES (203, 'Triple', NULL, 570000);
INSERT INTO kamar (KODE_KAMAR, TIPE_KAMAR, CATATAN, HARGA_KAMAR) VALUES (204, 'Suite', NULL, 800000);

-- -----------------------------------------------------
-- Data for table `hotel_hjual`
-- -----------------------------------------------------
INSERT INTO hotel_hjual (NOTA_HOTEL, NAMA_CUST, ALAMAT_CUST) VALUES (1, 'CUSTOMER 1', 'ALAMAT CUSTOMER 1');
INSERT INTO hotel_hjual (NOTA_HOTEL, NAMA_CUST, ALAMAT_CUST) VALUES (2, 'CUSTOMER 1', 'ALAMAT CUSTOMER 1');
INSERT INTO hotel_hjual (NOTA_HOTEL, NAMA_CUST, ALAMAT_CUST) VALUES (3, 'CUSTOMER 2', 'ALAMAT CUSTOMER 2');
INSERT INTO hotel_hjual (NOTA_HOTEL, NAMA_CUST, ALAMAT_CUST) VALUES (4, 'CUSTOMER 3', 'ALAMAT CUSTOMER 3');

-- -----------------------------------------------------
-- Data for table `hotel_djual`
-- -----------------------------------------------------
INSERT INTO hotel_djual (NOTA_HOTEL, KODE_KAMAR, TGL_IN, TGL_OUT) VALUES (1, 101, to_date('2017-05-15', 'YYYY-MM-DD'), to_date('2017-05-20', 'YYYY-MM-DD'));
INSERT INTO hotel_djual (NOTA_HOTEL, KODE_KAMAR, TGL_IN, TGL_OUT) VALUES (2, 101, to_date('2017-05-20', 'YYYY-MM-DD'), to_date('2017-05-22', 'YYYY-MM-DD'));
INSERT INTO hotel_djual (NOTA_HOTEL, KODE_KAMAR, TGL_IN, TGL_OUT) VALUES (3, 103, to_date('2017-05-12', 'YYYY-MM-DD'), to_date('2017-05-13', 'YYYY-MM-DD'));
INSERT INTO hotel_djual (NOTA_HOTEL, KODE_KAMAR, TGL_IN, TGL_OUT) VALUES (4, 104, to_date('2017-05-11', 'YYYY-MM-DD'), to_date('2017-05-13', 'YYYY-MM-DD'));

-- -----------------------------------------------------
-- Data for table `laundry_jenis`
-- -----------------------------------------------------
INSERT INTO laundry_jenis (KODE_LAUNDRY, JENIS_LAUNDRY, HARGA_LAUNDRY) VALUES (1, 'Cuci Basah', 5000);
INSERT INTO laundry_jenis (KODE_LAUNDRY, JENIS_LAUNDRY, HARGA_LAUNDRY) VALUES (2, 'Cuci Kering', 9000);
INSERT INTO laundry_jenis (KODE_LAUNDRY, JENIS_LAUNDRY, HARGA_LAUNDRY) VALUES (3, 'Setrika', 15000);

-- -----------------------------------------------------
-- Data for table `laundry_hjual`
-- -----------------------------------------------------
INSERT INTO laundry_hjual (NOTA_LAUNDRY, TGL_LAUNDRY, KODE_KAMAR) VALUES (1, to_date('2017-05-20', 'YYYY-MM-DD'), 101);
INSERT INTO laundry_hjual (NOTA_LAUNDRY, TGL_LAUNDRY, KODE_KAMAR) VALUES (2, to_date('2017-05-20', 'YYYY-MM-DD'), 102);

-- -----------------------------------------------------
-- Data for table `laundry_djual`
-- -----------------------------------------------------
INSERT INTO laundry_djual (NOTA_LAUNDRY, KODE_LAUNDRY, BERAT_LAUNDRY, SUDAH) VALUES (1, 1, 5, 0);
INSERT INTO laundry_djual (NOTA_LAUNDRY, KODE_LAUNDRY, BERAT_LAUNDRY, SUDAH) VALUES (1, 2, 4, 1);
INSERT INTO laundry_djual (NOTA_LAUNDRY, KODE_LAUNDRY, BERAT_LAUNDRY, SUDAH) VALUES (1, 3, 9, 0);
INSERT INTO laundry_djual (NOTA_LAUNDRY, KODE_LAUNDRY, BERAT_LAUNDRY, SUDAH) VALUES (2, 2, 5, 1);
INSERT INTO laundry_djual (NOTA_LAUNDRY, KODE_LAUNDRY, BERAT_LAUNDRY, SUDAH) VALUES (2, 3, 8, 0);

-- -----------------------------------------------------
-- Data for table `pegawai_divisi`
-- -----------------------------------------------------
INSERT INTO pegawai_divisi (KODE_DIVISI, NAMA_DIVISI, GAJI_DIVISI) VALUES (1, 'Receptionist', 500000);
INSERT INTO pegawai_divisi (KODE_DIVISI, NAMA_DIVISI, GAJI_DIVISI) VALUES (2, 'Restoran', 600000);
INSERT INTO pegawai_divisi (KODE_DIVISI, NAMA_DIVISI, GAJI_DIVISI) VALUES (3, 'Dapur', 400000);
INSERT INTO pegawai_divisi (KODE_DIVISI, NAMA_DIVISI, GAJI_DIVISI) VALUES (4, 'Laundry', 300000);
INSERT INTO pegawai_divisi (KODE_DIVISI, NAMA_DIVISI, GAJI_DIVISI) VALUES (5, 'HRD', 900000);

-- -----------------------------------------------------
-- Data for table `pegawai`
-- -----------------------------------------------------
INSERT INTO pegawai (KODE_PEG, KODE_DIVISI, NAMA_PEG, USERNAME, PASSWORD) VALUES (1, 1, 'Tukang Receptionist 1', 'receptionist1', 'pass');
INSERT INTO pegawai (KODE_PEG, KODE_DIVISI, NAMA_PEG, USERNAME, PASSWORD) VALUES (2, 1, 'Tukang Receptionist 2', 'receptionist2', 'pass');
INSERT INTO pegawai (KODE_PEG, KODE_DIVISI, NAMA_PEG, USERNAME, PASSWORD) VALUES (3, 2, 'Tukang Restoran 1', 'restoran1', 'pass');
INSERT INTO pegawai (KODE_PEG, KODE_DIVISI, NAMA_PEG, USERNAME, PASSWORD) VALUES (4, 2, 'Tukang Restoran 2', 'restoran2', 'pass');
INSERT INTO pegawai (KODE_PEG, KODE_DIVISI, NAMA_PEG, USERNAME, PASSWORD) VALUES (5, 3, 'Tukang Dapur 1', 'dapur1', 'pass');
INSERT INTO pegawai (KODE_PEG, KODE_DIVISI, NAMA_PEG, USERNAME, PASSWORD) VALUES (6, 3, 'Tukang Dapur 2', 'dapur2', 'pass');
INSERT INTO pegawai (KODE_PEG, KODE_DIVISI, NAMA_PEG, USERNAME, PASSWORD) VALUES (7, 4, 'Tukang Laundry 1', 'laundry1', 'pass');
INSERT INTO pegawai (KODE_PEG, KODE_DIVISI, NAMA_PEG, USERNAME, PASSWORD) VALUES (8, 4, 'Tukang Laundry 2', 'laundry2', 'pass');
INSERT INTO pegawai (KODE_PEG, KODE_DIVISI, NAMA_PEG, USERNAME, PASSWORD) VALUES (9, 5, 'Tukang HRD 1', 'hrd1', 'pass');
INSERT INTO pegawai (KODE_PEG, KODE_DIVISI, NAMA_PEG, USERNAME, PASSWORD) VALUES (10, 5, 'Tukang HRD 2', 'hrd2', 'pass');

-- -----------------------------------------------------
-- Data for table `penggajian`
-- -----------------------------------------------------
INSERT INTO penggajian (KODE_GAJI, KODE_PEG, TGL_GAJI, JUM_GAJI) VALUES (1, '1', to_date('2017-05-20', 'YYYY-MM-DD'), 60000);
INSERT INTO penggajian (KODE_GAJI, KODE_PEG, TGL_GAJI, JUM_GAJI) VALUES (2, '2', to_date('2017-05-20', 'YYYY-MM-DD'), 40000);

-- -----------------------------------------------------
-- Data for table `restoran_menu`
-- -----------------------------------------------------
INSERT INTO restoran_menu (KODE_MENU, JENIS_MENU, NAMA_MENU, HARGA_MENU, SOLDOUT) VALUES (1, 'Makanan', 'Makanan 1', 60000, 0);
INSERT INTO restoran_menu (KODE_MENU, JENIS_MENU, NAMA_MENU, HARGA_MENU, SOLDOUT) VALUES (2, 'Makanan', 'Makanan 2', 40000, 0);
INSERT INTO restoran_menu (KODE_MENU, JENIS_MENU, NAMA_MENU, HARGA_MENU, SOLDOUT) VALUES (3, 'Makanan', 'Makanan 3', 90000, 1);
INSERT INTO restoran_menu (KODE_MENU, JENIS_MENU, NAMA_MENU, HARGA_MENU, SOLDOUT) VALUES (4, 'Minuman', 'Minuman 1', 40000, 0);
INSERT INTO restoran_menu (KODE_MENU, JENIS_MENU, NAMA_MENU, HARGA_MENU, SOLDOUT) VALUES (5, 'Minuman', 'Minuman 2', 60000, 0);
INSERT INTO restoran_menu (KODE_MENU, JENIS_MENU, NAMA_MENU, HARGA_MENU, SOLDOUT) VALUES (6, 'Minuman', 'Minuman 3', 50000, 1);

-- -----------------------------------------------------
-- Data for table `restoran_hjual`
-- -----------------------------------------------------
INSERT INTO restoran_hjual (NOTA_RESTO, TGL_RESTO, KODE_KAMAR, MEJA) VALUES (1, to_date('2017-05-20', 'YYYY-MM-DD'), null, 1);
INSERT INTO restoran_hjual (NOTA_RESTO, TGL_RESTO, KODE_KAMAR, MEJA) VALUES (2, to_date('2017-05-20', 'YYYY-MM-DD'), 101, null);

-- -----------------------------------------------------
-- Data for table `restoran_djual`
-- -----------------------------------------------------
INSERT INTO restoran_djual (NOTA_RESTO, KODE_MENU, QUANTITY, SELESAI) VALUES (1, 1, 1, 1);
INSERT INTO restoran_djual (NOTA_RESTO, KODE_MENU, QUANTITY, SELESAI) VALUES (1, 2, 1, 1);
INSERT INTO restoran_djual (NOTA_RESTO, KODE_MENU, QUANTITY, SELESAI) VALUES (1, 5, 1, 1);
INSERT INTO restoran_djual (NOTA_RESTO, KODE_MENU, QUANTITY, SELESAI) VALUES (2, 1, 1, 0);
INSERT INTO restoran_djual (NOTA_RESTO, KODE_MENU, QUANTITY, SELESAI) VALUES (2, 5, 1, 0);
INSERT INTO restoran_djual (NOTA_RESTO, KODE_MENU, QUANTITY, SELESAI) VALUES (2, 4, 1, 0);

COMMIT;