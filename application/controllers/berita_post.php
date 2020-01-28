<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Berita_post extends CI_Controller {
	function __construct(){
        parent::__construct();
        $this->load->model('mberita');
    }
	public function index()
	{
        $x['paket']=$this->mberita->paket_footer();
        $x['berita']=$this->mberita->berita_footer();
        $x['photo']=$this->mberita->get_photo();
		$jum=$this->mberita->count_berita();
        $page=$this->uri->segment(3);
        if(!$page):
            $offset = 0;
        else:
            $offset = $page;
        endif;
        $limit=4;
        $config['base_url'] = base_url() . 'berita_post/index/';
            $config['total_rows'] = $jum->num_rows();
            $config['per_page'] = $limit;
            $config['uri_segment'] = 3;
            $config['first_link'] = 'Awal';
            $config['last_link'] = 'Akhir';
            $config['next_link'] = 'Selanjutnya';
            $config['prev_link'] = 'Sebelumnya';
            $this->pagination->initialize($config);
            $x['page'] =$this->pagination->create_links();
		$x['news']=$this->mberita->get_berita($offset,$limit);
        $x['brt']=$this->mberita->tampil_berita();
		$this->load->view('front/v_berita',$x);
	}
	function detail_berita(){
        $x['paket']=$this->mberita->paket_footer();
        $x['berita']=$this->mberita->berita_footer();
        $x['photo']=$this->mberita->get_photo();
		$kode=$this->uri->segment(3);
        $this->db->query("UPDATE berita SET views=views+1 WHERE idberita='$kode'");
		$x['brt']=$this->mberita->tampil_berita();
		$x['news']=$this->mberita->getberita($kode);
		$this->load->view('front/v_detail_berita',$x);
	}
}