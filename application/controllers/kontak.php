<?php
class Kontak extends CI_Controller{
	function __construct(){
		parent::__construct();
		
		$this->load->model('morders');
        $this->load->library('upload');
        $this->load->model('mberita');
        $this->load->model('m_kontak');
	}

	function index(){
		$x['paket']=$this->mberita->paket_footer();
		$x['berita']=$this->mberita->berita_footer();
		$x['photo']=$this->mberita->get_photo();
		$x['bnk']=$this->morders->get_bank();
		$this->load->view('front/v_kontak',$x);
	}

	function kirim_pesan(){
        $nama=str_replace("'", "", $this->input->post('xnama',TRUE));
        $email=str_replace("'", "", $this->input->post('xemail',TRUE));
        $kontak=str_replace("'", "", $this->input->post('xkontak',TRUE));
        $pesan=str_replace("'", "", $this->input->post('xpesan',TRUE));
        $this->m_kontak->kirim_pesan($nama,$email,$kontak,$pesan);
        echo $this->session->set_flashdata('msg','<div><p><strong> NB: </strong> Terima Kasih Telah Menghubungi Kami.</p></div>');
        redirect('kontak');
    }
}