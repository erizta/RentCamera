<html lang="id">
    <!--<![endif]-->
    <head>
        <title>Konfirmasi Pembayaran</title>

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

                <!-- Content -->
                <div id="content" class="reservation">
                    <div class="container section">
                        <div class="one-third column">
                            <h3 class="nobg">Ketentuan dan Kebijakan</h3>
                            <p>1. Setalah melakukan pembayaran anda wajib mengkonfirmasi kami melalui from ini.</p>
              							<p>2. Isi data-data di form disamping sesuai dengan benar.</p>
              							<p>3. Isi data-data di from dengan lengkap</p>
              							<p>4. Kami akan memvalidasi pembayaran Anda.</p>
              							<p>5. Jika Anda ingin melakukan komplain silahkan datang langsung ke kantor kita atau hubungi kami melalui live chat.</p>
                            <div class="info box">Silahkan Konfirmasi Pembayaran anda disamping</div>
                        </div>
                        <div class="two-third column last">
                            <form style="margin-left:120px;" action="<?php echo base_url().'konfirmasi/upload_bukti'?>" method="post" enctype="multipart/form-data">
                                <h3><span class="left">Konfirmasi Pembayaran</span></h3>
                                <?php
                                error_reporting(0);
                                echo $this->session->flashdata('msg');
                                ?>
                                    <p>
                                    <label>No Invoice</label>
                                    <input type="text" name="invoice" placeholder="No Invoice" style="width:300px;" required>
                                    </p>

                                    <p>
                                    <label>Pengirim</label>
                                    <input type="text" name="nama" placeholder="Nama pengirim" style="width:300px;" required>
                                    </p>

                                    <p>
                                    <label>Pilih Bank</label>
                                        <select name="bank" style="width:300px;" required>
                                        <?php foreach ($bnk->result_array() as $i) {
                                            $id=$i['id_metode'];
                                            $mtd=$i['bank'];
                                        ?>
                                            <option value="<?php echo $id;?>"><?php echo $mtd;?></option>
                                        <?php }?>
                                        </select>
                                    </p>
                                    <p>
                                    <label>Tanggal Transfer</label>
                                    <input type="text" readonly="readonly" placeholder="Tanggal Transfer" class="datepicker" name="tgl_bayar" style="width:300px;" required/>
                                    </p>

                                    <p>
                                    <label>Jumlah Transfer</label>
                                    <input type="number" name="jumlah" placeholder="Jumlah Transfer" value="" min="0" style="height:30px;width:300px;" required>
                                    </p>
                                    <p>
                                    <label>Bukti Transfer dalam Format : Jpg, Png, Bmp, Gif.</label>
                                    <input type="file" name="filefoto" required>
                                    </p>
                                    <p>
                                    <label></label>
                                    <button type="submit" class="medium gray button">Konfirmasi Pembayaran</button>
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
