<?php
class About extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('mberita');
	}
	function index(){
		$x['paket']=$this->mberita->paket_footer();
		$x['berita']=$this->mberita->berita_footer();
		$x['photo']=$this->mberita->get_photo();
		$this->load->view('front/v_tentang',$x);
	}
}