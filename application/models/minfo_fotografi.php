<?php
class Minfo_fotografi extends CI_Model{

	function count_info_fotografi(){
		$hasil=$this->db->query("select * from info_fotografi");
		return $hasil;
	}

	function get_info_fotografi($offset,$limit){
		$hasil=$this->db->query("select * from info_fotografi order by id_if DESC limit $offset,$limit");
		return $hasil;
	}
	function simpan_info_fotografi($nama_if,$deskripsi,$gambar){
		$hasil=$this->db->query("INSERT INTO info_fotografi(nama_if,deskripsi,gambar) VALUES ('$nama_if','$deskripsi','$gambar')");
		return $hasil;
	}
	function tampil_info_fotografi(){
		$hasil=$this->db->query("select * from info_fotografi order by id_if DESC");
		return $hasil;
	}
	function getinfo_fotografi($kode){
		$hasil=$this->db->query("select * from info_fotografi where id_if='$kode'");
		return $hasil;
	}
	function update_info_fotografi_with_img($kode,$nama_if,$deskripsi,$gambar){
		$hasil=$this->db->query("UPDATE info_fotografi SET nama_if='$nama_if',deskripsi='$deskripsi',gambar='$gambar' WHERE id_if='$kode'");
		return $hasil;
	}
	function update_info_fotografi_no_img($kode,$nama_if,$deskripsi){
		$hasil=$this->db->query("UPDATE info_fotografi SET nama_if='$nama_if',deskripsi='$deskripsi' WHERE id_if='$kode'");
		return $hasil;
	}
	function hapus_info_fotografi($id){
		$hasil=$this->db->query("delete from info_fotografi where id_if='$id'");
		return $hasil;
	}

}
