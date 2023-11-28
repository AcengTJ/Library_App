-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Des 2021 pada 16.00
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtokobuku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `Faktur` char(8) NOT NULL,
  `Judul` varchar(100) NOT NULL,
  `Penulis` varchar(100) NOT NULL,
  `Penerbit` varchar(100) NOT NULL,
  `TglTerbit` date NOT NULL,
  `Harga` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_buku`
--

CREATE TABLE `t_buku` (
  `Kd` int(11) NOT NULL,
  `Judul` varchar(100) NOT NULL,
  `Penulis` varchar(100) NOT NULL,
  `Harga` int(11) NOT NULL,
  `JumHal` int(11) NOT NULL,
  `TglTerbit` date NOT NULL,
  `ISBN` varchar(20) NOT NULL,
  `Bahasa` varchar(20) NOT NULL,
  `Penerbit` varchar(50) NOT NULL,
  `Deskripsi` text NOT NULL,
  `Kategori` varchar(20) NOT NULL,
  `Gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_buku`
--

INSERT INTO `t_buku` (`Kd`, `Judul`, `Penulis`, `Harga`, `JumHal`, `TglTerbit`, `ISBN`, `Bahasa`, `Penerbit`, `Deskripsi`, `Kategori`, `Gambar`) VALUES
(1, 'Buku Petualangan Jack & Piggy Natal', 'J.K. Rowling', 105000, 352, '2021-10-20', '9786020657066', 'Indonesia', 'Gramedia Pustaka Utama', 'Jack sayang sekali pada mainan favoritnya, Si Piggy. SP selalu ada untuknya, saat senang maupun sedih. Sampai suatu hari hal paling mengerikan terjadi---SP hilang! Tetapi ada malam untuk mukjizat dan semua yang terhilang, malam ketika segalanya bisa jadi hidup dan bernyawa... bahkan mainan. Dan mainan Jack yang paling baru punya rencana menegangkan: bersama mereka akan memulai perjalanan ajaib untuk mencari hal yang terhilang... menyelamatkan sahabat Jack.', 'Fantasi', 'image/Buku_Petualangan_Jack_&_Piggy_Natal.jpg'),
(2, 'Alasan Untuk Tetap Hidup: Melawan Depresi Dan Berdamai Dengan Diri Sendiri', 'Matt Haig', 74800, 276, '2020-11-01', '9786020648538', 'Indonesia', 'Gramedia Pustaka Utama', 'Apa rasanya menjadi orang yang mengalami gangguan kecemasan atau depresi? Ada dorongan yang membanjiri perasaan dan pikiran mereka sampai-sampai tubuh fisiknya pun ikut sakit. Bahkan, tak sedikit dari mereka yang akhirnya memutuskan untuk bunuh diri. Matt Haig pernah berada di titik itu. Ia pernah mencoba bunuh diri di pinggir tebing ketika berusia 24 tahun. Serangan panik yang bertubi-tubi dan harapan yang tak lagi terlihat membuatnya berpikir bahwa mengakhiri segalanya adalah hal terbaik. Tetapi, pada langkah terakhir, ia berhenti dan mengurungkan niatnya. Sampai sekarang, ia menjadi bukti bahwa gangguan kecemasan dan depresi bisa diatasi. Melalui buku ini, Matt Haig akan membagikan pengalamannya, mulai dari gejala depresi, rasanya mendapat serangan panik, hingga apa yang membuatnya bertahan hidup hingga hari ini. Kita akan menyelami apa yang para penderita depresi rasakan dan bagaimana cara membantu mereka (atau bahkan diri sendiri) menjadi lebih baik. Hangat dan menarik, dan dieksekusi dengan humor sebuah kontribusi yang berharga untuk obrolan sehari-hari.', 'Pengembangan Diri', 'image/Alasan_Untuk_Tetap_Hidup.jpg'),
(3, 'Filosofi Teras: Filsafat Yunani-Romawi Kuno Untuk Mental Tangguh Masa Kini', 'Henry Manampiring', 86000, 0, '2018-11-01', '9786024125189', 'Indonesia', 'Kompas', 'Lebih dari 2.000 tahun lalu, sebuah mazhab filsafat menemukan akar masalah dan juga solusi dari banyak emosi negatif. Stoisisme, atau Filosofi Teras, adalah filsafat Yunani-Romawi kuno yang bisa membantu kita mengatasi emosi negatif dan menghasilkan mental yang tangguh dalam menghadapi naik-turunnya kehidupan. Jauh dari kesan filsafat sebagai topik berat dan mengawang-awang Filosofi Teras justru bersifat praktis dan relevan dengan kehidupan Generasi Mileniat dan Gen-Z masa kini.', 'Pengembangan Diri', 'image/Filosofi_Teras.jpg'),
(4, 'Komik Doraemon Vol. 0', 'Fujiko F Fujio', 53000, 0, '2021-04-01', '-', 'Indonesia', 'Elex Media Komputindo', 'Komik\nbaru. Tidak berseri. Jadi isinya cerita tentang 6 versi pertemuan\npertama doraemon-nobita. Diterbitkan dlm rangka 50thn penerbitan\nkomiknya di jepang.', 'Komik', 'image/Doraemon.jpg'),
(5, 'Stop mengeluh, siap kerja, kerja, dan kerja', 'Jubilee Enterprise', 68000, 300, '2017-03-12', '9786020400396', 'Indonesia', 'Elex Media Komputindo', 'Kisah-kisah inspiratif nyata dan pelajaran moral untuk membantu siapapun?terutama anak muda dan remaja?menemukan keteguhan hati, harapan hidup, dan etos kerja/karya yang optimal.\n\nBuku ini memuat kisah-kisah menarik yang terjadi di masa lalu untuk menjadi pelajaran bagi hidup masa kini para pembaca.\n\nAda banyak inspirasi lain yang ada di dalam buku ini. Cerita-cerita tersebut dan beragam inspirasi yang menyertainya, akan membantu kamu menjadi sesosok manusia yang lebih tahan banting dan menyadari segala kelebihan yang kamu punyai.', 'Motivasi', 'image/Stop_mengeluh,_siap_kerja,_kerja,_dan_kerja.jpg'),
(6, 'Jangan Mengeluh Jadilah Tangguh', 'Putri Sawwal', 34000, 192, '2017-11-01', '9786024071905', 'Indonesia', 'Laksana', 'Bijak Menjalankan Peran, Aktivitas, dan Pekerjaan Apa pun\n\n+ Hal-hal yang biasa dikeluhkan tentang pekerjaan\n+ Sisi negatif dan positif dari pekerjaan anda (Penulis, desainer, pebisnis, dll)\n+ Ibu rumah tangga versus  wanita karier\n+ Freelance atau kantoran, dll\n\n\nTahukah Anda bahwa sifat mengeluh sebenarnya adalah buah dari ketamakan dan kerakusan manusia? Mengeluh adalah lawan dari syukur. Anda akan selalu merasa kurang dengan apa yang sudah diberikan oleh Tuhan.\n\nTerkadang, Anda yang bekerja secara freelance memandang pekerja kantoran lebih menggiurkan, sementara pekerja kantoran justru memandang freelancer-lah yang lebih enak. Sehingga, tiada hari tanpa mengeluh. Padahal, di luar sana, ada ribuan bahkan jutaan orang mendambakan pekerjaan Anda saat ini. Ironis, bukan?\n\nInilah bacaan wajib agar Anda selalu bersyukur dalam bekerja. Objek kajian dikhususkan bagi pekerjaan yang sama, tetapi dilakukan dengan cara berbeda, yaitu kantoran dan freelance. Penulis juga menyajikan sejumlah kelebihan dan kekurangan dari masing-masing profesi. Selain itu, ada pula sejumlah tips khusus agar Anda mensyukuri pekerjaan saat ini.\n\nSelamat membaca dan stop mengeluh sekarang juga!', 'Motivasi', 'image/Jangan_Mengeluh_Jadilah_Tangguh.jpg'),
(7, 'Mudah menguasai framework laravel', 'Yudho Yudhanto; Helmi Adi Prasetyo', 65000, 246, '2019-05-20', '9786020498928', 'Indonesia', 'Elex Media Komputindo', 'Laravel adalah salah satu framework berbasis open source yang paling populer saat ini. Sejak diluncurkan tahun 2011, aplikasi berbasis Laravel ini banyak digemari oleh para komunitas programmer di Github hingga akhirnya menyebar ke seluruh dunia.\n\nFramework Laravel menyediakan beberapa jenis PHP library dan beberapa fungsi lain yang bisa memudahkan kita dalam menuliskan baris kode program. Framework Laravel juga dibuat dengan tujuan mempermudah cara untuk membuat aplikasi berbasis web dan memperindah tampilan karena modelnya yang sederhana dan elegan. Framework ini juga terkenal dengan dokumentasinya yang lengkap dan selalu update. Setiap ada pembaharuan versi terbaru selalu ada pembaharuan pada dokumentasinya.\n\nBuku ini selain berisi teori dasar juga memberikan studi kasus aplikasi CRUD dan Toko Online. Mengacu kepada buku karya penulis sebelumnya yang berjudul ?Panduan Mudah Belajar Framework Laravel?, buku ini telah di-update dan direvisi sedemikian rupa agar semakin lengkap untuk pembaca.', 'Pemrograman', 'image/Mudah_menguasai_framework_laravel.jpg'),
(8, 'Skripsick : derita mahasiswa abadi', 'Chara Perdana', 30000, 144, '2013-11-01', '9786021258651', 'Indonesia', 'Zaytuna Ufuk Abadi', 'Gue udah mulai galau, selain karena gue jadi jomblo akut, gue juga terdesak buat cepet-cepet lulus. Alasan gue lulus cukup berlogika.\n\n- 95 persen penghuni di kampus gue cowok,\n2,5 persen cowok ngondek, 2 persen waria,\nnah  yang 0,5 persen cewek jadi jadian\n(sepertinya operasi kelamin mereka terkendala dana).\nStatistika itu jelas membuat gue nggak betah di kampus.\n\n- Gue telat!\nLoe hamil Char?\n\nBukan! Bukan itu! Gue telat masuk sekolah!\nGue telat masuk TK!! \nBener-bener ngebohay banget! *hening\n\n \n\nOk, alasan-alasan itu cukup membuat gue untuk bertindak nekat!! Gue harus lulus cepet sebelum gue berubah orientasi seksual atau berpikir buat operasi kelamin. Tapi ternyata, hidup tidak semudah itu.\n\nCara kerja Tuhan memang aneh, satu-satunya cara kita memahaminya hanyalah dengan bersyukur.', 'Umum', 'image/Skripsick.jpg'),
(9, 'Shortcourse Series Visual Basic 2013', 'Wahana Komputer', 75000, 242, '2021-09-17', '9789792946789', 'Indonesia', 'Andi Publisher', 'Seiring dengan dikeluarkannya sistem operasi Windows terbaru, yaitu Windows 8, Microsoft juga memperkenalkan paket aplikasi pemrograman terbarunya, yaitu Visual Studio 2013. Salah satu aplikasi yang terdapat dalam paket Visual Studio 2013 adalah Visual Basic 2013. Aplikasi ini mampu Anda manfaatkan untuk mengembangkan dan membangun aplikasi yang bergerak di atas sistem .NET Framework, menggunakan bahasa basic. Dengan aplikasi ini Anda dapat membangun aplikasi Windows Form, aplikasi web berbasis ASP.NET, hingga aplikasi berbasis command-line. Buku Shortcourse Visual Basic 2013 ini akan membahas tentang penggunaan Visual Basic 2013 beserta dengan komponen-komponennya yang berhubungan dengan pembuatan aplikasi. Anda akan belajar secara cepat karena buku ini ditulis menggunakan contoh-contoh yang mudah dipahami, sehingga memudahkan pembaca dalam memahami isi yang dijelaskan dalam buku ini. Buku ini membahas ? Sesi I Sekilas Visual Basic 2013. ? Sesi II Bahasa Pemrograman Visual Basic 2013. ? Sesi III Fungsi dan Kontrol Program. ? Sesi IV Form dan Kontrol Toolbox.', 'Pemrograman', 'image/Shortcourse_Series_Visual_Basic_2013.jpg'),
(10, 'Tentang Kamu', 'Tere Liye', 85000, 524, '2016-10-27', '9786028022347', 'Indonesia', 'Republika', 'Terima kasih untuk kesempatan mengenalmu, itu adalah salah satu anugerah terbesar hidupku. Cinta memang tidak perlu ditemukan, cintalah yang akan menemukan kita. Terima kasih. Nasihat lama itu benar sekali, aku tidak akan menangis karena sesuatu telah berakhir, tapi aku akan tersenyum karena sesuatu itu pernah terjadi. Masa lalu. Rasa sakit. Masa depan. Mimpi-mimpi. Semua akan berlalu, seperti sungai yang mengalir. Maka biarlah hidupku mengalir seperti sungai kehidupan. *** Atas dasar pekerjaan, Zaman Zulkarnaen harus menelusuri hidup seorang kliennya, perempuan pemegang paspor Inggris yang barusan meninggal dan mewariskan harta yang jumlahnya bisa menyaingi kekayaan Ratu Inggris. Tiga negara, lima kota, beribu luka. Hingga akhirnya Zaman mengerti, bahwa ini bukan sekadar perkara mengerti jalan hidup seorang klien, melainkan pengejawantahan prinsip kuat di tengah cobaan yang terus mendera. Tentang Kamu adalah novel terbaru Tere Liye. Sebuah karya yang tak hanya akan membawa pembacanya menyelami sebuah petualangan yang seru dan sarat emosi, tapi juga memberikan nilai positif sehingga membuat hidup serasa lebih patut disyukuri.', 'Novel', 'image/Tentang_Kamu.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`Faktur`);

--
-- Indeks untuk tabel `t_buku`
--
ALTER TABLE `t_buku`
  ADD PRIMARY KEY (`Kd`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_buku`
--
ALTER TABLE `t_buku`
  MODIFY `Kd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
