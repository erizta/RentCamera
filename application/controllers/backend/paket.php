<?php
class Paket extends CI_Controller{
	function __construct(){
        parent::__construct();
        if($this->session->userdata('masuk') !=TRUE){
            $url=base_url();
            redirect($url);
        };
        $this->load->model('mpaket');
        $this->load->library('upload');
    }
    function index(){
	    if($this->session->userdata('akses')=='1'){
	    	$x['data']=$this->mpaket->tampil_paket();
			$x['kat']=$this->mpaket->get_kategori();
	        $this->load->view('backend/v_paket',$x);
	    }else{
	        echo "Halaman tidak ditemukan";
	    }
    }

    function simpan_paket(){
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
	            $config['width']= 756;
	            $config['height']= 434;
	            $config['new_image']= './assets/gambars/'.$gbr['file_name'];
	            $this->load->library('image_lib', $config);
	            $this->image_lib->resize();

	            $gambar=$gbr['file_name'];
                $nama_paket=$this->input->post('nama_paket');
				$kategori=$this->input->post('kategori');
				$deskripsi=$this->input->post('deskripsi');
				$hrg_body=$this->input->post('hrg_body');
				$hrg_lensa=$this->input->post('hrg_lensa');

				$this->mpaket->SimpanPaket($nama_paket,$kategori,$deskripsi,$hrg_body,$hrg_lensa,$gambar);
				echo $this->session->set_flashdata('msg','success');
				redirect('backend/paket');
		}else{
	        echo $this->session->set_flashdata('msg','warning');
	        redirect('backend/paket');
	    }

	    }else{
			redirect('backend/paket');
		}
    }

    function update_paket(){
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
                $nama_paket=$this->input->post('nama_paket');
				$kategori=$this->input->post('kategori');
				$deskripsi=$this->input->post('deskripsi');
				$hrg_body=$this->input->post('hrg_body');
				$hrg_lensa=$this->input->post('hrg_lensa');

				$this->mpaket->updatedenganimg($kode,$nama_paket,$kategori,$deskripsi,$hrg_body,$hrg_lensa,$gambar);
				echo $this->session->set_flashdata('msg','info');
				redirect('backend/paket');

	    	}else{
	        	echo $this->session->set_flashdata('msg','warning');
	        	redirect('backend/paket');
	        }
	    }else{
			$kode=$this->input->post('kode');
            $nama_paket=$this->input->post('nama_paket');
			$kategori=$this->input->post('kategori');
			$deskripsi=$this->input->post('deskripsi');
			$hrg_body=$this->input->post('hrg_body');
			$hrg_lensa=$this->input->post('hrg_lensa');
			$this->mpaket->updatepaket($kode,$nama_paket,$kategori,$deskripsi,$hrg_body,$hrg_lensa);
			echo $this->session->set_flashdata('msg','info');
			redirect('backend/paket');
	    }

	}

    function hapus_paket(){
	    if($this->session->userdata('akses')=='1'){
	        $id=$this->input->post('kode');
	        $this->mpaket->hapus_paket($id);
	        echo $this->session->set_flashdata('msg','success-hapus');
	        redirect('backend/paket');
	    }else{
	        echo "Halaman tidak ditemukan";
	    }
    }

}
