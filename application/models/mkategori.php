<?php
class Mkategori extends CI_Model{

    function hapus_kategori($id){
        $query=$this->db->query("delete from kategori_paket where id_kategori='$id'");
        return $query;
    }

    function edit_kategori($id,$kategori){
        $query=$this->db->query("update kategori_paket set kategori='$kategori' where id_kategori='$id'");
        return $query;
    }
    function simpan_kategori($kategori){
        $query=$this->db->query("insert into kategori_paket(kategori)values('$kategori')");
        return $query;
    }
    function kategori(){
        $query=$this->db->query("SELECT * FROM kategori_paket");
        return $query;
    }

}
