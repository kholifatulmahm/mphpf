-- Database : mphp_sample_db.sql
-- Script untuk Membuat Tabel Dosen

CREATE TABLE dosen(
    nip varchar(50) PRIMARY KEY,
    nama varchar(255),
    alamat text,
    prodi varchar(100),
    jurusan varchar(100),
    no_telp varchar(50))