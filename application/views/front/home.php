<!DOCTYPE html>
<html lang="id">

    <head>
        <title>Rent Camera XYZ</title>

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
                <div id="banner">
                    <div id="logo">
                    </div>
                    <div id="banner-slider" class="flexslider">
                        <ul class="slides">
                            <li>
                                <img src="<?php echo base_url().'theme/images/placeholders/slide2.jpg'?>" alt="" />
                            </li>
                            <li>
                                <img src="<?php echo base_url().'theme/images/placeholders/slide1.jpg'?>" alt="" />
                            </li>
                            <li>
                                <img src="<?php echo base_url().'theme/images/placeholders/slide3.jpg'?>" alt="" />
                            </li>
                            <li>
                                <img src="<?php echo base_url().'theme/images/placeholders/slide4.jpg'?>" alt="" />
                            </li>
                        </ul>
                    </div>

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
                <div id="content">
                    <div id="intro">
                        <h1><span>Welcome to Rent Camera XYZ</span></h1>
                        <p style="text-align: center;">
                            Rent Camera XYZ merupakan layanan penyewaan kamera yang menyajikan berbagai paket kamera
                            yang disewakan serta tips dan trik dalam fotografi.
                            Dimana para freelancer fotografi dapan memesan terebih dahulu
                            paket kamera yang diinginkan secara online.
                        </p>
                        <p>
                            <a href="<?php echo base_url().'berita_post';?>" class="large gray button">Artikel/Berita</a>
                            <span>Atau</span><a href="<?php echo base_url().'paket'?>" class="large gray button">Paket Sewa</a>
                        </p>
                    </div>

                    <div id="feature" class="container section">
                        <?php
                            foreach ($info_fotografi->result_array() as $i) {
                                $id_if=$i['id_if'];
                                $nama_if=$i['nama_if'];
                                $deskripsi=limit_words($i['deskripsi'],50);
                                $gambar=$i['gambar'];

                            ?>
                        <div class="one-third column">
                            <div class="one-third hover">
                                <a href="<?php echo base_url().'info_fotografi_post/detail_info_fotografi/'.$id_if;?>">
                                <div class="readmore">
                                    <span class="text"><span class="anchor"></span></span>
                                </div>
                                <p>
                                    <img height="120" src="<?php echo base_url().'assets/gambars/'.$gambar;?>" alt="" />
                                </p></a>
                            </div>
                            <h3><span><?php echo $nama_if;?></span></h3>
                            <p>

                            </p>
                        </div>
                        <?php
                            }
                        ?>

                    </div>

                    <div id="sub" class="container section">
                         <?php
                            foreach ($news->result_array() as $b) {
                                $idberita=$b['idberita'];
                                $judul=$b['judul'];
                                $isi=$b['isi'];
                                $tglpost=$b['tglpost'];
                                $gbr=$b['gambar'];
                                $user=$b['user'];
                            ?>
                        <div class="one-fourth column last" style="margin-left:2px;padding-right:10px;">
                            <div class="one-fourth column hover">
                                <a href="<?php echo base_url().'berita_post/detail_berita/'.$idberita;?>">
                                <div class="readmore">
                                    <span class="text"><span class="anchor"></span></span>
                                </div>

                                    <img src="<?php echo base_url().'assets/gambars/'.$gbr;?>" title="<?php echo $judul;?>">

                                </a>
                            </div>
                            <p>
                                <?php echo $judul;?>
                            </p>
                        </div>
                        <?php
                            }
                        ?>

                    </div>
                  </div>


                <!-- Testimonial -->
                <div class="container section">
                    <div id="home-testimonial" class="full-width column">
                        <?php foreach($test->result_array() as $j):
                            $name=$j['nama'];
                            $tgl_post=$j['tgl_post'];
                            $pesan=$j['pesan'];
                        ?>
                        <blockquote class="full-width">
                            <p>
                                <?php echo $pesan;?>
                            </p>
                            <cite><?php echo $name;?></cite>
                        </blockquote>
                        <?php  endforeach ?>
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
                                <a href="facebook.com"><img src="<?php echo base_url().'theme/images/social/facebook.png'?>" alt="" /></a>
                            </li>
                            <li>
                                <a href="flickr.com"><img src="<?php echo base_url().'theme/images/social/flickr.png'?>" alt="" /></a>
                            </li>
                            <li>
                                <a href="twitter.com"><img src="<?php echo base_url().'theme/images/social/twitter.png'?>" alt="" /></a>
                            </li>
                            <li>
                                <a href="vimeo.com"><img src="<?php echo base_url().'theme/images/social/vimeo.png'?>" alt="" /></a>
                            </li>
                            <li>
                                <a href="rss.com"><img src="<?php echo base_url().'theme/images/social/rss.png'?>" alt="" /></a>
                            </li>
                            <li>
                                <a href="www.google.com"><img src="<?php echo base_url().'theme/images/social/google-plus.png'?>" alt="" /></a>
                            </li>
                            <li>
                                <a href="linkedin.com"><img src="<?php echo base_url().'theme/images/social/linkedin.png'?>" alt="" /></a>
                            </li>
                            <li>
                                <a href="dribbble.com"><img src="<?php echo base_url().'theme/images/social/dribbble.png'?>" alt="" /></a>
                            </li>
                        </ul>
                        <span id="text">Copyright &copy; <?php date_default_timezone_set('Asia/Jakarta'); echo date('Y');?> | <a href="http://instagram.com.eriztaalifad.com">Erizta Alifa P</a>.</span>

                    </div>
                </div>

            </div>
        </div>

        <!-- JavaScript Files -->
        <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery-1.7.2.min.js'?>"></script>
        <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery.easing.1.3.js'?>"></script>
        <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery.flexslider-min.js'?>"></script>
        <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery.hoverIntent.minified.js'?>"></script>
        <script type="text/javascript" src="<?php echo base_url().'theme/scripts/superfish.js'?>"></script>
        <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery.cycle.lite.js'?>"></script>
        <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery.fancybox-1.3.4.pack.js'?>"></script>
        <script type="text/javascript" src="<?php echo base_url().'theme/scripts/lamoon.js'?>"></script>

    </body>
</html>
