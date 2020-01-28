<!DOCTYPE html>
<html lang="id">
    <!--<![endif]-->
    <head>
        <title>Testimonial</title>
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
                <div id="sub-banner">
                    <div id="logo">
                    </div>
                    <img src="<?php echo base_url().'theme/images/placeholders/banner.jpg'?>" alt="" />
                </div>

                <!-- Main Menu -->
                <div id="menu" class="page">
                    <ul id="root-menu" class="sf-menu">
                        <?php
                        $this->load->view('front/menu');
                        ?>

                    </ul>
                </div>

               <!-- Content -->
               <div id="content">
                    <div id="blog" class="container section">
                        <div id="blog-content" class="two-third column end">
                            <div id="post-content" class="blog-item">


                                <div id="comment-content" class="end">
                                    <h4>Testimoni</h4><hr/>
                                    <?php
                                        foreach ($test->result_array() as $j):
                                        $name=$j['nama'];
                                        $tgl_post=$j['tgl_post'];
                                        $pesan=$j['pesan'];
                                    ?>
                                    <div class="comment-item">
                                        <!--<div class="commenter-photo">
                                            <img src="images/blog/anonymous.jpg" alt="" />
                                        </div>-->
                                        <div class="comment-post">
                                            <p class="comment-item-meta">
                                                <span class="commenter-name"> <?php echo $name;?> </span>
                                                <span class="comment-date"> <?php echo $tgl_post;?> </span>
                                            </p>
                                            <p>
                                                "<?php echo $pesan;?>"
                                            </p>
                                        </div>
                                    </div><hr/>
                                    <?php endforeach ;?>
                                    <div id="comment-form-item">
                                        <h4>Tinggalkan Testimoni</h4>
                                        <p>
                                            Masukkan Nama, email, dan testimoni Anda lalu klik tombol Submit.
                                        </p>
                                        <form id="comment-form" class="validate" action="<?php echo base_url().'testimoni/simpan'?>" method="post">
                                            <p>
                                                <label for="name" class="required label">Nama:</label>
                                                <input id="name" class="validate[required]" type="text" name="nama" style="width:300px;" required/>
                                            </p>
                                            <p>
                                                <label for="email" class="required label">Email:</label>
                                                <input id="email" class="validate[required,custom[email]]" placeholder="Contoh: email@gmail.com" type="email" name="email" style="width:300px;" required/>
                                            </p>

                                            <p>
                                                <label id="comment-label" for="comment" class="required label">Testimoni:</label>
                                                <textarea id="comment" class="validate[required]" name="message" cols="28" rows="5" placeholder="Testimoni" required></textarea>
                                            </p>
                                            <p>
                                                <label></label>
                                                <input class="medium gray button" id="submit-button" type="submit" name="Submit" value="Submit" />
                                            </p>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="sidebar-content" class="one-third column last">
                            <div class="sidebar-item">
                                <h3 class="nobg">Pencarian</h3>
                                <form id="search-form" method="get">
                                    <span>
                                        <input id="searchbox" type="text" placeholder="Type keywords here..." />
                                    </span>
                                    <input id="search-button" class="medium gray button" type="submit" value="Go" />
                                </form>
                            </div>

                            <div class="sidebar-item">
                                <h3 class="nobg">Latest Events</h3>
                                <ul id="latest-events" class="square">
                                <?php
                                    foreach ($brt->result_array() as $b) {
                                        $idberita=$b['idberita'];
                                        $judul=$b['judul'];
                                        $isi=$b['isi'];
                                        $tglpost=$b['tglpost'];
                                        $gbr=$b['gambar'];
                                        $user=$b['user'];
                                ?>
                                    <li>
                                        <a href="<?php echo base_url().'berita_post/detail_berita/'.$idberita;?>"><img width="50" height="50" src="<?php echo base_url().'assets/gambars/'.$gbr;?>" alt="" /><?php echo $judul;?></a>
                                        <span><?php echo $tglpost;?></span>
                                    </li>
                                <?php
                                    }
                                ?>
                                </ul>
                            </div>
                            <div class="sidebar-item">
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
