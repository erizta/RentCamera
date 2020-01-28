<?php
class Mlogin extends CI_Model{
    function cekadmin($u,$p){
        $hasil=$this->db->query("select*from admin where username='$u'and password=('$p')");
        return $hasil;
    }

}
