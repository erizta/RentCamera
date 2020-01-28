<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Detail_photo extends CI_Controller {
	function __construct(){
        parent::__construct();
        $this->load->model('mgaleri');
        $this->load->model('mberita');
    }
	public function index()
	{
        $x['paket']=$this->mberita->paket_footer();
        $x['berita']=$this->mberita->berita_footer();
        $x['photo']=$this->mberita->get_photo();
        $kode=$this->uri->segment(3);
		$jum=$this->mgaleri->count_photo($kode);
        $page=$this->uri->segment(4);
        if(!$page):
            $offset = 0;
        else:
            $offset = $page;
        endif;
        $limit=6;
        $config['base_url'] = base_url() . 'detail_photo/index/';
            $config['total_rows'] = $jum->num_rows();
            $config['per_page'] = $limit;
            $config['uri_segment'] = 4;
            $config['first_link'] = 'Awal';
            $config['last_link'] = 'Akhir';
            $config['next_link'] = 'Selanjutnya';
            $config['prev_link'] = 'Sebelumnya';
            $this->pagination->initialize($config);
            $x['page'] =$this->pagination->create_links();
		$x['photo']=$this->mgaleri->get_galeri($kode,$offset,$limit);
		$this->load->view('front/v_detail_photo',$x);
	}

    public function galeri()
    {
        $x['paket']=$this->mberita->paket_footer();
        $x['berita']=$this->mberita->berita_footer();
        $x['photo']=$this->mberita->get_photo();
        $jum=$this->mgaleri->jml_photo();
        $page=$this->uri->segment(3);
        if(!$page):
            $offset = 0;
        else:
            $offset = $page;
        endif;
        $limit=20;
        $config['base_url'] = base_url() . 'detail_photo/galeri/';
            $config['total_rows'] = $jum->num_rows();
            $config['per_page'] = $limit;
            $config['uri_segment'] = 3;
            $config['first_link'] = 'Awal';
            $config['last_link'] = 'Akhir';
            $config['next_link'] = 'Selanjutnya';
            $config['prev_link'] = 'Sebelumnya';
            $this->pagination->initialize($config);
            $x['page'] =$this->pagination->create_links();
        $x['photo']=$this->mgaleri->galeri_photo($offset,$limit);
        $this->load->view('front/v_detail_photo',$x);
    }

}