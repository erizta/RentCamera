<?php
class Bank extends CI_Controller{
	function __construct(){
        parent::__construct();
        if($this->session->userdata('masuk') !=TRUE){
            $url=base_url();
            redirect($url);
        };
        $this->load->model('mbank');
    }

    function index(){
        $x['data']=$this->mbank->tampil_bank();
        $this->load->view('backend/v_bank',$x);
    }

    function simpan_rekening(){
    	$norek=$this->input->post('norek');
    	$bank=$this->input->post('bank');
    	$atasnama=$this->input->post('atasnama');
    	$this->mbank->simpan_rekening($norek,$bank,$atasnama);
    	echo $this->session->set_flashdata('msg','success');
    	redirect('backend/bank');
    }

    function update_rekening(){
    	$kode=$this->input->post('kode');
    	$norek=$this->input->post('norek');
    	$bank=$this->input->post('bank');
    	$atasnama=$this->input->post('atasnama');
    	$this->mbank->update_rekening($kode,$norek,$bank,$atasnama);
    	echo $this->session->set_flashdata('msg','info');
    	redirect('backend/bank');
    }

    function hapus_rekening(){
    	$kode=$this->input->post('kode');
    	$this->mbank->hapus_rekening($kode);
    	echo $this->session->set_flashdata('msg','success-hapus');
    	redirect('backend/bank');
    }
}