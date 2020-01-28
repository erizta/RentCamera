<html lang="id">
    <!--<![endif]-->
    <head>
        <title>Booking Online</title>

        <!-- Meta tags -->
        <meta charset="utf-8">
        <meta name="description" content="Website Profil Rent Camera" />
        <meta name="author" content="Erizta Alifa P" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

        <!-- Stylesheets -->
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/base.css'?>" />
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/skeleton.css'?>" />
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/flexslider.css'?>" />
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/jquery.fancybox-1.3.4.css'?>" />
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/validationEngine.jquery.css'?>" />
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/smoothness/jquery-ui-1.8.22.custom.css'?>" />
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/ui.spinner.css'?>" />
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/lamoon.css'?>" />
        <link href='http://fonts.googleapis.com/css?family=Lato|Lato:300|Vollkorn:400italic' rel='stylesheet' type='text/css'>


        <!-- Favicons -->
        <link rel="shortcut icon" href="<?php echo base_url().'theme/images/f-icon.png'?>" />
         <?php
            function limit_words($string, $word_limit){
                $words = explode(" ",$string);
                return implode(" ",array_splice($words,0,$word_limit));
            }

        ?>
    </head>
    <body>

        <!-- Background Image -->
        <img src="<?php echo base_url().'theme/images/bg1.jpg'?>" class="bg" alt="" />

        <!-- Root Container -->
        <div id="root-container" class="container">
            <div id="wrapper" class="sixteen columns">

               <!-- Banner -->
               <div id="sub-banner">
                   <div id="logo">
                   </div>
                   <img src="<?php echo base_url().'theme/images/placeholders/banner.jpg'?>" alt="" />
               </div>

               <!-- Main Menu -->
                <div id="menu" class="home">
                    <ul id="root-menu" class="sf-menu">
                        <?php
                        $this->load->view('front/menu');
                    ?>
                    </ul>
                </div>
                <?php
                    $b=$pkt->row_array();
                ?>
                <!-- Content -->
                <div id="content" class="reservation">
                    <div class="container section">
                        <div class="one-third column">
                            <h3 class="nobg">Informasi Tata cara pemesanan</h3>
                            <p>1. Isi Data-data Di Form pemesanan Dengan Lengkap dan Benar</p>
              							<p>2. Jika anda memimliki Permintaan Khusus, masukan di Form bagian *Permintaan Khusus.</p>
              							<p>3. Jika anda ingin melakukan pembayar DP Pemesanan ketik(Down payment) di From bagian *Permintaan Khusus.</p>
              							<p>4. Jika anda ingin membayaran penuh Pemesanan ketik (Full payment) di Form bagian *Permintaan khusus.</p>
              							<p>5. Setelah semua data-data di form pemesanan tersisi dengan lengkap maka akan keluar Invoice anda</p>
              							<p>6. Setelah itu silahkan Lakukan pembayaran tangihan anda sesuai dengan Invoice</p>
              							<p>7. setelah melakukan pembayaran maka anda diwajibkan Menkorfirmasi kami melalui Menu Komfirmasi</p>
              							<p>8. setelah itu kami akan Menvalidasi bukti Pemesanan anda<p>
                            <div class="info box">
                                jika anda mengisi Formm pemsesanan ini, anda telah menyatakan sepakat dengan syarat dan ketentuan kami.
                            </div>
                        </div>
                        <div class="two-third column last">
                            <form style="margin-left:120px;" action="<?php echo base_url().'paket/order'?>" method="post">
                                <h3><span class="left">Formulir Pemesanan</span></h3>
                                <p>
                                    <label for="firstname" class="required label">Nama Lengkap:</label>
                                    <input id="firstname" type="text" name="nama" style="width:300px;" required/>
                                </p>
                                <p>
                                    <label for="payment" class="required label">Jenis Kelamin:</label>
                                    <select id="payment" class="" name="jenkel" style="width:300px;" required>
                                        <option value="L">Laki-Laki</option>
                                        <option value="P">Perempuan</option>
                                    </select>
                                </p>
                                <p>
                                    <label id="address-label" for="address" class="required label">Alamat:</label>
                                    <textarea id="address" class="" name="alamat" cols="28" rows="5" style="width:300px;" required></textarea>
                                </p>
                                <p>
                                    <label for="phone" class="required label">No Telp/HP:</label>
                                    <input id="phone" class="" type="text" name="notelp" style="width:300px;" required/>
                                </p>
                                <p>
                                    <label for="email" class="required label">Email:</label>
                                    <input id="email" class="" placeholder="Contoh: justinbieber@mail.com" type="text" name="email" style="width:300px;" required/>
                                </p>
                                <h3 class="extra-margin top"><span class="left">Sewa Info</span></h3>
                                <p>
                                    <label for="room-type" class="required label">Paket Sewa:</label>
                                    <input type="hidden" name="paket" class="" value="<?php echo $b['idpaket']?>" style="width:360px;"/>
                                    <input type="text" name="nama_paket" class="" value="<?php echo $b['nama_paket']?>" style="width:400px;" readonly="readonly" required/>

                                </p>
                                <p>
                                    <label for="checkin" class="required label">Peminjaman:</label>
                                    <input type="text" readonly="readonly" id="checkin" class="datepicker" name="pinjam" style="width:300px;" required/>

                                </p>
                                <p>
                                    <label for="checkout" class="required label">Pengembalian:</label>
                                    <input type="text" readonly="readonly" id="checkout" class="datepicker" name="kembali" style="width:300px;" required/>

                                </p>
                                <p>
                                    <label for="body" class="required label">Body:</label>
                                    <input type="number" id="body" name="body" value="0" class="spinner-min0" />
                                </p>
                                <p>
                                    <label for="lensa" class="required label">Lensa:</label>
                                    <input type="number" id="lensa" name="lensa" value="0" class="spinner-min0" />
                                </p>

                                <p>
                                    <label id="note" for="notebox" class="label">Permintaan Khusus:</label>
                                    <textarea id="notebox" name="notebox" cols="28" rows="5" style="width:300px;"></textarea>
                                </p>

                                <p>
                                    <label></label>
                                    <button type="submit" class="medium gray button">Lanjutkan</button>
                                </p>
                            </form>

                        </div>
                    </div>
                </div>

                <!-- Footer -->
                <div id="footer">
                    <div class="container section end">
                        <div id="footer-about" class="one-fourth column">
                            <p><img src="<?php echo base_url().'theme/images/ft-logo.png'?>" alt="" />
                            </p>
                            <p>
                <br><a href="#">Alamat Kantor:</a></br>
                                <span>Jl. XYZ, DI Yogyakarta</span>
                                <span>Telp: 081 232 911 356</span>
                            </p>
                            <p>
                                <span>Telp: 088 806 803 072</span>
                                <span>Email: eriztaalifad@gmail.com</span>
                            </p>
                        </div>
                        <div id="footer-offers" class="one-fourth column">
                            <h4><span class="footer left">News &amp; Events</span></h4>
                            <ul>
                             <?php
                            foreach ($berita->result_array() as $j) {
                                    $idberitaf=$j['idberita'];
                                    $judulf=$j['judul'];
                                    $isif=limit_words($j['isi'],10);
                                    $tglpostf=$j['tglpost'];
                                    $gbrf=$j['gambar'];
                                    $userf=$j['user'];
                            ?>
                                <li>
                                    <a href="<?php echo base_url().'berita_post/detail_berita/'.$idberitaf;?>">
                                      <img width="50" height="50" src="<?php echo base_url().'assets/gambars/'.$gbrf;?>" alt="" /><?php echo $isif;?></a>
                                </li>

                                <?php } ?>
                            </ul>
                        </div>
                        <div id="footer-offers" class="one-fourth column">
                            <h4><span class="footer left">Paket Sewa</span></h4>
                            <ul>
                            <?php
                            foreach ($paket->result_array() as $h) {
                                $idpaketf=$h['idpaket'];
                                $namapaketf=$h['nama_paket'];
                                $gambarf=$h['gambar'];
                            ?>
                                <li>
                                    <a href="<?php echo base_url().'paket/detail_paket/'.$idpaketf;?>">
                                      <img width="50" height="50" src="<?php echo base_url().'assets/gambars/'.$gambarf;?>" alt="" /><?php echo $namapaketf;?></a>
                                </li>
                            <?php } ?>
                            </ul>
                        </div>
                        <div id="footer-gallery" class="one-fourth column last">
                            <h4><span class="footer left">Photo Gallery</span></h4>
                            <ul>
                                <?php
                                    foreach ($photo->result_array() as $p):
                                    $jdl_galeri=$p['jdl_galeri'];
                                    $gbr_galeri=$p['gbr_galeri'];
                                ?>
                                <li>
                                    <a href="<?php echo base_url().'assets/gambars/'.$gbr_galeri;?>" class="image-box" rel="beach">
                                      <img src="<?php echo base_url().'assets/gambars/'.$gbr_galeri;?>"  alt="" /></a>
                                </li>
                                <?php endforeach ?>
                            </ul>
                            <p>
                                <a href="<?php echo base_url().'detail_photo/galeri';?>">Lihat Semua</a>
                            </p>
                        </div>
                    </div>
                </div>


                <!-- Copyright and Social Icons -->
                <div id="copyright">
                    <div class="container section end">
                        <ul id="social">
                            <li>
                                <a href="http://facebook.com"><img src="<?php echo base_url().'theme/images/social/facebook.png'?>" alt="" /></a>
                            </li>
                            <li>
                                <a href="http://flickr.com"><img src="<?php echo base_url().'theme/images/social/flickr.png'?>" alt="" /></a>
                            </li>
                            <li>
                                <a href="http://twitter.com"><img src="<?php echo base_url().'theme/images/social/twitter.png'?>" alt="" /></a>
                            </li>
                            <li>
                                <a href="http://vimeo.com"><img src="<?php echo base_url().'theme/images/social/vimeo.png'?>" alt="" /></a>
                            </li>
                            <li>
                                <a href="http://rss.com"><img src="<?php echo base_url().'theme/images/social/rss.png'?>" alt="" /></a>
                            </li>
                            <li>
                                <a href="http://google.com"><img src="<?php echo base_url().'theme/images/social/google-plus.png'?>" alt="" /></a>
                            </li>
                            <li>
                                <a href="http://linkedin.com"><img src="<?php echo base_url().'theme/images/social/linkedin.png'?>" alt="" /></a>
                            </li>
                            <li>
                                <a href="http://dribbble.com"><img src="<?php echo base_url().'theme/images/social/dribbble.png'?>" alt="" /></a>
                            </li>
                        </ul>
                        <span id="text">Copyright &copy; <?php date_default_timezone_set('Asia/Jakarta'); echo date('Y');?> | <a href="http://instagram.com.eriztaalifad.com">Erizta Alifa P</a>.</span>

                    </div>
                </div>
            </div>
        </div>

            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery-1.7.2.min.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery.easing.1.3.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery.flexslider-min.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery.hoverIntent.minified.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/superfish.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery.cycle.lite.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery.fancybox-1.3.4.pack.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery.validationEngine.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery.validationEngine-en.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery-ui-1.8.22.custom.min.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/ui.spinner.min.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/lamoon.js'?>"></script>

    </body>
</html>
