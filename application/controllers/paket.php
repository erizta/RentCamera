<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Paket extends CI_Controller {
	function __construct(){
        parent::__construct();
        $this->load->model('mpaket');
        $this->load->model('mberita');
    }
	public function index()
	{
        $x['paket']=$this->mberita->paket_footer();
        $x['berita']=$this->mberita->berita_footer();
        $x['photo']=$this->mberita->get_photo();
				$jum=$this->mpaket->tampil_paket();
        $page=$this->uri->segment(3);
        if(!$page):
            $offset = 0;
        else:
            $offset = $page;
        endif;
		        $limit=4;
		        $config['base_url'] = base_url() . 'paket/index/';
            $config['total_rows'] = $jum->num_rows();
            $config['per_page'] = $limit;
            $config['uri_segment'] = 3;
            $config['first_link'] = 'Awal';
            $config['last_link'] = 'Akhir';
            $config['next_link'] = 'Selanjutnya';
            $config['prev_link'] = 'Sebelumnya';
            $this->pagination->initialize($config);
            $x['page'] =$this->pagination->create_links();
						$x['news']=$this->mpaket->get_paket($offset,$limit);
				    $x['brt']=$this->mpaket->tampil_paket();
						$this->load->view('front/v_paket',$x);
	}
	function detail_paket(){
        $x['paket']=$this->mberita->paket_footer();
        $x['berita']=$this->mberita->berita_footer();
        $x['photo']=$this->mberita->get_photo();
				$kode=$this->uri->segment(3);
				$x['brt']=$this->mpaket->tampil_paket();
				$x['news']=$this->mpaket->getpaket($kode);
				$this->load->view('front/v_detail_paket',$x);
	}
    function pesan_paket(){
        $x['paket']=$this->mberita->paket_footer();
        $x['berita']=$this->mberita->berita_footer();
        $x['photo']=$this->mberita->get_photo();
        $kode=$this->uri->segment(3);
        $x['pkt']=$this->mpaket->getpaket($kode);
        $x['byr']=$this->mpaket->get_metode_pembayaran();
        $this->load->view('front/v_order',$x);
    }
    function order(){
        $x['paket']=$this->mberita->paket_footer();
        $x['berita']=$this->mberita->berita_footer();
        $x['photo']=$this->mberita->get_photo();
        error_reporting(0);
        $no_order=$this->mpaket->get_no_order();
        $nama=strip_tags(str_replace("'", "",$this->input->post('nama')));
        $jekel=strip_tags(str_replace("'", "",$this->input->post('jenkel')));
        $alamat=strip_tags(str_replace("'", "",$this->input->post('alamat')));
        $notelp=strip_tags(str_replace("'", "",$this->input->post('notelp')));
        $email=strip_tags(str_replace("'", "",$this->input->post('email')));
        $paket=strip_tags(str_replace("'", "",$this->input->post('paket')));
        $pinjam=$this->input->post('pinjam');
        $kembali=$this->input->post('kembali');
        $body=$this->input->post('body');
        $lensa=$this->input->post('lensa');
        $ket=mysqli_real_escape_string($this->input->post('notebox'));
        $this->mpaket->simpan_order($no_order,$nama,$jekel,$alamat,$notelp,$email,
																		$paket,$pinjam,$kembali,$body,$lensa,$ket);
        $this->session->set_userdata('invoices',$no_order);
        $x['data']=$this->mpaket->get_metode();
        $this->load->view('front/v_metode_bayar',$x);
    }
    function set_pembayaran(){
        $x['paket']=$this->mberita->paket_footer();
        $x['berita']=$this->mberita->berita_footer();
        $x['photo']=$this->mberita->get_photo();
        $id=$this->uri->segment(3);
        $no_invoice=$this->session->userdata('invoices');
        $this->mpaket->set_bayar($no_invoice,$id);
        if($id=='1'){
            $x['data']=$this->mpaket->faktur();
            $x['judul']="Invoice";
            $this->load->view('front/v_invoices',$x);
        }else{
            $x['data']=$this->mpaket->faktur();
            $x['judul']="Invoice";
            $this->load->view('front/v_invoices_bank',$x);
        }
    }
}
