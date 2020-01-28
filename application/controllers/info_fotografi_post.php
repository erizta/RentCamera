<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Info_fotografi_post extends CI_Controller {
	function __construct(){
        parent::__construct();
        $this->load->model('minfo_fotografi');
        $this->load->model('mberita');
    }
	public function index()
	{
        $x['paket']=$this->mberita->paket_footer();
        $x['berita']=$this->mberita->berita_footer();
        $x['photo']=$this->mberita->get_photo();
		$jum=$this->minfo_fotografi->count_info_fotografi();
        $page=$this->uri->segment(3);
        if(!$page):
            $offset = 0;
        else:
            $offset = $page;
        endif;
        $limit=4;
        $config['base_url'] = base_url() . 'info_fotografi_post/index/';
            $config['total_rows'] = $jum->num_rows();
            $config['per_page'] = $limit;
            $config['uri_segment'] = 3;
            $config['first_link'] = 'Awal';
            $config['last_link'] = 'Akhir';
            $config['next_link'] = 'Selanjutnya';
            $config['prev_link'] = 'Sebelumnya';
            $this->pagination->initialize($config);
            $x['page'] =$this->pagination->create_links();
		$x['news']=$this->minfo_fotografi->get_info_fotografi($offset,$limit);
        $x['brt']=$this->minfo_fotografi->tampil_info_fotografi();
		$this->load->view('front/v_info_fotografi',$x);
	}
	function detail_info_fotografi(){
        $x['paket']=$this->mberita->paket_footer();
        $x['berita']=$this->mberita->berita_footer();
        $x['photo']=$this->mberita->get_photo();
		$kode=$this->uri->segment(3);
		$x['brt']=$this->minfo_fotografi->tampil_info_fotografi();
		$x['news']=$this->minfo_fotografi->getinfo_fotografi($kode);
		$this->load->view('front/v_detail_info_fotografi',$x);
	}
}
