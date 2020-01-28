<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Semua_album extends CI_Controller {
	function __construct(){
        parent::__construct();
        $this->load->model('malbum');
        $this->load->model('mberita');
    }
	public function index()
	{
        $x['paket']=$this->mberita->paket_footer();
        $x['berita']=$this->mberita->berita_footer();
        $x['photo']=$this->mberita->get_photo();
		$jum=$this->malbum->count_album();
        $page=$this->uri->segment(3);
        if(!$page):
            $offset = 0;
        else:
            $offset = $page;
        endif;
        $limit=6;
        $config['base_url'] = base_url() . 'semua_album/index/';
            $config['total_rows'] = $jum->num_rows();
            $config['per_page'] = $limit;
            $config['uri_segment'] = 3;
            $config['first_link'] = 'Awal';
            $config['last_link'] = 'Akhir';
            $config['next_link'] = 'Selanjutnya';
            $config['prev_link'] = 'Sebelumnya';
            $this->pagination->initialize($config);
            $x['page'] =$this->pagination->create_links();
		$x['alm']=$this->malbum->get_album($offset,$limit);
        $x['jml']=$this->malbum->jml_album();
		$this->load->view('front/v_album',$x);
	}
	
}