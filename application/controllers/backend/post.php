<?php
class Post extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url();
            redirect($url);
        };
        $this->load->model('mberita');
        $this->load->library('upload');
	}

	function index(){
		if($this->session->userdata('akses')=='1'){
	    	$x['data']=$this->mberita->tampil_berita();
	        $this->load->view('backend/v_post',$x);
	    }else{
	        echo "Halaman tidak ditemukan";
	    }
	}

	function add_post(){
		$this->load->view('backend/v_add_post');
	}
	function get_edit(){
		$kode=$this->uri->segment(4);
		$x['data']=$this->mberita->ambil_berita($kode);
		$this->load->view('backend/v_edit_post',$x);
	}

	function simpan_post(){
		$config['upload_path'] = './assets/gambars/'; //path folder
	  $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp|JPG'; //type yang dapat diakses bisa anda sesuaikan
	  $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	    $this->upload->initialize($config);
	    if(!empty($_FILES['filefoto']['name'])){
	        if ($this->upload->do_upload('filefoto')){
	        	$gbr = $this->upload->data();
	            //Compress Image
	            $config['image_library']='gd2';
	            $config['source_image']='./assets/gambars/'.$gbr['file_name'];
	            $config['create_thumb']= FALSE;
	            $config['maintain_ratio']= FALSE;
	            $config['quality']= '60%';
	            $config['width']= 379;
	            $config['height']= 271;
	            $config['new_image']= './assets/gambars/'.$gbr['file_name'];
	            $this->load->library('image_lib', $config);
	            $this->image_lib->resize();

	            $gambar=$gbr['file_name'];
              $jdl=$this->input->post('judul');
              $berita=$this->input->post('berita');
              $user=$this->session->userdata('user');

				$this->mberita->SimpanBerita($jdl,$berita,$gambar,$user);
				echo $this->session->set_flashdata('msg','success');
				redirect('backend/post');
		}else{
	        echo $this->session->set_flashdata('msg','warning');
	        redirect('backend/post');
	    }

	    }else{
			redirect('backend/post');
		}

	}

	function update_post(){
	    $config['upload_path'] = './assets/gambars/'; //path folder
	    $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
	    $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	    $this->upload->initialize($config);
	    if(!empty($_FILES['filefoto']['name'])){
	        if ($this->upload->do_upload('filefoto')){
	            $gbr = $this->upload->data();
	                        //Compress Image
	            $config['image_library']='gd2';
	            $config['source_image']='./assets/gambars/'.$gbr['file_name'];
	            $config['create_thumb']= FALSE;
	            $config['maintain_ratio']= FALSE;
	            $config['quality']= '60%';
	            $config['width']= 379;
	            $config['height']= 271;
	            $config['new_image']= './assets/gambars/'.$gbr['file_name'];
	            $this->load->library('image_lib', $config);
	            $this->image_lib->resize();

	            $gambar=$gbr['file_name'];
	            $kode=$this->input->post('kode');
                $jdl=$this->input->post('judul');
                $berita=$this->input->post('berita');
                $user=$this->session->userdata('user');

				$this->mberita->updateberitaimg($kode,$jdl,$berita,$gambar,$user);
				echo $this->session->set_flashdata('msg','info');
				redirect('backend/post');

	    	}else{
	        	echo $this->session->set_flashdata('msg','warning');
	        	redirect('backend/post');
	        }
	    }else{
			$kode=$this->input->post('kode');
        	$jdl=$this->input->post('judul');
        	$berita=$this->input->post('berita');
        	$user=$this->session->userdata('user');
			$this->mberita->updateberita($kode,$jdl,$berita,$user);
			echo $this->session->set_flashdata('msg','info');
			redirect('backend/post');
	    }

	}

	function hapus_post(){
	    if($this->session->userdata('akses')=='1'){
	        $id=$this->input->post('kode');
	        $this->mberita->hapus_berita($id);
	        echo $this->session->set_flashdata('msg','success-hapus');
	        redirect('backend/post');
	    }else{
	        echo "Halaman tidak ditemukan";
	    }
    }

}
