-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24 Mei 2018 pada 15.55
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kamerafix`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(35) DEFAULT NULL,
  `level` varchar(3) DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`idadmin`, `nama`, `username`, `password`, `level`, `photo`) VALUES
(2, 'Admin', 'admin', 'a1', '1', '20150201_110951.jpg\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `idalbum` int(11) NOT NULL,
  `jdl_album` varchar(200) DEFAULT NULL,
  `cover` varchar(40) DEFAULT NULL,
  `jml` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`idalbum`, `jdl_album`, `cover`, `jml`) VALUES
(5, 'Camera Sony', '5980fbff588a4404b42d308fdcfd72f6.jpg', 4),
(6, 'Camera Nikon', '14e3b2377eb383ddd4687863a650db9d.jpg', 6),
(7, 'Camera Canon', '812298571ecca44496201c89d7fd2ed2.jpg', 8),
(8, 'Camera Olympus', 'd31ddd19ad359554b4479556521377f2.jpg', 3),
(9, 'Camera Kodak', 'eb4e9eeffb28a531f1fa71f9dbf3c031.jpg', 5),
(10, 'Fujifilm', '7541d99e17957be035a22b3ba83d5ac5.jpg', 4),
(11, 'Samsung Camera', '088b08b03d7c390e50e0b5e6dccd19dd.jpg', 4),
(12, 'Minolta Camera', 'ca2ef38620ac8927d6534bd58796bfc3.jpg', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `idberita` int(11) NOT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `isi` text,
  `tglpost` datetime DEFAULT NULL,
  `gambar` varchar(40) DEFAULT NULL,
  `tgl_last_update` datetime DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `views` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`idberita`, `judul`, `isi`, `tglpost`, `gambar`, `tgl_last_update`, `user`, `views`) VALUES
(1, 'Asus ZenFone Max Plus M1 Bidik Fotografer dan Gamer', '<p>Asus&nbsp;baru saja merilis&nbsp;<em>smartphone</em>&nbsp;terbarunya yaitu ZenFone Max Plus M1.&nbsp;<em>Smartphone</em>&nbsp;yang memiliki pemindai jari dan wajah tersebut tidak hanya mengandalkan kamera, tetapi juga cocok untuk dipakai oleh para pecinta fotografi serta para&nbsp;<em>gamer</em>.</p>\r\n\r\n<p>Dari segi kamera,&nbsp;Asus&nbsp;ZenFone Max Plus M1 tidak sebatas mengandalkan&nbsp;<em>selfie</em>&nbsp;seperti&nbsp;<em>smartphone</em>lainnya.</p>\r\n\r\n<p>Di seri ini&nbsp;tertanam fitur&nbsp;<em>wide-angle</em>&nbsp;untuk memperluas jangkauan foto yang diambil pengguna sehingga&nbsp;<em>smartphone</em>&nbsp;ini amat cocok dipakai untuk mereka yang hobi&nbsp;<em>traveling</em>.</p>\r\n\r\n<p>&quot;Di masa lalu meski kita bisa memotret&nbsp;<em>wide-angle</em>, tapi karena display 16:9 maka hasilnya tetap tidak benar-benar menunjukan foto penuh, tapi sekarang dengan display 18:9, segala foto yang kamu potret dapat terlihat benar-benar lebar,&quot; kata Galip Fu, Asus Indonesia Marketing Manager, dalam presentasinya di peluncuran Asus ZenFone Max Plus M1 di Jakarta, Kamis (1/3/2018) sore.</p>\r\n\r\n<p>Kedua kamera yang ada di bagian belakang memiliki sudut pandang mencapai 120 derajat atau dua kali lebih luas dibandingkan&nbsp;<em>smartphone&nbsp;</em>pada umumnya.</p>\r\n\r\n<p>Asus&nbsp;ZenFone Max Plus M1 dilengkapi dua kamera belakang 16MP dan 8MP yang dilengkapi aperture f/2.0 untuk menangkap objek foto yang bergerak untuk menghasilkan foto tajam.</p>\r\n\r\n<p>Display ZenFone Max Plus M1 yang luas tersebut dapat dijadikan andalan para&nbsp;<em>gamer</em>. Belum lagi layar resolusi HD+ berukuran 5,7 inci dengan&nbsp;<em>bezel</em>&nbsp;minimalis.</p>\r\n\r\n<p>Selain layar yang luas,&nbsp;juga terdapat&nbsp;fitur Game Genie&nbsp;yang memiliki fungsi&nbsp;Live &amp; Record. Lalu ada juga Macro Mode dan No Alerts Mode yang mencegah gangguan saat sedang bermain gim.</p>\r\n\r\n<p>Baterainya pun sangat menunjang, yakni berkekuatan 4.130mAh dengan kemampuan&nbsp;<em>fast charging</em>.</p>\r\n\r\n<p>Untuk keamanan pengguna, Asus juga melakukan terobosan dengan melengkapi&nbsp;<em>smartphone</em>&nbsp;ini 12 teknologi untuk melakukan pengawasan temperatur dan arus listrik pada&nbsp;<em>smartphone</em>.</p>\r\n\r\n<p>ZenFone Max Plus M1 didukung berbagai fitur, baik dari segi kamera, performa, maupun keamanan.</p>\r\n\r\n<p>Smartphone ini juga memiliki pemindai jari dan wajah yang dapat bekerja secara cepat.</p>\r\n\r\n<p>Baterainya dapat bertahan hingga tiga minggu dalam kondisi&nbsp;<em>standby</em>&nbsp;di jaringan 4G, dan dapat&nbsp;dipakai untuk telepon hingga 26 jam&nbsp;<em>nonstop</em>&nbsp;di jaringan 3G, memutar video selama 13 jam, serta menjelajah&nbsp;<em>web</em>&nbsp;selama 21 jam.&nbsp;</p>\r\n\r\n<p>Harganya sendiri&nbsp;ternyata masih di bawah Rp 3 juta, yakni di kisaran&nbsp;Rp 2,7 jutaan.</p>\r\n', '2018-05-10 11:38:46', 'f8562d35dad98cf6fa822c596325acd2.jpg', '2018-05-10 12:00:39', 'admin', 8),
(3, 'Duh, Fotografer Perang Ini Kedapatan Curi Foto Orang Lain', '<p>Seorang&nbsp;fotografer&nbsp;yang biasa mengabadikan momen perang di daerah konflik, Eduardo Martins, kedapatan mengelabui semua orang di dunia. Kini, dia bersembunyi setelah aksi bohongnya itu ketahuan.</p>\r\n\r\n<p>Pria 32 tahun asal Brasil ini mengaku pernah bekerja untuk PBB. Pekerjaan itulah yang mengantarkannya bepergian ke daerah-daerah konflik dan memberikannya kesempatan untuk memotret berbagai hal menarik.</p>\r\n\r\n<p>Tidak sedikit dari foto miliknya dikirim ke agen foto ternama dan berhasil dipublikasikan di berbagai media seperti&nbsp;<em>The Wall Street Journal</em>,&nbsp;<em>Le Monde</em>, dan&nbsp;<em>Telegraph</em>.</p>\r\n\r\n<p>Tak lupa, Martins juga mengunggah foto-fotonya ke akun Instagram yang kini punya 120 ribu pengikut. Ia pun banyak diwawancarai oleh media ternama seperti&nbsp;<em>Recount Magazine</em>&nbsp;serta&nbsp;<em>Vice</em>&nbsp;edisi Brasil.</p>\r\n\r\n<p>Siapa sangka, karier Martins sebagai&nbsp;fotografer&nbsp;spesialis perang hancur setelah jurnalis&nbsp;<em>BBC</em>&nbsp;bernama Natasha Ribeiro membongkar kebohongannya. Mengutip&nbsp;<em>Peta Pixel</em>, Rabu&nbsp;(6/9/2017), Ribeiro penasaran karena tak satu pun orang yang mengaku pernah bertemu dengannya.</p>\r\n\r\n<p>&quot;Tak satu pun jurnalis Brasil di Iraq--tempat Martins biasa menjepret momen perang--yang pernah bertemu dengannya. Selain itu, tak satu pun pihak berwenang yang pernah berhubungan dengannya. Dia juga bukan bagian dari satu pun LSM yang ada di Iraq,&quot; tutur Ribeiro.</p>\r\n\r\n<p>Martins memang pernah memberikan foto pertempuran di Peshmerga kepada&nbsp;<em>Vice</em>. Anehnya, dua koresponden Brasil di sana mengaku tak pernah bertemu dengan sang&nbsp;fotografer. Hal ini dianggap tidak mungkin, sebab di daerah konflik, biasanya jurnalis saling berhubungan satu sama lain.</p>\r\n\r\n<p>Dalam wawancaranya dengan&nbsp;<em>BBC</em>&nbsp;Brasil lewat aplikasi WhatsApp, Martin mengaku bekerja untuk PBB. &quot;Saya relawan lapangan PBB dan saya bekerja di kamp pengungsian,&quot; tutur Martin. Namun, sebuah investigasi mengungkap, tidak ada bukti menyebutkan Martin pernah bekerja untuk UN Refugee Agency</p>\r\n\r\n<p>Hal aneh lainnya diungkap oleh DOC Galeria di Sao Paolo yang berencana memamerkan karya Martin dalam sebuah pameran mengenai fotografer di daerah konflik. Anggota galeri, Fernando Costa Netto pun mencoba menghubung Martins yang mengaku sedang di berada di Iraq.</p>\r\n\r\n<p>&quot;Saya sedang menyelenggarakan pameran foto karya fotografer Brasil yang ada di daerah konflik dan mencoba menghubungi Martins, namun ia seolah hilang. Saya pikir dia diculik anggota ISIS, jadi saya coba menghubungi kolega Brasil lainnya di sana. Saat kami mencoba mencarinya, dia muncul dan bilang di sana sulit mendapat sinyal,&quot; katanya.</p>\r\n\r\n<p>Rupanya, kecurigaan Netto atas hilangnya Martins membuat fotografer itu sadar banyak orang yang mempertanyakan keberadaan dan keaslian karyanya. Ia pun buru-buru menghapus akun Instagram dan nomor WhatsApp-nya pun sudah tak aktif.</p>\r\n\r\n<p>&quot;Saya ada di Australia dan telah memutuskan menghabiskan waktu setahun di sini untuk mengelilingi dunia. Saya memutuskan tak lagi menggunakan internet dan IG. Terima kasih,&quot; kata Martins.</p>\r\n\r\n<p><em>BBC</em>&nbsp;Brasil pun mempublikasikan hasil investigasinya. Hasilnya, para editor berita dan foto yang ada di seluruh dunia mengklaim karya-karya yang selama ini &quot;dicuri&quot; dan &quot;diakui&quot; Martins si fotografer penipu.</p>\r\n\r\n<p>&quot;Karena berbagai kecurigaan dan risiko pelanggaran hak cipta, kami memohon maaf kepada pembaca kami atas kesalahan ini. Kasus ini akan membuat kami lebih cermat dalam memverifikasi karya,&quot; ujarnya.</p>\r\n\r\n<p>Terungkap, karya yang selama ini diakui Martins merupakan hasil karya orang lain. Misalnya saja milik fotografer Amerika, Daniel C Britt. Martins tak hanya mencuri foto-foto dan mempublikasikannya sebagai miliknya, tetapi ia juga mengubah foto agar sulit dikenali melalui metode pencarian gambar. Selain itu, banyak foto yang dipangkas dan di-<em>mirror</em>&nbsp;dari foto aslinya.</p>\r\n\r\n<p>.</p>\r\n', '2018-05-10 12:56:50', '554667cbf7538a2bc58d9024d734d418.JPG', NULL, 'admin', 7),
(4, 'Ada Tempelan Stiker di Kamera, Apakah Refurbished?', '<blockquote>\r\n<p>Teman saya baru membeli kamera panasonic lumix di ITC seharga 7,4 juta lalu ditawarkan lensa tele jadi total 8,2 juta. Ketika sudah deal, pedagang mengeluarkan barang baru tapi kardusnya tidak dilapisi lagi plastik bening yang merekat di kardusnya.</p>\r\n\r\n<p><em>Lalu mulai dari kemera, lensa, chargeran, hingga baterai ditempelin stiker yang katanya stiker itu sudah ditempel dari sananya.&nbsp;Yang ingin saya tanyakan apakah harga tersebut wajar dan apakah barang yang saya beli ini kamera refurbish karena saya curiga adanya tempelan stiker dan kardus yang tidak dilapisi lagi dengan plastik bening. Apakah semua kamera baru hanya kardus saja tanpa dilapisi plastik lagi? Atau jika memang tidak refurbish apakah mungkin itu barang black market? barangnya asli tapi ilegal? Mohon pencerahannya terimakasih. (Fikri)</em></p>\r\n</blockquote>\r\n\r\n<p><strong>Jawaban:</strong><br />\r\n&nbsp;</p>\r\n\r\n<p>Dari ciri-ciri yang disebutkan diatas yaitu stiker segel di berbagai tempat, biasanya kamera tersebut diimpor oleh distributor, bukan dari distributor resmi yang ditunjuk oleh Panasonic Lumix. Bedanya kalau rusak klaim servis garansinya ke distributor, yang alamatnya tercantum di kartu garansi. Soal produknya sendiri biasanya masih baru, jadi tidak perlu dikhawatirkan.</p>\r\n\r\n<p>Kalau yang kameranya dari distributor resmi biasanya kartu garansinya berasal dari distributor resmi, untuk merek Panasonic, distributor resminya adalah PT Datascrip. Biasanya tidak disegel dusnya, dan tidak ada tempelan sticker di baterai dan bodi kamera dan lensa. Sedangkan kalau soal kamera bekas, nah ini yang agak sulit, karena banyak kamera bekas yang kondisinya masih bagus, tapi sudah pernah dipakai. Kita juga mesti lebih berhati-hati jika model kameranya sudah lama, kemungkinan kameranya bekas lebih tinggi lagi. Tanda-tanda lain adalah harga yang ditawarkan sangat murah dibandingkan toko-toko lainnya.&nbsp;Sebenarnya yang paling aman jika kita membeli di toko-toko yang memiliki reputasi bagus. Jika memungkinkan di toko resmi merek kamera itu. <strong>(jsn/fyk)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>source:<a href=\"https://inet.detik.com/konsultasi-fotografi/d-3406207/ada-tempelan-stiker-di-kamera-apakah-refurbished\">https://inet.detik.com/konsultasi-fotografi/d-3406207/ada-tempelan-stiker-di-kamera-apakah-refurbished</a></strong></p>\r\n', '2018-05-10 13:11:01', '94a1d39547bebe53b3a0bf18136f28f0.JPG', '2018-05-10 15:00:53', 'admin', 9),
(5, 'Wow, 5 Foto Ini Dibuat dari Tumpukan Sampah Selama 4 Tahun', '<p>Seorang fotografer bernama Antoine Repess&eacute; memanfaatkan sampah yang telah ditumpuk selama empat tahun menjadi hasil karya fotografi yang keren dan mengagumkan.</p>\r\n\r\n<p>Kedengarannya memang jorok. Bagaimana tidak karena sampah mengandung bakteri yang dapat berdampak buruk bagi kesehatan. Apa jadinya ya jika sampah berumur empat tahun itu jadi objek foto?</p>\r\n\r\n<p>Repess&eacute; menggunakan berbagai macam jenis sampah, mulai dari botol plastik, kotak atau kardus makanan, hingga bungkus rokok. Hasilnya pun di luar dugaan dan bakal bikin kamu geleng-geleng kepala.</p>\r\n\r\n<p>Penasaran? Yuk, langsung intip deretan fotonya di bawah ini:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Duit buat beli rokok selama empat tahun mungkin sudah cukup bisa buat cicil rumah.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kamu mau makan apa? Tinggal pilih saja.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kalau begini, mau buang air kecil jadi susah kan?&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Membaca membuka jendela dunia karena membaca tak mengenal usia.</p>\r\n\r\n<p>source: <a href=\"https://www.liputan6.com/tekno/read/3219097/wow-5-foto-ini-dibuat-dari-tumpukan-sampah-selama-4-tahun\">https://www.liputan6.com/tekno/read/3219097/wow-5-foto-ini-dibuat-dari-tumpukan-sampah-selama-4-tahun</a></p>\r\n', '2018-05-20 05:53:54', 'd29afc717c9a3390188ce8b92ebef85d.JPG', NULL, 'admin', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `jdl_galeri` varchar(200) DEFAULT NULL,
  `gbr_galeri` varchar(40) DEFAULT NULL,
  `albumid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `jdl_galeri`, `gbr_galeri`, `albumid`) VALUES
(1, 'Sony RX100', '916cb37ee3b48a7119eb6fa27e4af0e2.jpg', 5),
(2, 'Sony A7 Lens', '258d5293a4a86e69fdbe5c7eb0407701.jpg', 5),
(3, 'DSC-RX100M4', '680126dc685ed086b968122e3e0e4419.jpg', 5),
(4, 'Nikon D3400', 'd3252c554d6746d8674a96b5cdfbb0ab.jpg', 6),
(5, 'Nikon D7100', 'f283db77babf1845cf09a2b1db849708.jpg', 6),
(6, 'Nikon F F2 F3 F4 F5', 'af141afeedc17e8b659cb069c1063c14.jpg', 6),
(7, 'Nikon D4', '4719c77564332741232a6a9ff335b7d8.jpg', 6),
(8, 'Nikon F4', '20c7ff1bb2a990f510699617e7134218.jpg', 6),
(9, 'Canon G7X', 'e247019fcef4e3c12c42487c2a66af33.jpg', 7),
(10, 'Canon AE-1', 'eabb50a8c4c32e65d4611e181b04cbd8.jpg', 7),
(11, 'Canon A1', '3b7c56952fb13461ea11a5c7c62ca9ed.jpg', 7),
(12, 'Canon F1', '96584fad7226bf9d5b838be1987a0b93.jpg', 7),
(13, 'Canon EF', '13bf464c165ab6edf64a0eb318f900ef.jpg', 7),
(14, 'Canon EOS 1300D', 'e0f8c22cdf5d159787f90e6e011caa31.jpg', 7),
(15, 'Canon EOS Rebel SL2 / 200D', 'df34fc816a2fd9f73f173eb1ec1f69c1.jpg', 7),
(16, 'Canon EOS 100D', '40211863b8caf28ca7803df0993d86c3.jpg', 7),
(17, 'Sony - Alpha a5100 Mirrorless Camera', '6492c0a6b160f65e3a128f9bec4b03cf.jpg', 5),
(18, 'Olympus OM-D EM-5', '84710deda0efc656cd33c657831da77d.jpg', 8),
(19, 'Olympus PEN-F ', '1aa21cf3dd028cf8376936218010b68c.jpg', 8),
(20, 'Olympus OM2', '0849af60c6da0a52ae1f9b499ada333c.jpg', 8),
(21, 'Nikon FM3a Camera ', '8c0b0e58359051daaa4fa4bbb0e49c67.jpg', 6),
(22, 'Vintage Jiffy Kodak Series ll Six-16 Folding Camera with Original Box for 116 Film 1937-42', 'c4b183d6f84e50e8cba5c2d3b2204a3e.jpg', 9),
(23, 'Kodak Instamatic 224', 'cd00a0d0baaafd1e83d5c75ed4777ef1.jpg', 9),
(24, 'Kodak Instamatic 224', '169daa40e901ea88ab3da554ec79a5c4.jpg', 9),
(25, 'Kodak Brownie Fiesta R4', '911ef140f8f3837b6aba5e28c9d77563.jpg', 9),
(26, 'Kodak Chevron', '4c1e6fe9179dd229db6d60cd0f733401.jpg', 9),
(27, 'Fujifilm XT10 ', '77cfb414724e4c13f32fec2d4af5b1c5.jpg', 10),
(28, 'Fuji X100', 'c7e15f76aaa856b95689c36288083b05.jpg', 10),
(29, 'Fujifilm X100/X100S Vintage Full Case [Italy COW Leather] + Strap - Kaza', 'af583fba2b0ea37308b8b01476feffce.jpg', 10),
(30, 'FUJIFILM X-A3', '46a642843dcb401f18cd2331c223809a.jpg', 10),
(31, 'Samsung NX3000', '2a9ba2c7cf80d426701e3842bea5f5f2.jpg', 11),
(32, 'Samsung NX Mini', '5f3e37787e48ac98c0b20a82485c0c34.jpg', 11),
(33, 'Samsung NX 500', '2e2d14e43ccd40010e71e32304ae7387.jpg', 11),
(34, 'Samsung WB Series WB1100F', 'fc6c65b666c5e248ef1874292c154d65.jpg', 11),
(35, 'Minolta SR-T 101', '1044e70e338ad23dda8c3b06a9d77ced.jpg', 12),
(36, 'Minolta X700', 'a95aae8c782dc7a743cb14c926c26d42.jpg', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `info_fotografi`
--

CREATE TABLE `info_fotografi` (
  `id_if` int(11) NOT NULL,
  `nama_if` varchar(100) DEFAULT NULL,
  `deskripsi` text,
  `gambar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `info_fotografi`
--

INSERT INTO `info_fotografi` (`id_if`, `nama_if`, `deskripsi`, `gambar`) VALUES
(1, 'Kamera smartphone semakin baik, bagaimana menyikapinya?', '<p>Belakangan ini kamera di ponsel cerdas (smartphone) trennya semakin membaik, dari sisi kualitas hasil foto maupun spesifikasi teknis (sensor size, aperture, piksel, PDAF, OIS dll).&nbsp;Komputasional fotografi juga banyak diberikan ke teknologi kamera ponsel supaya memberi hasil yang maksimal dengan keterbatasan yang ada, semisal simulasi bokeh supaya hasil fotonya seperti lensa DSLR, atau HDR yang jadi solusi mengatasi keterbatasan&nbsp;<em>dynamic range</em>&nbsp;sensor di keadaan kontras tinggi. Memang sih tidak semua ponsel punya fitur fotografi yang tinggi, biasanya adalah ponsel elit seperti Huawei P20 atau Samsung S9. Tapi kini bahkan ponsel murah meriah (dibawah 3 juta) juga mulai memperbaiki aspek kameranya dan hasilnya sudah cukup oke, ada juga yang pakai dua lensa di ponsel ekonomis. Lalu bagaimana? Apakah ini artinya kita cukup kemana-mana bawa ponsel saja?</p>\r\n\r\n<p>Sebetulnya jawabannya kembali ke anda. Kamera adalah alat, dan sebagai alat dia punya fungsi dan kemampuan. Hasil dari kamera adalah foto, atau juga video, kita lah yang jadi penentu apakah hasilnya&nbsp;<em>good enough</em>&nbsp;untuk kita atau tidak? Kalau ada yang menganggap kamera di ponsel sudah cukup untuk dia, fine, silahkan saja. Karena yang dianggap cukup itu sangat relatif kan.. Kalau menurut saya sih untuk kebutuhan berbagi cerita media sosial atau sekedar mengirim via WA, kamera ponsel masa kini memang sudah mencukupi. Toh kadang kebutuhan foto pengguna ponsel lebih ke snapshot atau yang sifatnya instan, dan kelebihan ponsel justru ada di situ. Justru akan ribet misalnya untuk memotret boarding pass tiket pesawat kita harus keluarkan kamera besar lalu dipindah via WiFi ke ponsel.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '94e8d7e5d3528310632fe7921152b225.jpg'),
(2, 'Komposisi Fotografi – Framing', '<p>Kita dirumah mungkin sering membingkai foto dalam sebuah frame dan memajangnya di tembok atau diatas meja. Pigura atau bingkai yang bagus bisa menarik perhatian seseorang dan melihat ke dalam foto kita. Pembingkaian tidak hanya sebatas dengan menggunakan pigura, ada satu tipe lagi framing yang bisa Sobat lakukan pada saat memotret, dan bisa dikatakan sama efektifnya dengan framing cara tradisional.</p>\r\n\r\n<p>Framing merupakan teknik bagaimana mengarahkan perhatian seseorang kepada subyek foto dengan membatasi elemen-elemen foto yang lain menggunakan sesuatu yang mengelilingi elemen&nbsp;<a href=\"http://www.infotografi.com/2012/07/menggunakan-focal-point-dalam-fotografi.html\">Focal Point</a>. Ada beberapa keuntungan yang bisa didapatkan dengan melakukan framing yaitu:</p>\r\n\r\n<ol>\r\n	<li><strong>Memberikan konteks pada foto</strong>, karena framing akan memberikan kesan sebuah pembatasan dan pemahaman terhadap lingkungkan yang Sobat potret.</li>\r\n	<li><strong>Memberikan kedalaman pada foto</strong>, karena framing biasanya akan menempatkan sesuatu benda atau obyek pada foreground yang bisa memberikan dimensi pada foto.</li>\r\n	<li><strong>Menuntun mata menuju ke Focal Point</strong>, karena framing berarti menutup ruang kosong dan memaksa mata menuju ke arah Point of Interest yang kita pilih.</li>\r\n	<li><strong>Menggugah rasa keingin tahuan Seseorang</strong>, terkadang ketertarikan pada apa yang tidak terlihat bisa jadi sama besarnya dengan apa yang terlihat. Penggunaan framing yang tepat bisa membuat penikmat foto berpikir, bahkan berimajinasi apa yang ada di belakang frame tersebut.</li>\r\n</ol>\r\n\r\n<p>Framing untuk sebuah foto bisa diaplikasikan dengan beragam bentuk serta ukuran, termasuk memotret melalui cabang-cabang pohon, jendela, terowongan, jembatan atau pintu. Framing tidak harus menutupi sekeliling Focal Point, bisa jadi hanya satu atau dua sisi pada foto. Tanyakan pada diri Sobat, apakah dengan framing yang akan kalian ambil bisa menonjolkan focal point atau malah sebaliknya? Terkadang aplikasi framing yang salah bisa menjadi sebuah pengalih perhatian bagi sebuah foto.</p>\r\n\r\n<p>Pertimbangkan juga apakah framing yang akan diaplikasikan terfokus atau tidak, dalam beberapa kasus frame yang blur bisa membangkitkan mood serta kedalaman pada sebuah foto (gunakan&nbsp;Aperture&nbsp;lebar). Frame yang terfokus dengan baik bisa membantu menambahkan konteks dalam foto (gunakan aperture kecil/sempit).</p>\r\n', '115c66a2a90799e0267b6cfe3c4029ee.JPG'),
(3, 'Peran Reflektor Dalam Foto Portrait', '<p>Penggunaan serta peran reflektor bisa sangat membantu ketika memotret diluar ruangan dengan kondisi cahaya yang sangat terang, dan tentunya bisa memandu Sobat untuk memastikan bahwa foto kalian terekspose dengan benar.</p>\r\n\r\n<p>Tantangan paling besar ketika memotret&nbsp;Portrait&nbsp;diluar ruangan adalah bagaimana memastikan wajah subyek mendapatkan cukup cahaya. Anda seringkali akan mendapati bayangan kuat pada area-area wajah yang tidak terkena cahaya secara langsung, seperti bayangan yang menghilangkan beberapa tekstur serta fitur wajah karena terlalu gelap. Biasanya berada pada sisi bagian bawah wajah (dagu, hidung dan lain-lain).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Penggunaan&nbsp;<a href=\"http://studiostar7.net/perlengkapan-studio/reflektor\">reflektor&nbsp;</a>akan membantu dalam hal ini. Reflektor akan memantulkan cahaya alami ke area wajah yang gelap dikarenakan bayangan, dan penempatan reflektor yang baik biasanya berada dibawah wajah subyek sehingga akan memantulkan cahaya keatas ke area wajah yang hitam terkena bayangan.Tempat yang tepat untuk menggunakan reflektor adalah diluar ruangan dan jangan menggunakannya ketika memotret indoor, kecuali jika Sobat memotret di dekat jendela yang lebar, dan menggunakan reflektor tersebut untuk memantulkan&nbsp;<a href=\"http://www.infotografi.com/2012/09/cahaya-dan-fotografi.html\">cahaya&nbsp;</a>yang masuk melalui jendela. Reflektor tidak cukup bagus jika dikombinasikna dengan&nbsp;<a href=\"http://studiostar7.net/perlengkapan-studio/speedlite-flash\">flash&nbsp;</a>didalam ruangan, karena flash tidak selalu digunakan dengan kekuatan penuh.</p>\r\n\r\n<p>Reflektor pada umumnya memiliki Dua warna, perak dan Emas. Setiap warna memberikan nuansa warna yang berbeda. Perak atau Silver memberikan pantulan cahaya yang terang dan lebih putih, sedangkan warna Gold atau Emas menawarkan warna yang lebih hangat dan halus.</p>\r\n\r\n<p>Reflektor&nbsp;bisa ditemukan dengan berbagai bentuk serta ukuran, bahkan banyak reflektor yang bisa dilipat sampai berukuran kecil sehingga mudah dalam mobilitas. Jika Sobat masih belum mampu untuk membeli reflektor, cobalah untuk menggunakan styrofoam yang lebar. Penggunaan reflektor dengan efektif akan membutuhkan sedikit latihan tetapi seperti pada semua aspek fotografi bahwa eksperimen merupakan salah satu kunci keberhasilan. Cobalah dengan benar dan rasakan perbedaan dalam hasil foto kalian.</p>\r\n', 'fceb43c3e6309e2b22e7bd059ff5a107.JPG'),
(4, 'Tips Memotret Makanan', '<p>Suka memotret makanan? Sebenarnya, memotret makanan juga ada tips dan triknya loh. Inilah tips memotret makanan, kuncinya satu : pencahayaan!</p>\r\n\r\n<p>Kunci dari permainan cahayanya adalah untuk melihat intensitas cahaya. Jadi, apakah cahaya terlalu terang ataupun terlalu halus saat menerangi makanan. Berikut adalah beberapa cara untuk beradaptasi dengan cahaya :</p>\r\n\r\n<ol>\r\n	<li><strong>Ambillah foto dengan cahaya matahari</strong>. Lebih baik gunakan cahaya matahari daripada menggunakan lampu ataupun flash biar lebih cantik.</li>\r\n	<li><strong>Berkelilinglah untuk mencari sumber cahaya.</strong>&nbsp;Sama seperti cara untuk memotret model di fotografi potrait,&nbsp;<a href=\"https://infotografi.com/tips-fotografi-potrait-dasar-yang-harus-kamu-ketahui/\">berkelilinglah</a>&nbsp;hingga menemukan cahaya maupun angle yang pas. Jangan takut untuk memotret di tempat lain!</li>\r\n	<li><strong>Pindahkan&nbsp;piring untuk menemukan angle</strong>.&nbsp;Sama seperti nomor dua dan artikel terkait, berkelilinglah hingga menemukan angle yang tepat. Tapi, karena ini makanan, tinggal&nbsp;pindah-pindahkan&nbsp;saja piringnya!&nbsp; Kamu bisa mencoba memotret dari berbagai angle. Ada beberapa makanan yang terlihat bagus jika difoto dari atas, seperti pizza; atau dari samping, seperti burger; atau dari sudut 45 derajat, seperti minuman.</li>\r\n	<li><strong>Perhatikan sekitar</strong>. Kalau ada sendok, tisu, ataupun latar belakang terlalu ramai yang nggak pas sama foto, jauhkan saja. Fokuslah sama sesuatu yang paling penting, tapi jangan terlalu di zoom ya.</li>\r\n</ol>\r\n\r\n<p>Nah, dalam memotret selalu saja ada masalah. Berikut ini adalah beberapa masalah yang selalu muncul ketika kamu memotret.</p>\r\n\r\n<ol>\r\n	<li><strong>Foto kamu jadi blur</strong>. Blur biasanya terjadi karena getaran kamera. Solusinya pakailah tripod dan kamu bebas pakai shutter speed yang cepat untuk membuka aperture kamu dengan cahaya yang lebih terang. Kamu juga bisa bebas meningkatkan ISO untuk menurunkan intensitas cahaya (terlalu banyak cahaya bisa mengurangi kualitas gambar, loh)</li>\r\n	<li><strong>Warna jangan terlalu berlebihan.&nbsp;</strong>Ketika kamu mengedit foto kamu, jika piring kamu terlihat terlalu biru, kuning, pink ataupun hijau, berikan sedikit sentuhan dengan white balance. Warna akan terlihat lebih hidup. Maka dari itu gunakan format RAW untuk mengatur warna yang lebih mudah.</li>\r\n	<li><strong>Ingat, foto kamu tidak langsung terlihat &ldquo;wow&rdquo; seperti fotografer profesional.</strong>&nbsp;Para fotografer makanan profesional pasti sudah memiliki lensa yang lebih menunjukkan depth of field hingga highlight dari subjek foto. Lalu mereka&nbsp;punya software yang bisa diubah kontrasnya, ketajaman gambar dan sebagainya.</li>\r\n</ol>\r\n\r\n<p>Ingat, selalu berlatih! Dengan begitu, fotomu juga akan lebih bagus. Kamu suka memotret makanan? Kirim hasil karyamu dengan kontak kami ya &ndash; kita tunggu!</p>\r\n', '48d657444228d42af55ce746a9b453e5.JPG'),
(5, 'Wedding Photography Bagi Fotografer Pemula', '<p>Apakah sobat pernah dalam posisi seperti ini: Baru memasuki dunia fotografi dan mendapat tawaran untuk pertama kalinya memotret sebuah acara pernikahan? Dalam hati pasti sedikit merasa kebingungan dan mencari-cari tips bagaimana mengabadikan sebuah momen pernikahan yang begitu sakral dan penting bagi pasangan pernikahan tersebut. Artikel kali ini akan membahas sedikit tentang tips bagaimana memotret sebuah acara pernikahan bagi fotografer pemula, dan Kami berharap bisa bermanfaat. Jika Sobat mencari penjelasan teknis, maka kalian tidak akan menemukannya dalam artikel ini, kami menganggap Sobat telah memahami dasar-dasar fotografi seperti&nbsp;konsep exposure triangle,&nbsp;komposisi dasar&nbsp;dan lain-lain.</p>\r\n\r\n<h1>Tips Fotografi Pernikahan</h1>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Buatlah daftar Foto yang akan kalian ambil.</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Salah satu saran yang bisa sangat membantu tentang&nbsp;<strong>Wedding Photography</strong>&nbsp;adalah meminta pasangan tersebut untuk memikirkan foto-foto seperti apa yang mereka inginkan pada saat acara pernikahan. Ini akan sangat membantu pada saat pemotretan bersama keluarga, tentunya Sobat tidak ingin ketika menyerahkan hasil foto yang bagus tetapi kalian tidak menyertakan salah satu anggota keluarga dalam foto-foto tersebut bukan?</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Memilih koordinator foto</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Memotret seluruh anggota keluarga pada saat acara pernikahan bisa terasa merepotkan loh! Biasanya kebanyakan dari mereka berjalan kesana kemari menemui anggota keluarga lain, teman, kolega dan lain-lain. Parahnya lagi Sobat pasti tidak mengenal satu-satu anggota keluarga tersebut, ditambah lagi ada dua keluarga yang berkumpul baik itu dari pihak laki-laki maupun perempuan. Mintalah pada pasangan tersebut seorang foto koordinator yang mengenal seluruh anggota keluarga, dan lebih baik dipilih dari salah satu anggota keluarga mereka. Foto koordinator bisa membantu Sobat ketika mengumpulkan mereka untuk sesi pemotretan.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Kunjungi lokasi acara</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Kunjungi semua lokasi pernikahan dimana kalian akan memotret sebelum acara berlangsung. Memang beberapa fotografer wedding profesional tidak melakukannya, tetapi ini akan sangat membantu untuk mengetahui darimana kita memotret, merencanakan angle atau frame foto yang akan kita ambil dan melihat bagaimana kondisi pencahayaan pada waktu yang sama ketika acara pernikahan. Cobalah mengajak pasangan turut serta melihat lokasi, dan mencoba mengambil beberapa foto, siapa tahu bisa menjadi foto &lsquo;Pra-Wedding&rsquo;.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Persiapan adalah kunci dari Wedding Photography</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Potensi kesalahan besar terjadi pada saat acara pernikahan, jadi Sobat harus membersiapkan diri dengan baik. Buatlah rencana cadangan (jika pernikahan outdoor dan cuaca buruk), pastikan baterai diisi penuh, memory card benar-benar kosong, pikirkan tentang rute atau urutan pemotretan sehingga Sobat mengetahui momen apa yang terjadi berikutnya. Datanglah pada acara gladi resik jika memungkinkan dan memang jika ada acara tersebut, dari situ kalian bisa mengumpulkan informasi tentang posisi memotret, pencahayaan, urut-ututan acara dan lain-lain.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Ketahui apa yang menjadi harapan kedua pasangan terhadap hasil foto kalian</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Tunjukkan hasil foto atau portofolio kalian pada mereka. Ketahui apa yang ingin mereka dapatkan, berapa banyak foto yang mereka inginkan, acara apa saya yang tidak boleh terlewatkan dan bagaimana foto tersebut digunakan. Pastikan kalian membuat semacam perjanjian atau deal harga jika kalian mengenakan biaya untuk Wedding Photography.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Matikan suara yang ada pada kamera digital kalian.</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Jangan pernah menambahkan bunyi-bunyi Beep pada saat khidmadnya acara pernikahan. Matikan semua fitur suara sebelum acara pernikahan.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Potretlah detail-detail kecil</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ambillah gambar cincin, pernak-pernik kebaya atau gaun penganti, bunga, penataan meja dan lain-lain. Ini akan memberikan warna dan dimensi pada album pernikahan. Cobalah membuat sebuah album dengan format Wedding Magazine agar lebih memiliki mood ketika pasangan tersebut melihat album tersebut.</p>\r\n\r\n<p><a href=\"https://goo.gl/photos/lP3NUYn6jp\"><img src=\"https://lh6.googleusercontent.com/-j_zMpz30PZE/R7R8STpsfHI/AAAAAAAAGTk/uV_k-IFL_gU/s400/_MG_59206211018.jpg\" style=\"height:400px; width:278px\" /></a></p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Gunakan dua kamera</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Berusahalah mendapatkan kamera lain, entah itu dengan cara memohon atau meminjam ke orang lain. Gunakan dua&nbsp;lensa&nbsp;yang berbeda pada setiap kamera. Idealnya satu kamera dilengkapi dengan lensa wide (bagus untuk candid dan ruang sedikit sempit), dan satu lagi dengan lensa zoom (kalau bisa gunakan lensa yang memiliki focal length maksimal 200mm).</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Pertimbangkan menggunakan Fotografer kedua.</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Memiliki fotografer cadangan bisa menjadi strategi yang bagus, hal ini berarti Anda tidak akan bergerak atau berpidah tempat terlalu banyak pada saat acara pernikahan. Satu fotografer mengambil foto formal, dan satu lagi mengambil foto candid. Memotret sendirian akan memberikan tekanan tersendiri karena kalian akan dituntut menghasilkan foto-foto bagus disetiap momen pernikahan.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Berani tetapi jangan terlalu mencolok</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Sikap ragu-ragu atau malu-malu tidak akan memberikan foto yang kalian cari, terkadang Sobat harus sedikit berani untuk menangkap momen, bagaimanapun juga timing merupakan segalanya dan berpikirlah untuk mendapatkan posisi yang tepat saat momen penting sehingga tidak mengganggu jalannya acara pernikahan. Bergerak atau berkelilinglah secara efisien, seperti berpindah tempat pada saat pemutaran lagu atau pidato sambutan. Bersikaplah berani ketika mengambil foto-foto penting, terutama foto yang diinginkan oleh kedua pasangan.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Pelajari bagaimana memanipulasi cahaya.</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Kemampuan untuk&nbsp;memantulkan atau menyebarkan (diffuse) cahaya&nbsp;flash merupakan kunci dalam Wedding Photography. Sobat pasti banyak menemui sebuah acara pernikahan di dalam gedung yang memiliki kondisi pencahayaan rendah atau temaram, jika kalian diijinkan untuk bisa menggunakan flash (beberapa tempat seperti gereja tidak memperbolehkan) lihatlah apakah memungkinkan untuk memantulkan cahaya flash ke langit-langit gedung? (ingatlah bahwa memantulkan cahaya flash pada dinding dengan permukaan bewarna akan merubah warna hasil foto kalian), atau pertimbangkan juga menggunakan difuser agar cahaya flash lebih lembut. Gedung acara pernikahan tidak mengijinkan penggunaan flash? maka kalian setidaknya menggunakan lensa cepat dengan aperture lebar atau meninggikan pengaturan&nbsp;ISO. Sebuah lensa yang memiliki fitur image-stabilisation (IS/VR) akan sangat membantu.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Gunakan format RAW</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Kebanyakan fotografer tentu merasa tidak memiliki cukup waktu untuk menggunakan format RAW, mengingat butuh proses lebih panjang dalam paska pemotretan, tetapi acara pernikahan terjadi sekali seumur hidup dan RAW akan sangat berguna karena memiliki fleksibilitas lebih tinggi dalam memanipulasi foto setelah pemotretan. Acara pernikahan terkadang memiliki nuansa pencahayaan yang &lsquo;tricky&rsquo;, maka dari itu RAW merupakan pilihan bagus guna memanipulasi exposure serta white balance menggunakan perangkat lunak.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Lihat hasil foto kalian pada saat acara resepsi</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Salah satu keunggulan fotografi digital adalah kesiapan media. Beberapa fotografer bahkan selalu membawa notebook atau laptop pada saat acara resepsi pernikahan. Mereka melihat kembali dan membuatnya sebagai slideshow, dan memutarnya pada saat acara malam hari.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Pertimbangkan penggunaan background foto.</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Salah satu tantangan dalam Wedding Photography adalah semua orang selalu bergerak kesana kemari, dan ini berarti background foto kalian juga akan berganti-ganti bukan? Idealnya cari BG yang teduh, rapi dan tidak ada elemen-elemen benda yang bisa mencuri perhatian penikmat foto pernikahan tersebut.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Jangan fembuang foto-foto jelek</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Salah satu keunggulan dalam fotografi digital adalah kemudahan mereview foto-foto yang sudah kita ambil, kita bisa dengan muda menghapus foto-foto yang dianggap jelek. Sobat perlu ingat bahwa, foto pada nantinya bisa di-crop atau dimanipulasi untuk memberikan kesan seni atau abstrak dan bisa ditambahkan pada album pernikahan.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Merubah prespektif</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Berusahalah untuk sedikit kreatif dengan jepretan-jepretan kalian. Memang pada nantinya foto-foto dalam album akan berupa foto-foto formal atau pose formal, tetapi pastikan kalian untuk menyisipkan foto-foto dengan angle pemotretan dari bawah, atas, dengan wide angle dan lain-lain.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Fill Flash</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ketika memotret di luar ruangan pada saat setelah acara pernikahan atau saat sesi pemotretan, Sobat mungkin sebaiknya tetap membawa flash kalian turut serta, dan gunakan teknik fill flash. Atur kekuatan atau power flash sebanyak satu atau dua stop agar foto tidak terlalu blow-out, tetapi fill flash adalah suatu keharusan ketika pada kondisi subyek yang backlit (terkena cahaya matahari dari belakang) atau pada saat siang hari yang akan mengakibatkan banyak bayangan kuat.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Mode&nbsp;<em>Continuous Shooting</em></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Kamera dengan fitur memotret dalam jumlah banyak pada satu waktu akan sangat bermanfaat pada acara pernikahan, jika kamera kalian mendukung fitur tersebut, maka gunakanlah. Terkadang foto kedua dari sequence foto adalah foto yang terbaik, karena mereka tampak santai dan telah beradaptasi pada momen tersebut.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Berharap apa yang tidak diharapkan</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Rencana sempurna pun pada prakteknya bisa saja terja</p>\r\n\r\n<p>di kesalahan, tetapi kesalah tersebut bisa menjadi momen yang sempurna di acara pernikahan. Banyak sekali kesalahan yang bisa terjadi pada saat acara pernikahan, seperti cincin yang terselip dan sulit ditemukan, turun hujan ketika acara resepsi berakhir dan lain-lain.</p>\r\n\r\n<p>Momen seperti ini tentu akan menyebabkan sebuah kepanikan, tetapi momen seperti inilah yang bisa menciptakan kenangan yang tidak terlupakan. Cobalah mengabadikan momen tersebut, dan kalian akan mendapatkan foto-foto lucu yang membuat mereka tertawa.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Bersenang-senanglah</h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>Wedding atau pernikahan adalah sebuah perayaan, dan perayaan seharusnya menyenangkan bukan? Semakin Sobat merasa senang sebagai seorang fotografer, maka percayalah kalian akan semakin santai ketika memotret.</p>\r\n', 'de80a32174ad4aa099d916e576a8cb9e.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_paket`
--

CREATE TABLE `kategori_paket` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_paket`
--

INSERT INTO `kategori_paket` (`id_kategori`, `kategori`) VALUES
(1, 'DSLR'),
(2, 'Mirrorless\r\n'),
(3, 'Action Cam'),
(4, 'Lensa'),
(5, 'Aksesoris\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `metode_bayar`
--

CREATE TABLE `metode_bayar` (
  `id_metode` int(11) NOT NULL,
  `metode` varchar(80) DEFAULT NULL,
  `bank` varchar(50) DEFAULT NULL,
  `norek` varchar(50) DEFAULT NULL,
  `atasnama` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `metode_bayar`
--

INSERT INTO `metode_bayar` (`id_metode`, `metode`, `bank`, `norek`, `atasnama`) VALUES
(4, 'Transfer Bank', 'BCA', '1221308439', 'ERIZTA ALIFA PRABANDANI'),
(5, 'Transfer Bank', 'BRI', '175-301-007-714-509', 'ERIZTA ALIFA PRABANDANI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id_order` varchar(15) NOT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `jenkel` varchar(2) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `notelp` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `pinjam` date DEFAULT NULL,
  `kembali` date DEFAULT NULL,
  `bodyo` int(11) DEFAULT NULL,
  `lensaa` int(11) DEFAULT NULL,
  `hari` int(10) NOT NULL,
  `metode_id` int(11) DEFAULT NULL,
  `paket_id_order` int(11) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `status` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id_order`, `nama`, `jenkel`, `alamat`, `notelp`, `email`, `pinjam`, `kembali`, `bodyo`, `lensaa`, `hari`, `metode_id`, `paket_id_order`, `keterangan`, `tanggal`, `status`) VALUES
('INV130518000001', 'ZACH', 'L', 'yogyakarta', '088812763401', 'zach@mail.com', '2018-05-14', '2018-05-14', 1, 0, 0, 4, 1, '', '2018-05-13', 'LUNAS'),
('INV140518000001', 'Nadia', 'P', 'Wonogiri', '021345234111', 'nadia@mail.com', '2018-05-14', '2018-05-15', 1, 1, 0, 4, 1, '', '2018-05-14', 'LUNAS'),
('INV140518000002', 'Fajar', 'L', 'Srumbung', '085946787999', 'fajar@mail.com', '2018-05-14', '2018-05-16', 1, 3, 2, 4, 1, '', '2018-05-14', 'LUNAS'),
('INV140518000003', 'Winda', 'P', 'Purworejo', '082145632', 'winda@mail.com', '2018-05-14', '2018-05-15', 2, 1, 1, 4, 1, '', '2018-05-14', 'BELUM LUNAS'),
('INV140518000004', 'Titik', 'P', 'Sapen', '089778654230', 'titik@mail.com', '2018-05-14', '2018-05-15', 1, 2, 1, 4, 1, '', '2018-05-14', 'BELUM LUNAS'),
('INV160518000001', 'Aku', 'P', 'Yogyakarta', '088806803072', 'eriztaalifad@gmail.com', '2018-05-16', '2018-05-18', 3, 0, 0, 4, 2, '', '2018-05-16', 'LUNAS'),
('INV190518000001', 'Roy', 'L', 'Jogja', '088806803072', 'roy@mail.com', '2018-05-19', '2018-05-20', 1, 5, 1, 5, 2, '', '2018-05-19', 'BELUM LUNAS'),
('INV190518000002', 'Dicki', 'L', 'Solo', '081234098445', 'dicky@mail.com', '2018-05-19', '2018-05-20', 1, 0, 1, 4, 2, '', '2018-05-19', 'LUNAS'),
('INV200518000001', 'Dyon', 'L', 'Jogja', '081234098445', 'dyon@mail.com', '2018-05-21', '2018-05-22', 1, 1, 1, 4, 5, '', '2018-05-20', ''),
('INV200518000002', 'bintang', 'L', 'jogja', '081234098445', 'bintangreez@mail.com', '2018-05-20', '2018-05-21', 1, 2, 1, 4, 5, '', '2018-05-20', ''),
('INV200518000005', 'Marty', 'L', 'jogja', '088806803072', 'marty@mail.com', '2018-05-21', '2018-05-26', 1, 2, 2, 4, 5, '', '2018-05-20', ''),
('INV200518000006', 'Jon', 'L', 'jogja', '081234098445', 'jon@mail.com', '2018-05-20', '2018-05-22', 0, 1, 2, 5, 4, '', '2018-05-20', ''),
('INV200518000007', 'Mario', 'L', 'Jogja', '081234098445', 'mario.a@yahoo.com', '2018-05-20', '2018-05-21', 0, 3, 2, 4, 5, '', '2018-05-20', ''),
('INV200518000008', 'Bismillah', 'P', 'Jogja', '088806803072', 'bismillah@mail.com', '2018-05-20', '2018-05-21', 1, 0, 0, NULL, 2, '', '2018-05-20', ''),
('INV200518000010', 'Bismillah', 'P', 'Jogja', '088806803072', 'bismillah@mail.com', '2018-05-20', '2018-05-21', 1, 0, 3, 4, 2, '', '2018-05-20', ''),
('INV200518000011', 'Badu', 'P', 'Jogja', '088806803072', 'bismillah@mail.com', '2018-05-20', '2018-05-21', 1, 0, 0, 4, 2, '', '2018-05-20', ''),
('INV200518000012', 'Budi', 'P', 'Jogja', '088806803072', 'bismillah@mail.com', '2018-05-20', '2018-05-21', 2, 0, 0, 4, 2, '', '2018-05-20', ''),
('INV210518000002', 'erizta alifad', 'L', 'JL.TIMOHO, SAPEN GK 1 NO. 520 RT 28 RW 08, GANG WI', '088806803072', 'eriztaalifad@gmail.com', '2018-05-21', '2018-05-21', 1, 1, 0, 4, 5, '', '2018-05-21', ''),
('INV210518000003', 'riko', 'L', 'Jogja', '088806803072', 'riko@mail.com', '2018-05-21', '2018-05-22', 0, 1, 0, NULL, 5, '', '2018-05-21', ''),
('INV210518000004', 'winda', 'P', 'jogja', '081234098445', 'winda@mail.com', '2018-05-21', '2018-05-22', 1, 0, 0, 4, 2, '', '2018-05-21', 'LUNAS'),
('INV240518000001', 'sada', 'L', 'dsad', '088806803072', 'eriztaalifad@gmail.com', '2018-05-01', '2018-05-09', 0, 1, 0, 4, 4, '', '2018-05-24', 'LUNAS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `idpaket` int(11) NOT NULL,
  `nama_paket` varchar(100) DEFAULT NULL,
  `hrg_body` int(11) DEFAULT NULL,
  `hrg_lensa` int(11) DEFAULT NULL,
  `deskripsi` longtext,
  `kategori_id` int(11) DEFAULT NULL,
  `gambar` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`idpaket`, `nama_paket`, `hrg_body`, `hrg_lensa`, `deskripsi`, `kategori_id`, `gambar`) VALUES
(1, 'Paket 1 Canon EOS 650D', 100000, 125000, '<p>Sewa&nbsp;Kamera&nbsp;Canon&nbsp;EOS&nbsp;650D</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Body Only</p>\r\n\r\n<p>100.000 / 24 jam</p>\r\n\r\n<p>80.000 / 12 jam</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Paket Lensa Kit</p>\r\n\r\n<p>125.000 / 24 jam</p>\r\n\r\n<p>105.000 / 12 jam</p>\r\n', 1, 'b3dd356f1f636d442d3d9d8f3e5d15ba.png'),
(2, 'Paket 2 Sewa Kamera Sony A6000 ', 150000, 0, '<p>Harga Sewa</p>\r\n\r\n<p>150.000 / 24 jam</p>\r\n\r\n<p>110.000 / 12 jam</p>\r\n', 2, 'e30a40ae53b27115ea09fa355e567f09.png'),
(3, 'Paket 3 Sewa Lensa Nikon 80-200mm f/2.8D ED', 0, 120000, '<p>Nikon adalah merek kamera maupun lensa yang sangat beken di telinga kita. Nah Nikon mengeluarkan lensa ciamik yang bernama&nbsp;Nikon 80-200mm f/2.8D ED yang siap anda sewa dengan harga murah di DIYKamera.</p>\r\n\r\n<p>Lensa&nbsp;Nikon 80-200mm f/2.8D ED ini adalah lensa yang berjenis tele zoom yang sangat baik untuk anda yang ingin mengambil gambar dengan objek jauh. Lensa Nikon ini dibekali dengan focal length dengan range antara 90-200mm, sedangkan untuk diafragma konstan dengan nilai f/2.8. Untuk anda yang ingin mengambil objek olahraga, satwa liar, ataupun potret wajib untuk sewa lensa Nikon ini.</p>\r\n\r\n<p>Bagi anda yang ingin rental&nbsp;Nikon 80-200mm f/2.8D ED maka dapat langsung klik tombol &ldquo;pesan sekarang&rdquo; atau menghubungi kami melalui informasi kontak yang tersedia.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:819px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<h2>Spesifikasi Nikon 80-200mm f/2.8D ED</h2>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Spesifikasi Umum</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tipe Lensa</td>\r\n			<td>Zoom lens</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ukuran Format Maks</td>\r\n			<td>35mm FF</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Focal Length</td>\r\n			<td>80&ndash;200 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Image Stabilization</td>\r\n			<td>Tidak</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mount Lensa</td>\r\n			<td>Nikon F (FX)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Aperture</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Maksimal Aperture</td>\r\n			<td>F2.8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Minimal Aperture</td>\r\n			<td>F22</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Aperture Ring</td>\r\n			<td>Ya</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jumlah Diaphragm Blades</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Optik</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Element</td>\r\n			<td>16</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Grup</td>\r\n			<td>11</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Fokus</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Minimal Fokus</td>\r\n			<td>1.50 m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Maksimal Pembesaran</td>\r\n			<td>0.17&times;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Autofocus</td>\r\n			<td>Ya</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tipe Motor</td>\r\n			<td>Screw drive from camera</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Full Time Manual</td>\r\n			<td>Tidak</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Metode Fokus</td>\r\n			<td>Internal</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Skala Jarak</td>\r\n			<td>Ya</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Skala DoF</td>\r\n			<td>Tidak</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Bodi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berat</td>\r\n			<td>1300&nbsp;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Diameter</td>\r\n			<td>87 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Panjang</td>\r\n			<td>187&nbsp;mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bahan</td>\r\n			<td>metal barrel, metal mount</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Warna</td>\r\n			<td>Hitam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Metode Zoom</td>\r\n			<td>Rotary (internal)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power Zoom</td>\r\n			<td>Tidak</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kelengkapan</p>\r\n\r\n<ul>\r\n	<li>1 Front Cap</li>\r\n	<li>1 Rear Cap</li>\r\n	<li>1 Pouch</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Harga Sewa</p>\r\n\r\n<p>120.000 / 24 jam</p>\r\n', 4, '4bd3ce11debb7957fe05df9d3b47ebe7.png'),
(4, 'Paket 4 Sewa Lensa Canon EF 70-200mm f/4L USM', 0, 110000, '<p>Informasi</p>\r\n\r\n<p>Canon sangat baik memainkan perannya sebagai pemain utama di bidang fotografi dan videografi. Hal ini dibuktikan dengan hadirnya lensa Canon EF 70-200 F/4L USM yang sangat terkenal di pasaran. Lensa Canon yang keren ini dapat anda sewa dengan harga murah di Rent Camera XYZ.</p>\r\n\r\n<p>Lensa dengan tipe tele zoom ini sangat bagus untuk mengambil objek jarak jauh seperti untuk memotret olahraga, satwa liar, ataupun potrait. Dengan focal length rentang antara 70 sampai 200mm dan bukaan diafragma yaitu F/4L, lensa Canon ini dapat menghasilkan karya yang membanggakan.</p>\r\n\r\n<p>Bagi anda yang ingin rental lensa&nbsp;Canon EF 70-200 F/4L, yuk langsung saja klik tombol &ldquo;pesan sekarang&rdquo; atau menghubungi kami melalui informasi kontak yang tersedia.</p>\r\n\r\n<p>Kelengkapan</p>\r\n\r\n<ul>\r\n	<li>1 Front Cap</li>\r\n	<li>1 Rear Cap</li>\r\n	<li>1 Pouch</li>\r\n</ul>\r\n\r\n<p>Lensa ini merupakan lensa tele zoom dengan focal length minimal 70mm sampai 200mm. Canon EF 70-200 F/4L USM ini cocok untuk fotografer pemula maupun professional karena ukurannya yang tidak terlalu besar dan ringan. Lensa Canon ini memiliki bukaan diafragma konstan F/4 pada focal length 70mm sampai 200mm. Selain itu dengan 2 (dua) UD glass, lensa ini dapat menghasilkan gambar yang tajam.</p>\r\n\r\n<p>Lensa ini merupakan lensa yang termasuk kategori L series milik Canon sehingga memiliki built quality lensa yang kuat yang tentunya anti terhadap cipratan air dan debu. Lensa ini merupakan salah satu lensa Canon yang sangat cocok untuk kebutuhan memotret olahraga, satwa liar, dan portrait. Bukaan diafragma lensa ini merupakan yang terbesar yaitu 4 (empat), namun jangan salah karena lensa ini mampu menghasilkan karakter gambar yang bokeh dan hasil warna yang baik.</p>\r\n\r\n<p>Ciri khas dari desain lensa ini saat pertama kali anda sewa lensa Canon EF 70-200 F/4L USM adalah warnanya yang mencolok, karena lensa ini memiliki warna dasar putih dan terdapat garis merah pada ujung lensa yang menandakan lensa L series. Pada Canon EF 70-200 F/4L USM ini juga terdapat jendela auto fokus yang akan sangat membantu kita untuk mengambil fokus pada mode manual. Selain itu terdapat tombol pilihan auto fokus dan manual fokus dan tombol pilihan putaran fokus yang dapat kita atur pada maksimal putaran 3m atau 1.2m. Hal ini dapat disamakan pada tombol pilihan putaran fokus limit atau full pada kebanyakan lensa. Keistimewaan lain dari Canon EF 70-200 F/4L USM ini adalah memiliki internal fokus sehingga lensa tidak akan bertambah panjang ataupun pendek saat kita mengambil fokus. Mounting dari lensa ini adalah terbuat dari besi yang kokoh, selain itu pada bagian mounting terpadat karet yang membalut yang akan sangat berfungsi untuk melindungi lensa Canon ini dari cipratan air (water sealed). Untuk kompabilitasnya sendiri, lensa ini dapat dipasang pada kamera Canon jenis Fullframe dan APS-C, sehingga sangat cocok apabila anda rental lensa Canon EF 70-200 F/4L USM Jogja di DIYKamera ini untuk digabungkan dengan kamera Canon Fullfram ataupun APS-C anda.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"text-align:center\">\r\n			<h2>Spesifikasi Canon EF 70-200mm f/4L USM</h2>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Spesifikasi Umum</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tipe Lensa</td>\r\n			<td>Zoom lens</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ukuran Format Maks</td>\r\n			<td>35mm FF</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Focal Length</td>\r\n			<td>70&ndash;200&nbsp;mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Image Stabilization</td>\r\n			<td>Tidak</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mount Lensa</td>\r\n			<td>Canon EF</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Aperture</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Maksimal Aperture</td>\r\n			<td>F4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Minimal Aperture</td>\r\n			<td>F32</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Aperture Ring</td>\r\n			<td>Tidak</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jumlah Diaphragm Blades</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Optik</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Element</td>\r\n			<td>16</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Grup</td>\r\n			<td>13</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Fokus</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Minimal Fokus</td>\r\n			<td>1.20&nbsp;m&nbsp;(47.24&Prime;)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Maksimal Pembesaran</td>\r\n			<td>0.21&times;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Autofocus</td>\r\n			<td>Ya</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tipe Motor</td>\r\n			<td>Ring-type ultrasonic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Full Time Manual</td>\r\n			<td>Ya</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Metode Fokus</td>\r\n			<td>Internal</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Skala Jarak</td>\r\n			<td>Ya</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Skala DoF</td>\r\n			<td>Ya</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Bodi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berat</td>\r\n			<td>705&nbsp;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Diameter</td>\r\n			<td>76&nbsp;mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Panjang</td>\r\n			<td>172&nbsp;mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bahan</td>\r\n			<td>Metal barrel, metal mount</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Warna</td>\r\n			<td>Abu-abu dan Hitam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Metode Zoom</td>\r\n			<td>Rotary (internal)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power Zoom</td>\r\n			<td>Tidak</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Harga Sewa</p>\r\n\r\n<p>110.000 / 24 jam</p>\r\n', 4, 'fa52441c10a96dcdfda2879c841f3b34.png'),
(5, 'Paket 5 Sewa Lensa Canon EF 17-40 F/4L USM', 0, 110000, '<p>Lensa ini merupakan lensa andalan para fotografer Canon karena dimensi dari hasil gambarnya yang dramatis dan luas, nah Canon EF 17-40 F/4L USM ini termasuk kategori lensa ultrawide dengan focal length minimal 17mm sampai 40mm. Lensa ini cocok untuk fotografer pemula maupun professional karena ukurannya yang tidak terlalu besar dan ringan. Lensa ini memiliki bukaan diafragma konstan F/4 pada focal length 17mm sampai 40mm. Lensa ini menghasilkan gambar yang tajam karena dibekali dengan 2 (dua) buah UD glass.</p>\r\n\r\n<p>Selain itu lensa ini termasuk pada jajaran lensa L series milik Canon sehingga memiliki built quality lensa yang kokoh serta mampu menahan cipratan air dan debu. Lensa ini merupakan lensa ini sangat cocok untuk kebutuhan memotret landskap, dokumentasi, dan foto dramatis yang memerlukan sudut lebar seperti prewedding. Walaupun Canon EF 17-40 F/4L USM ini memiliki bukaan diafragma terbesar pada angka 4 namun lensa ini mampu menghasilkan karakter gambar yang bokeh dan hasil warna yang baik.</p>\r\n\r\n<table style=\"width:819px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<h2>Spesifikasi Canon EF 17-40mm f/4L USM</h2>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Spesifikasi Umum</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tipe Lensa</td>\r\n			<td>Zoom lens</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ukuran Format Maks</td>\r\n			<td>35mm FF</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Focal Length</td>\r\n			<td>17&ndash;40 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Image Stabilization</td>\r\n			<td>Tidak</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mount Lensa</td>\r\n			<td>Canon EF</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Aperture</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Maksimal Aperture</td>\r\n			<td>F4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Minimal Aperture</td>\r\n			<td>F22</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Aperture Ring</td>\r\n			<td>Tidak</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jumlah Diaphragm Blades</td>\r\n			<td>7</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Optik</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Element</td>\r\n			<td>12</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Grup</td>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Fokus</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Minimal Fokus</td>\r\n			<td>0.28 m (11.02&Prime;)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Maksimal Pembesaran</td>\r\n			<td>0.24&times;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Autofocus</td>\r\n			<td>Ya</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tipe Motor</td>\r\n			<td>Ultrasonic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Full Time Manual</td>\r\n			<td>Ya</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Metode Fokus</td>\r\n			<td>Internal</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Skala Jarak</td>\r\n			<td>Ya</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Skala DoF</td>\r\n			<td>Ya</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Bodi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berat</td>\r\n			<td>500&nbsp;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Diameter</td>\r\n			<td>84 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Panjang</td>\r\n			<td>97 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bahan</td>\r\n			<td>Metal barrel, metal mount</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Warna</td>\r\n			<td>Hitam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Metode Zoom</td>\r\n			<td>Rotary (internal)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power Zoom</td>\r\n			<td>Tidak</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Harga Sewa</p>\r\n\r\n<p>110.000 / 24 jam</p>\r\n', 4, '73c05c0f20041dbe325087c8c1ac29b0.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_bayar` int(11) NOT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `metode_id_bayar` int(11) DEFAULT NULL,
  `order_id` varchar(15) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `pengirim` varchar(70) DEFAULT NULL,
  `bukti_transfer` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_bayar`, `tgl_bayar`, `metode_id_bayar`, `order_id`, `jumlah`, `pengirim`, `bukti_transfer`) VALUES
(10, '2018-05-14', 4, 'INV140518000003', 325000, 'Winda', 'file_1526771910.jpg'),
(12, '2018-05-20', 4, 'INV200518000001', 110000, 'Dyon', 'file_1526816508.jpg'),
(13, '2018-05-14', 4, 'INV140518000002', 475000, 'Fajar', 'file_1526816572.jpg'),
(14, '2018-05-20', 4, 'INV200518000002', 220000, 'bintang', 'file_1526817461.jpg'),
(16, '2018-05-14', 4, 'INV140518000004', 350000, 'Titik', 'file_1526817925.jpg'),
(17, '2018-05-19', 4, 'INV190518000001', 150000, 'Roy', 'file_1526817964.jpg'),
(18, '2018-05-21', 4, 'INV210518000002', 110000, 'erizta alifad', 'file_1526854883.jpg'),
(19, '2018-05-21', 4, 'INV210518000004', 150000, 'Winda', 'file_1526872431.jpg'),
(20, '2018-05-21', 4, 'INV240518000001', 110000, 'sada', 'file_1527134437.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text,
  `inbox_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` int(11) DEFAULT '1' COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(1, 'Archi', 'archie@mail.com', '081081081081', 'woy', '2018-05-10 09:37:47', 0),
(2, 'Archi', 'archie@mail.com', '3', 'f', '2018-05-10 10:50:45', 0),
(3, 'Archi', 'archie@mail.com', '3', 'test', '2018-05-10 10:51:08', 0),
(4, 'ZACH', 'zach@mail.com', '088890875674', 'ping', '2018-05-13 12:14:33', 0),
(5, 'Titik', 'titik@mail.com', '0', 'ready?', '2018-05-14 08:49:51', 0),
(6, 'Roy', 'roy@mail.com', '088806803072', 'test...', '2018-05-19 13:02:30', 0),
(7, 'Sally', 'sally@mail.com', '088806803072', 'ping woy', '2018-05-19 13:07:22', 0),
(8, 'cole', 'colesprouse@mail.com', '088806803072', 'test 123', '2018-05-19 22:04:05', 0),
(9, 'selena', 'selena@mail.com', '088806803456', '...', '2018-05-19 22:04:35', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(908, '2018-04-29 08:23:11', '::1', 'Chrome'),
(909, '2018-04-29 23:12:23', '::1', 'Chrome'),
(910, '2018-05-04 04:01:15', '::1', 'Chrome'),
(911, '2018-05-06 00:45:48', '::1', 'Chrome'),
(912, '2018-05-10 03:54:50', '::1', 'Chrome'),
(913, '2018-05-12 03:49:51', '127.0.0.1', 'Chrome'),
(914, '2018-05-12 03:50:34', '::1', 'Chrome'),
(915, '2018-05-13 11:19:46', '::1', 'Chrome'),
(916, '2018-05-14 03:03:14', '::1', 'Chrome'),
(917, '2018-05-16 05:51:52', '::1', 'Chrome'),
(918, '2018-05-18 03:40:52', '::1', 'Chrome'),
(919, '2018-05-18 22:29:07', '::1', 'Chrome'),
(920, '2018-05-18 17:00:00', '::1', 'Opera'),
(921, '2018-05-18 17:00:00', '::1', 'Opera'),
(922, '2018-05-13 17:00:00', '::1', 'Opera'),
(923, '2018-05-17 17:00:00', '::1', 'Firefox'),
(924, '2018-05-13 17:00:00', '::1', 'Firefox'),
(925, '2018-05-13 17:00:00', '::1', 'Firefox'),
(926, '2018-05-12 17:00:00', '::1', 'Chrome'),
(927, '2018-05-16 17:00:00', '::1', 'Firefox'),
(928, '2018-05-13 17:00:00', '::1', 'Firefox'),
(929, '2018-05-12 17:00:00', '::1', 'Chrome'),
(930, '2018-05-15 17:00:00', '::1', 'Firefox'),
(931, '2018-05-12 17:00:00', '::1', 'Chrome'),
(932, '2018-05-08 17:00:00', '::1', 'Firefox'),
(933, '2018-05-09 17:00:00', '::1', 'Firefox'),
(934, '2018-05-07 17:00:00', '::1', 'Firefox'),
(935, '2018-05-07 17:00:00', '::1', 'Firefox'),
(936, '2018-05-12 17:00:00', '::1', 'Opera'),
(937, '2018-05-12 17:00:00', '::1', 'Chrome'),
(938, '2018-05-12 17:00:00', '::1', 'Chrome'),
(939, '2018-05-12 17:09:00', '::1', 'Firefox'),
(940, '2018-05-05 17:09:00', '::1', 'Chrome'),
(941, '2018-05-04 17:00:00', '::1', 'Chrome\r\n'),
(942, '2018-05-19 22:01:20', '::1', 'Firefox'),
(943, '2018-05-19 22:01:20', '::1', 'Firefox'),
(944, '2018-05-19 22:01:20', '::1', 'Firefox'),
(945, '2018-05-19 22:03:20', '::1', 'Firefox'),
(946, '2018-05-19 22:03:20', '::1', 'Firefox'),
(947, '2018-05-19 22:03:20', '::1', 'Firefox'),
(948, '2018-05-19 22:01:20', '::1', 'Firefox'),
(949, '2018-05-19 22:01:20', '::1', 'Firefox'),
(950, '2018-05-19 22:01:20', '::1', 'Firefox'),
(951, '2018-05-19 22:03:20', '::1', 'Firefox'),
(952, '2018-05-19 22:03:20', '::1', 'Firefox'),
(953, '2018-05-19 22:03:20', '::1', 'Firefox'),
(954, '2018-05-19 22:08:00', '::1', 'Chrome'),
(955, '2018-05-19 22:08:00', '::1', 'Chrome'),
(956, '2018-05-19 22:09:00', '::1', 'Chrome'),
(957, '2018-05-19 22:09:00', '::1', 'Chrome'),
(958, '2018-05-19 22:09:00', '::1', 'Chrome'),
(959, '2018-05-19 22:09:00', '::1', 'Chrome'),
(960, '2018-05-19 22:09:00', '::1', 'Chrome'),
(961, '2018-05-19 22:09:00', '::1', 'Chrome'),
(962, '2018-05-20 21:33:50', '::1', 'Firefox'),
(963, '2018-05-24 03:56:38', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimoni`
--

CREATE TABLE `testimoni` (
  `idtestimoni` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `pesan` text,
  `status` varchar(2) DEFAULT NULL,
  `tgl_post` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `testimoni`
--

INSERT INTO `testimoni` (`idtestimoni`, `nama`, `email`, `pesan`, `status`, `tgl_post`) VALUES
(1, 'Aisya', 'aisy11@mail.com', 'Kamera Bagus', '1', '2018-05-10'),
(2, 'Roy', 'roy@mail.com', 'Keren qaqa', '1', '2018-05-10'),
(3, 'Hadid', 'hadid@mail.com', 'Nice bung!', '1', '2018-05-10'),
(4, '', 'arch@mail.com', '', '1', '2018-05-13'),
(7, 'Titik', 'titik@mail.com', 'trusted...', '1', '2018-05-14'),
(8, 'ARCHIBALD', 'arch@mail.com', 'good!!!!', '1', '2018-05-14'),
(9, 'Alfia', 'alfia@mail.com', 'asik mantab', '1', '2018-05-14'),
(10, 'Fajar', 'fajar@mail.com', 'nice', '0', '2018-05-21'),
(11, 'winda', 'winda@mail.com', 'nice', '1', '2018-05-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`idalbum`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`idberita`),
  ADD KEY `adminid` (`user`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `albumid` (`albumid`);

--
-- Indexes for table `info_fotografi`
--
ALTER TABLE `info_fotografi`
  ADD PRIMARY KEY (`id_if`);

--
-- Indexes for table `kategori_paket`
--
ALTER TABLE `kategori_paket`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `metode_bayar`
--
ALTER TABLE `metode_bayar`
  ADD PRIMARY KEY (`id_metode`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `paket_id_order` (`paket_id_order`),
  ADD KEY `metode_id` (`metode_id`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`idpaket`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_bayar`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `metode_id_bayar` (`metode_id_bayar`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`idtestimoni`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `idalbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `idberita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `info_fotografi`
--
ALTER TABLE `info_fotografi`
  MODIFY `id_if` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `kategori_paket`
--
ALTER TABLE `kategori_paket`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `metode_bayar`
--
ALTER TABLE `metode_bayar`
  MODIFY `id_metode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `idpaket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_bayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=964;
--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `idtestimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `galeri_ibfk_1` FOREIGN KEY (`albumid`) REFERENCES `album` (`idalbum`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`paket_id_order`) REFERENCES `paket` (`idpaket`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD CONSTRAINT `paket_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_paket` (`id_kategori`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
