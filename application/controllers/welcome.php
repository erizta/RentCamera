<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {
	function __construct(){
        parent::__construct();
        $this->load->model('mberita');
		$this->load->model('mtestimoni');
		$this->load->model('m_pengunjung');
    }
	public function index(){
		$user_ip=$_SERVER['REMOTE_ADDR'];
		if ($this->agent->is_browser()){
		    $agent = $this->agent->browser();
		}elseif ($this->agent->is_robot()){
		    $agent = $this->agent->robot();
		}elseif ($this->agent->is_mobile()){
		    $agent = $this->agent->mobile();
		}else{
			$agent='Other';
		}
		$cek_ip=$this->m_pengunjung->cek_ip($user_ip);
		$cek=$cek_ip->num_rows();
		if($cek > 0){
			$x['paket']=$this->mberita->paket_footer();
			$x['berita']=$this->mberita->berita_footer();
			$x['photo']=$this->mberita->get_photo();

			$x['test']=$this->mtestimoni->tampil_test();
			$x['info_fotografi']=$this->mberita->get_info_fotografi();
			$x['news']=$this->mberita->berita();
			$this->load->view('front/home',$x);
		}else{
			$this->m_pengunjung->simpan_user_agent($user_ip,$agent);
			$x['paket']=$this->mberita->paket_footer();
			$x['berita']=$this->mberita->berita_footer();
			$x['photo']=$this->mberita->get_photo();

			$x['test']=$this->mtestimoni->tampil_test();
			$x['info_fotografi']=$this->mberita->get_info_fotografi();
			$x['news']=$this->mberita->berita();
			$this->load->view('front/home',$x);
		}
	}
}
