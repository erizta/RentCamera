<?php
class Mtestimoni extends CI_Model{
    function simpan_testimoni($nama,$email,$msg){
        $hasil=$this->db->query("INSERT INTO testimoni(nama,email,pesan,status,tgl_post) VALUES ('$nama','$email','$msg','0',curdate())");
        return $hasil;
    }
    function tampil_test(){
        $hasil=$this->db->query("SELECT * FROM testimoni WHERE status='1' order by idtestimoni desc");
        return $hasil;
    }
    function get_testimoni(){
        $hasil=$this->db->query("SELECT * FROM testimoni WHERE status='0' order by tgl_post desc");
        return $hasil;
    }
    function publish($id){
        $hasil=$this->db->query("UPDATE testimoni SET status='1' WHERE idtestimoni='$id'");
        return $hasil;
    }
    function edit_testimoni($kode,$nama,$pesan){
        $hasil=$this->db->query("UPDATE testimoni SET nama='$nama',pesan='$pesan' WHERE idtestimoni='$kode'");
        return $hasil;
    }
    function hapus_testimoni($kode){
        $hasil=$this->db->query("delete from testimoni WHERE idtestimoni='$kode'");
        return $hasil;
    }
}
