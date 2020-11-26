/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 10.1.35-MariaDB : Database - solvee_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`solvee_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `solvee_db`;

/*Table structure for table `admins` */

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) DEFAULT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admins` */

insert  into `admins`(`id`,`email`,`nomor_telepon`,`created_at`,`updated_at`) values 
(1,'admin@gmail.com','081237658943',NULL,NULL);

/*Table structure for table `akuns` */

DROP TABLE IF EXISTS `akuns`;

CREATE TABLE `akuns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `akuns` */

insert  into `akuns`(`id`,`username`,`password`,`status`,`role`,`created_at`,`updated_at`) values 
(1,'Ernike Nelsi Manurung','cantikks',1,'Masyarakat',NULL,'2020-04-15 02:30:04'),
(2,'Kecamatan Laguboti','laguboti',0,'Pemerintah',NULL,NULL),
(3,'Desa Sitoluama','sitoluama',0,'Pemerintah',NULL,NULL),
(4,'Admin','admin',0,'Admin',NULL,NULL),
(5,'Ernike','nabila',0,'Masyarakat','2020-04-14 13:45:59','2020-04-14 13:45:59'),
(6,'Ernikeee','nabila',0,'Masyarakat','2020-04-15 02:15:29','2020-04-15 02:15:29'),
(7,'Ernikeee','cantikks',1,'Masyarakat','2020-04-15 02:18:22','2020-04-15 02:18:22');

/*Table structure for table `kategori_pengaduan` */

DROP TABLE IF EXISTS `kategori_pengaduan`;

CREATE TABLE `kategori_pengaduan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kategori_pengaduan` */

insert  into `kategori_pengaduan`(`id`,`nama`) values 
(1,'Kebersihan');

/*Table structure for table `masyarakats` */

DROP TABLE IF EXISTS `masyarakats`;

CREATE TABLE `masyarakats` (
  `nik` bigint(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `alamat` varchar(200) NOT NULL,
  `nama_desa` varchar(50) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nik`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `masyarakats` */

insert  into `masyarakats`(`nik`,`nama`,`jenis_kelamin`,`alamat`,`nama_desa`,`email`,`nomor_telepon`,`created_at`,`updated_at`,`id`) values 
(121214748475,'Manurung','Perempuan','Jl. PI Del','Desa Sitoluama','nabila@gmail.com','081254765390','2020-04-15 02:27:43','2020-04-15 02:28:46',5),
(12121474847543,'Ernike','Perempuan','Jl. PI Del','Desa Sitoluama','nabila@gmail.com','081254765390','2020-04-15 02:27:20','2020-04-15 02:27:20',4),
(1212147483647543,'Nabila','Perempuan','Jl. PI Del','Desa Sitoluama','nabila@gmail.com','081254765390',NULL,NULL,1);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

/*Table structure for table `pemerintahs` */

DROP TABLE IF EXISTS `pemerintahs`;

CREATE TABLE `pemerintahs` (
  `id_pemerintah` varchar(10) NOT NULL,
  `nama_pemerintahan` varchar(100) NOT NULL,
  `nama_kepalapemerintah` varchar(50) NOT NULL,
  `alamat_kantorpemerintah` varchar(200) NOT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `id_tipepemerintah` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_pemerintah`),
  KEY `id_tipepemerintah` (`id_tipepemerintah`),
  KEY `id` (`id`),
  CONSTRAINT `id_tipepemerintah` FOREIGN KEY (`id_tipepemerintah`) REFERENCES `tipe_pemerintah` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `pemerintahs` */

insert  into `pemerintahs`(`id_pemerintah`,`nama_pemerintahan`,`nama_kepalapemerintah`,`alamat_kantorpemerintah`,`nomor_telepon`,`email`,`id_tipepemerintah`,`created_at`,`updated_at`,`id`) values 
('DS01','Desa Sitoluama','Roy Gunnnnn','Jl. PI Del','081254786532','desasitoluama@gmail.com','DS',NULL,'2020-04-15 02:31:27',1),
('KC01','Kecamatan Laguboti','Samuel B','jl. Sisingamangaraja','082154672314','keclaguboti@gmail.com','KC',NULL,NULL,2);

/*Table structure for table `pengaduans` */

DROP TABLE IF EXISTS `pengaduans`;

CREATE TABLE `pengaduans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal` date NOT NULL,
  `lokasi` varchar(200) NOT NULL,
  `nama_foto` varchar(50) NOT NULL,
  `status_pengaduan` varchar(20) DEFAULT NULL,
  `id_kategoripengaduan` int(11) NOT NULL,
  `sifat_pengaduan` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_kategoripengaduan` (`id_kategoripengaduan`),
  CONSTRAINT `id_kategoripengaduan` FOREIGN KEY (`id_kategoripengaduan`) REFERENCES `kategori_pengaduan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `pengaduans` */

insert  into `pengaduans`(`id`,`judul`,`deskripsi`,`tanggal`,`lokasi`,`nama_foto`,`status_pengaduan`,`id_kategoripengaduan`,`sifat_pengaduan`,`created_at`,`updated_at`) values 
(2,'Sampah Bertebaran','Di pinggiran jalan dekat rumah saya, sampah banyak bertebaran dan beterbangan oleh angin','2020-04-08','Sitoluama','kebersihan.jpg','Belum diproses',1,'Umum','2020-04-13 08:56:37','2020-04-13 08:56:37'),
(3,'Sampah Bertebaran','Di pinggiran jalan dekat rumah saya, sampah banyak bertebaran dan beterbangan oleh angin','2020-04-08','Sitoluama','kebersihan.jpg','Belum diproses',1,'Umum','2020-04-13 08:56:57','2020-04-13 08:56:57'),
(4,'S','Di pinggiran jalan dekat rumah saya, sampah banyak bertebaran dan beterbangan oleh angin','2020-04-08','Sitoluama','Kebersihan.jpg','Belum diproses',1,'Umum','2020-04-15 02:55:06','2020-04-15 02:55:06');

/*Table structure for table `tipe_pemerintah` */

DROP TABLE IF EXISTS `tipe_pemerintah`;

CREATE TABLE `tipe_pemerintah` (
  `id` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tipe_pemerintah` */

insert  into `tipe_pemerintah`(`id`,`nama`) values 
('DS','Desa'),
('KC','Kecamatan');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`username`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Ernike Nelsi Manurung','ernike','$2y$10$LLMUiEZj0oo.8TRwaKSgA.MNe7br4LMdnYcNdPFoA9qbzZ4Rm57aK','C8uGi1qlKxbgB8dBR7Kd4HqEIHQ8jMdrGZcjYM88ISFH0VU2PNcopi5fYMb7','2020-04-18 14:36:25','2020-04-18 14:36:25');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
