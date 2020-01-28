<?php
class Info_fotografi extends CI_Controller{
	function __construct(){
        parent::__construct();
        if($this->session->userdata('masuk') !=TRUE){
            $url=base_url();
            redirect($url);
        };
        $this->load->model('minfo_fotografi');
        $this->load->library('upload');
    }
    function index(){
	    if($this->session->userdata('akses')=='1'){
	    	$x['data']=$this->minfo_fotografi->tampil_info_fotografi();
	        $this->load->view('backend/v_info_fotografi',$x);
	    }else{
	        echo "Halaman tidak ditemukan";
	    }
    }

    function simpan_info_fotografi(){
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
                $nama_if=$this->input->post('nama_if');
                $deskripsi=$this->input->post('deskripsi');

				$this->minfo_fotografi->simpan_info_fotografi($nama_if,$deskripsi,$gambar);
				echo $this->session->set_flashdata('msg','success');
				redirect('backend/info_fotografi');
		}else{
	        echo $this->session->set_flashdata('msg','warning');
	        redirect('backend/info_fotografi');
	    }

	    }else{
			redirect('backend/info_fotografi');
		}
    }

    function update_info_fotografi(){
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
	            $kode=$this->input->post('kode');
                $nama_if=$this->input->post('nama_if');
                $deskripsi=$this->input->post('deskripsi');

				$this->minfo_fotografi->update_info_fotografi_with_img($kode,$nama_if,$deskripsi,$gambar);
				echo $this->session->set_flashdata('msg','info');
				redirect('backend/info_fotografi');

	    	}else{
	        	echo $this->session->set_flashdata('msg','warning');
	        	redirect('backend/info_fotografi');
	        }
	    }else{
			$kode=$this->input->post('kode');
            $nama_if=$this->input->post('nama_if');
            $deskripsi=$this->input->post('deskripsi');
			$this->minfo_fotografi->update_info_fotografi_no_img($kode,$nama_if,$deskripsi);
			echo $this->session->set_flashdata('msg','info');
			redirect('backend/info_fotografi');
	    }

	}

    function hapus_info_fotografi(){
	    if($this->session->userdata('akses')=='1'){
	        $id=$this->input->post('kode');
	        $this->minfo_fotografi->hapus_info_fotografi($id);
	        echo $this->session->set_flashdata('msg','success-hapus');
	        redirect('backend/info_fotografi');
	    }else{
	        echo "Halaman tidak ditemukan";
	    }
    }

}
