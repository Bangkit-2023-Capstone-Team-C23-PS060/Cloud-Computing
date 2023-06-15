-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: 34.101.41.87
-- Generation Time: 15 Jun 2023 pada 07.23
-- Versi Server: 8.0.26-google
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elektronio`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `article`
--

CREATE TABLE `article` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `Url_Images` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `article`
--

INSERT INTO `article` (`id`, `title`, `date`, `description`, `Url_Images`) VALUES
(1, 'Arduino Programming for Beginners: Traffic Light Controller Project Tutorial', 'December 7, 2019', 'Lampu lalu lintas Arduino adalah proyek kecil yang menyenangkan yang dapat Anda bangun dalam waktu kurang dari satu jam. Berikut adalah cara membangunnya sendiri menggunakan Arduino, dan bagaimana mengubah rangkaian untuk variasi yang lebih canggih. \r\n\r\nHampir semua jenis Arduino dapat digunakan untuk proyek ini, asalkan memiliki cukup pin. Pastikan Anda membaca panduan pembelian Arduino kami jika Anda tidak yakin model yang Anda butuhkan. Anda mungkin sudah memiliki bagian-bagian ini dalam kit pemula Arduino Anda.', 'https://storage.googleapis.com/article_images1/Arduino-Traffic-Light-Featured%20(1).jpg'),
(2, 'HealthyPi 5 - The New Opensource Tool for Bio Signal Acquisition', 'June 1,2023', 'ProtoCentral, sebuah perusahaan yang berbasis di India, telah meluncurkan Healthy Pi 5, sebuah papan akuisisi data sumber terbuka yang dirancang untuk menangkap dan menampilkan data kesehatan dan bio. Dengan fitur-fitur seperti EKG, pemantauan pernapasan, PPG, SpO₂, dan pengukuran suhu tubuh, papan ini menawarkan fungsionalitas yang luar biasa. Ini dapat digunakan sebagai perangkat mandiri atau terhubung ke Raspberry Pi melalui konektor 40-pin. Mikrokontroler RP2040, dukungan WiFi dan Bluetooth dari modul ESP32 C3, dan beberapa ujung depan analog menjadikannya solusi serbaguna.\r\n\r\nUntuk memperluas kemampuan perangkat, pengguna dapat memanfaatkan konektor Qwiic, yang kompatibel dengan berbagai macam sensor berbasis I2C dan perangkat lainnya. Board ini juga dilengkapi soket kartu Micro SD untuk pencatatan data yang nyaman. Sebagai alternatif, pengguna dapat memilih untuk melakukan streaming data secara real-time menggunakan sistem Lab Streaming Layer, yang merupakan solusi open-source. ProtoCentral telah memperhitungkan kebutuhan untuk ekspansi dan menawarkan beberapa add-on. Sebagai contoh, papan Carrier menyediakan lima konektor Qwiic dan menggabungkan isolasi daya dan USB. Pilihan lainnya adalah Layar TFT 3,5 inci 480x320 yang dilengkapi dengan sakelar navigasi tiga arah. Selain itu, pengguna dapat memilih dari berbagai pilihan perangkat lunak untuk meningkatkan pengalaman mereka. ProtoCentral telah membuat perangkat keras dan perangkat lunaknya menjadi open source, dan Healthy Pi 5 tersedia melalui Crowd Supply, mulai dari $ 275 untuk satu paket lengkap.', 'https://storage.googleapis.com/article_images1/Healthy-Pi-5.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komponen`
--

CREATE TABLE `komponen` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `function` text NOT NULL,
  `Url_Images` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `komponen`
--

INSERT INTO `komponen` (`id`, `name`, `description`, `function`, `Url_Images`) VALUES
(1, 'Resistor', 'Resistor merupakan salah satu komponen yang paling sering ditemukan dalam Rangkaian Elektronika. Hampir setiap peralatan Elektronika menggunakannya. Pada dasarnya Resistor adalah komponen Elektronika Pasif yang memiliki nilai resistansi atau hambatan tertentu yang berfungsi untuk membatasi dan mengatur arus listrik dalam suatu rangkaian Elektronika. Resistor atau dalam bahasa Indonesia sering disebut dengan Hambatan atau Tahanan dan biasanya disingkat dengan Huruf “R”. Satuan Hambatan atau Resistansi Resistor adalah OHM (Ω). Sebutan “OHM” ini diambil dari nama penemunya yaitu Georg Simon Ohm yang juga merupakan seorang Fisikawan Jerman.', 'Sebagai Pembatas Arus listrik, Sebagai Pengatur Arus listrik, Sebagai Pembagi Tegangan listrik, Sebagai Penurun Tegangan listrik', 'https://storage.googleapis.com/componen_images/resistor.jpg'),
(2, 'Capasitor', 'Sebuah benda yang dapat menyimpan muatan listrik. Benda ini terdiri dari dua pelat konduktor yang dipasang berdekatan satu sama lain tapi tidak sampai bersentuhan. Benda ini dapat menyimpan tenaga listrik dan dapat menyalurkannya kembali, kegunaannya dapat kamu temukan seperti pada lampu flash pada camera, juga banyak dipakai pada papan sirkuit elektrik pada komputer yang kamu pakai maupun pada berbagai peralatan elektronik.\r\n', 'Berperan sebagai isolator, dalam hal ini fungsi kapasitor adalah untuk memperlambat arus DC (arus searah), Fungsi kapasitor sebagai pembangkit frekuensi pada alat osilator, Kapasitor berfungsi untuk menyimpan tegangan dan kuat arus pada periode tertentu.', 'https://storage.googleapis.com/componen_images/Capacitor%20(4756).jpg'),
(3, 'Transformator \r\n', 'Peralatan listrik yang mengubah bentuk energi listrik menjadi suatu bentuk energi listrik yang lainnya. Tegangan listrik yang dihasilkan oleh transformator ditentukan oleh kebutuhan energi listrik.', 'Fungsi dari transformator adalah mengubah besaran listrik suatu rangkaian. Adapun besaran utama yang diubah oleh sebuah transformator adalah tegangan. Transformator berfungsi untuk menurunkan atau menaikkan tegangan listrik. ', 'https://storage.googleapis.com/componen_images/transformator.jpg'),
(4, 'Transistor ', 'Komponen semikonduktor yang memiliki banyak fungsi seperti penguat, pemutus, penyambung, stabilitas tegangan, dan modulasi sinyal. Komponen ini banyak digunakan dalam rangkaian-rangkaian elektronika.', 'Transistor dapat digunakan sebagai saklar. Sebab, transistor dapat mengatur bias dari satu transistor ke transisor lainnya. Transistor harus dibiaskan tegangannya pada basis secara konstan. Ini dilakukan agar emitor keluar dengan besaran tegangan yang tetap. ', 'https://storage.googleapis.com/componen_images/transistor.jpg'),
(5, 'Ic', 'Integrated circuit berfungsi sebagai gerbang logika yang bertugas untuk mengendalikan sebuah rangkaian. Ketika menggunakan IC, maka perangkat elektronik akan memiliki bentuk yang mungil atau portabel. Inilah mengapa tampilannya bisa menjadi lebih ringkas, praktis dan lebih modern.', 'IC terbagi menjadi tiga \r\n-IC Linier ini juga dikenal dengan istilah Integrated Circuit Analog. IC linear ini ternyata hanya bisa beroperasi pada sinyal yang berbentuk gelombang yang sifatnya kontinyu.\r\n-IC digital merupakan jenis IC yang populer penggunaannya pada peralatan elektronik terbaru. Misalnya saja IC yang tertanam dalam kalkulator, smartphone maupun laptop.\r\nMixed IC adalah jenis IC yang terdiri dari gabungan antara jenis IC analog dan -IC digital. Fungsi utama dari Mixed IC adalah untuk melakukan konversi dari sinyal analog menjadi sinyak digital maupun sebaliknya.', 'https://storage.googleapis.com/componen_images/IC.jpg'),
(6, 'Arduino Uno', 'Arduino Uno adalah salah satu dari sekian jenis produk dari keluarga arduino yang papan elektroniknya memiliki mikrokontroler ATMega 328.', 'Fungsi Arduino Uno ini dibuat untuk memudahkan pengguna dalam melakukan prototyping, memprogram mikrokontroler, membuat alat-alat canggih berbasis mikrokontorler.', 'https://storage.googleapis.com/componen_images/arduino%20uno.jpg'),
(7, 'ESP32', 'Mikrokontroler System on Chip (SoC) berbiaya rendah dari Espressif Systems, yang juga sebagai pengembang dari SoC ESP8266 yang terkenal dengan NodeMCU. ESP32 adalah penerus SoC ESP8266 dengan menggunakan Mikroprosesor Xtensa LX6 32-bit Tensilica dengan Wi-Fi dan Bluetooth yang terintegrasi.', 'ESP32 merupakan salah satu jenis mikrokontroler yang dapat berperan sebagai otak dalam suatu sistem. Lebih lanjut, ia menyampaikan bahwa penguasaan ESP32 adalah keterampilan dasar dalam IoT.', 'https://storage.googleapis.com/componen_images/esp32.jpg'),
(8, 'Diode', 'Diode adalah komponen elektronika yang terdiri dari dua kutub dan berfungsi menyearahkan arus. Komponen ini terdiri dari penggabungan dua semikonduktor yang masing-masing diberi doping (penambahan material) yang berbeda, dan tambahan material konduktor untuk mengalirkan listrik.', '-(Unbiased)Pada kondisi yang pertama, dioda bekerja dengan sistem unbiased. Dimana kondisi unbiased terjadi ketika dioda berada dalam kondisi tanpa tegangan. Pada kondisi tanpa tegangan, maka akan timbul reaksi P-N junction. Kemudian akan timbul juga pembatasan medan listrik.\r\n\r\n-(Reverse Biased)Kondisi reverse bias akan memicu tegangan menjadi negatif. Karena ion-ion bermuat negatif secara otomatis akan tertarik menuju terminal anoda. Lalu tahapan selanjutnya yakni timbul tegangan listrik statis.\r\n\r\n-(Forward Biased)Dapat dikatakan forward bias adalah kondisi yang terjadi karena adanya penyambungan katoda dalam terminal dengan muatan negatif serta anoda juga disambungkan dengan terminal dengan muatan positif. Tegangan eksternal yang masuk kedalam dioda akan mengakibatkan elektron menjadi tertarik menuju masing-masing kutub. Jadi elektron yang mempunyai muatan positif secara otomatis akan tertarik ke terminal anoda. Dan tahap selanjutnya yakni katoda akan menarik elektron dengan muatan negatif.', 'https://storage.googleapis.com/componen_images/Diode.jpg'),
(9, 'Inductor', 'Pengertian induktor adalah komponen pasif dua terminal yang berfungsi untuk menyimpan energi dalam bentuk medan magnet ketika arus listrik mengalir melaluinya.Induktor juga sering disebut sebagai koil, choke, atau reaktor.\r\n\r\nPada dasarnya induktor adalah gulungan kawat dengan banyak belitan. Biasanya terdiri dari gulungan bahan konduktor seperti tembaga berinsulasi, dibungkus ke dalam inti besi baik dari bahan plastik atau feromagnetik. Dengan demikian, ini desebut sebagai induktor berinti besi.\r\n\r\nSalah satu sifat utama dari sebuah induktor adalah bahwa ia menghambat atau menentang setiap perubahan dalam jumlah arus yang mengalir melaluinya.\r\n\r\nSetiap kali arus melintasi induktor berubah, ia memperoleh muatan atau kehilangan muatan untuk menyamakan arus yang melewatinya.\r\n\r\nOleh sebab itu kemampuan induktor untuk menyimpan energi magnet ditentukan oleh induktansinya. Semakin besar induktansi suatu induktor maka semakin besar pula kemampuan untuk menyimpan energi listrik dalam bentuk medan magnet.\r\n\r\nIndiktor dapat didefinisikan oleh sifat khas induktansi yang berarti tegangan sebanding dengan jumlah lilitan kawat, diameter lilitan kawat dan bahan atau inti kawat yang dililitkan.', 'Ada beberapa fungsi dari Inductor yaitu \r\n1.Induktor Untuk Mengontrol Sinyal\r\nKumparan pada induktor dapat digunakan untuk menyimpan energi. Fungsi induktor tergantung pada frekuensi arus yang melewatinya.\r\n\r\n2.Induktor Untuk Menyimpan Energi\r\nInduktor menyimpan energi dalam bentuk energi magnet. Kumparan dapat menyimpan energi listrik dalam bentuk energi magnet menggunakan sifat bahwa arus listrik yang mengalir melalui kumparan menghasilkan medan magnet, yang pada gilirannya menghasilkan arus listrik.', 'https://storage.googleapis.com/componen_images/induktor4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komponen`
--
ALTER TABLE `komponen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `komponen`
--
ALTER TABLE `komponen`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
