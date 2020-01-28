<?php
class Mgaleri extends CI_Model{
	function get_galeri($kode,$offset,$limit){
		$hasil=$this->db->query("select * from galeri where albumid='$kode' order by id_galeri DESC limit $offset,$limit");
		return $hasil;
	}
	function galeri_photo($offset,$limit){
		$hasil=$this->db->query("select * from galeri order by id_galeri DESC limit $offset,$limit");
		return $hasil;
	}
	function count_photo($kode){
		$hasil=$this->db->query("select * from galeri where albumid='$kode'");
		return $hasil;
	}
	function jml_photo(){
		$hasil=$this->db->query("select * from galeri");
		return $hasil;
	}
	function get_album(){
		$hasil=$this->db->query("select * from album");
		return $hasil;
	}
	function tampil_galeri(){
		$hasil=$this->db->query("SELECT galeri.*,jdl_album FROM galeri JOIN album ON albumid=idalbum");
		return $hasil;
	}
	function SimpanGaleri($jdl,$album,$gambar){
		$this->db->trans_start();
            $this->db->query("insert into galeri (jdl_galeri,gbr_galeri,albumid) values ('$jdl','$gambar','$album')");
            $this->db->query("UPDATE album SET jml=jml+1 WHERE idalbum='$album'");
        $this->db->trans_complete();
        if($this->db->trans_status()==true)
        return true;
        else
        return false; 
	}
	function update_galeri_with_img($kode,$jdl,$album,$gambar){
		$hasil=$this->db->query("UPDATE galeri SET jdl_galeri='$jdl',gbr_galeri='$gambar',albumid='$album' WHERE id_galeri='$kode'");
		return $hasil;
	}
	function update_galeri($kode,$jdl,$album){
		$hasil=$this->db->query("UPDATE galeri SET jdl_galeri='$jdl',albumid='$album' WHERE id_galeri='$kode'");
		return $hasil;
	}
	function hapus_photo($id){
		$hasil=$this->db->query("delete from galeri WHERE id_galeri='$id'");
		return $hasil;
	}

}