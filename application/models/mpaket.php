<?php
class Mpaket extends CI_Model{
	function get_metode_pembayaran(){
		$hasil=$this->db->query("SELECT * FROM metode_bayar GROUP BY metode");
		return $hasil;
	}
	function ambil_berita($kode){
		$hasil=$this->db->query("select * from berita where idberita='$kode'");
		return $hasil;
	}

	function get_kategori(){
		$hasil=$this->db->query("select * from kategori_paket");
		return $hasil;
	}
	function get_info_fotografi(){
		$hasil=$this->db->query("select * from info_fotografi order by id_if desc limit 3");
		return $hasil;
	}
	function get_paket($offset,$limit){
		$hasil=$this->db->query("select * from paket order by idpaket DESC limit $offset,$limit");
		return $hasil;
	}
	function SimpanPaket($nama_paket,$kategori,$deskripsi,$hrg_body,$hrg_lensa,$gambar){
		$hasil=$this->db->query("INSERT INTO paket(nama_paket,hrg_body,hrg_lensa,deskripsi,kategori_id,gambar) VALUES ('$nama_paket','$hrg_body','$hrg_lensa','$deskripsi','$kategori','$gambar')");
		return $hasil;
	}
	function tampil_paket(){
		$hasil=$this->db->query("select * from paket");
		return $hasil;
	}
	function berita(){
		$hasil=$this->db->query("select * from berita order by tglpost DESC limit 8");
		return $hasil;
	}
	function getpaket($kode){
		$hasil=$this->db->query("select * from paket where idpaket='$kode'");
		return $hasil;
	}
	function updatedenganimg($kode,$nama_paket,$kategori,$deskripsi,$hrg_body,$hrg_lensa,$gambar){
		$hasil=$this->db->query("UPDATE paket SET nama_paket='$nama_paket',hrg_body='$hrg_body',hrg_lensa='$hrg_lensa',deskripsi='$deskripsi',kategori_id='$kategori',gambar='$gambar' WHERE idpaket='$kode'");
		return $hasil;
	}
	function updatepaket($kode,$nama_paket,$kategori,$deskripsi,$hrg_body,$hrg_lensa){
		$hasil=$this->db->query("UPDATE paket SET nama_paket='$nama_paket',hrg_body='$hrg_body',hrg_lensa='$hrg_lensa',deskripsi='$deskripsi',kategori_id='$kategori' WHERE idpaket='$kode'");
		return $hasil;
	}
	function hapus_paket($id){
		$hasil=$this->db->query("delete from paket where idpaket='$id'");
		return $hasil;
	}
	function get_no_order(){
		$q = $this->db->query("SELECT MAX(RIGHT(id_order,6)) AS kd_max FROM orders where date(tanggal)=CURDATE()");
        $kd = "";
        if($q->num_rows()>0){
            foreach($q->result() as $k){
                $tmp = ((int)$k->kd_max)+1;
                $kd = sprintf("%06s", $tmp);
            }
        }else{
            $kd = "000001";
        }
        return "INV".date('dmy').$kd;
	}
	function simpan_order($no_order,$nama,$jekel,$alamat,$notelp,$email,$paket,$pinjam,$kembali,$bodyo,$lensaa2,$ket){
		$hasil=$this->db->query("INSERT INTO orders(id_order,nama,jenkel,alamat,notelp,email,pinjam,kembali,bodyo,lensaa,paket_id_order,keterangan,tanggal)VALUES('$no_order','$nama','$jekel','$alamat','$notelp','$email','$pinjam','$kembali','$bodyo','$lensaa2','$paket','$ket',CURDATE())");
		return $hasil;
	}
	function get_metode(){
		$hasil=$this->db->query("SELECT * FROM metode_bayar");
		return $hasil;
	}
	function set_bayar($no_invoice,$id){
		$hasil=$this->db->query("update orders set metode_id='$id' where id_order='$no_invoice'");
		return $hasil;
	}
	function faktur(){
		$inv=$this->session->userdata('invoices');
		$hasil=$this->db->query("SELECT id_order,tanggal,nama_paket,hrg_body,hrg_lensa,bodyo,lensaa,SUM(bodyo+lensaa)AS jml_pinjam,(hrg_body*bodyo) AS sub_bodyo,(hrg_lensa*lensaa)AS sub_lensaa,SUM((hrg_body*bodyo)+(hrg_lensa*lensaa))AS total,pinjam,kembali,metode,bank,norek,atasnama,nama,IF(jenkel='L','Laki-Laki','Perempuan')AS jenkel,alamat,notelp,email FROM orders JOIN metode_bayar ON metode_id=id_metode JOIN paket ON paket_id_order=idpaket WHERE id_order='$inv'");
		return $hasil;
	}

}
