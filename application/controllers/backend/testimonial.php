<?php
class Testimonial extends CI_Controller{
    function __construct(){
        parent::__construct();
        if($this->session->userdata('masuk') !=TRUE){
            $url=base_url();
            redirect($url);
        };
        $this->load->model('mtestimoni');
    }
    function index(){
        $x['data']=$this->mtestimoni->get_testimoni();
		    $this->load->view('backend/v_testimonial',$x);
    }
    function publish(){
        $id=$this->uri->segment(4);
        $this->mtestimoni->publish($id);
        echo $this->session->set_flashdata('msg','info');
        redirect('backend/testimonial');
    }

    function hapus_testimoni(){
        $kode=$this->input->post('kode');
        $this->mtestimoni->hapus_testimoni($kode);
        echo $this->session->set_flashdata('msg','success-hapus');
        redirect('backend/testimonial');
    }
}
