<?php
class Malbum extends CI_Model{
	function jml_album(){
		$hasil=$this->db->query("SELECT idalbum,COUNT(albumid)AS total FROM galeri JOIN album ON idalbum=albumid GROUP BY albumid");
		return $hasil;
	}
	function get_album($offset,$limit){
		$hasil=$this->db->query("select * from album order by idalbum DESC limit $offset,$limit");
		return $hasil;
	}
	function count_album(){
		$hasil=$this->db->query("select * from album");
		return $hasil;
	}
	function tampil_album(){
		$hasil=$this->db->query("select * from album");
		return $hasil;
	}
	function SimpanAlbum($jdl,$gambar){
		$hasil=$this->db->query("insert into album (jdl_album,cover,jml) values ('$jdl','$gambar','0')");
		return $hasil;
	}
	function update_album_with_img($kode,$judul,$gambar){
		$hasil=$this->db->query("UPDATE album SET jdl_album='$judul',cover='$gambar' WHERE idalbum='$kode'");
		return $hasil;
	}
	function update_album($kode,$judul){
		$hasil=$this->db->query("UPDATE album SET jdl_album='$judul' WHERE idalbum='$kode'");
		return $hasil;
	}
	function hapus_album($id){
		$this->db->trans_start();
            $this->db->query("delete from galeri where albumid='$id'");
            $this->db->query("delete from album where idalbum='$id'");
        $this->db->trans_complete();
        if($this->db->trans_status()==true)
        return true;
        else
        return false; 
	}
}