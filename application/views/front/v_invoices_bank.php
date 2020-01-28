<html lang="en" moznomarginboxes mozdisallowselectionprint>
<head>
    <title><?php echo $judul?></title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/laporan.css')?>"/>
</head>
<body  onLoad="window.print()">
<div id="laporan">
<?php
        error_reporting(0);
        $b=$data->row_array();
        //$c=$samp->row_array();
    ?>
<table align="center" style="width:800px; border-bottom:3px double;border-top:none;border-right:none;border-left:none;margin-top:5px;margin-bottom:20px;">

</table>

<table border="0" align="center" style="width:800px; border:none;margin-top:5px;margin-bottom:20px;">
<tr>
    <td colspan="4" style="width:700px;paddin-left:20px;"><center>INVOICE</center><br/></td>
</tr>
                        <tr>
                            <td style="width:140px;padding-left:5px;">No Invoice</td>
                            <td>: <?php echo $b['id_order']?></td>
                            <td style="width:100px;padding-left:5px;">Nama</td>
                            <td>: <?php echo $b['nama']?></td>
                        </tr>
                        <tr>
                            <td style="padding-left:5px;">Tgl Invoice</td>
                            <td>: <?php echo $b['tanggal']?></td>
                            <td style="padding-left:5px;">Jenis Kelamin</td>
                            <td>: <?php echo $b['jenkel']?></td>
                        </tr>
                        <tr>
                            <td style="padding-left:5px;">Paket</td>
                            <td>: <?php echo $b['nama_paket'];?></td>
                             <td style="padding-left:5px;">Alamat</td>
                            <td>: <?php echo $b['alamat'];?></td>
                        </tr>
                        <tr>
                            <td style="padding-left:5px;">Harga Body</td>
                            <td>: <?php echo 'Rp. '.number_format( $b['hrg_body']); ?></td>
                            <td style="padding-left:5px;">No Telp/HP</td>
                            <td>: <?php echo $b['notelp'];?></td>
                        </tr>

                        <tr>
                            <td style="padding-left:5px;">Harga Lensa</td>
                            <td>: <?php echo 'Rp. '.number_format( $b['hrg_lensa']); ?></td>
                            <td style="padding-left:5px;">Email</td>
                            <td>: <?php echo $b['email'];?></td>
                        </tr>
                        <tr>
                            <td style="padding-left:5px;">Metode Pembayaran</td>
                            <td>: <?php echo $b['metode']?></td>
                        </tr>
                        <tr>
                            <td style="padding-left:5px;">Bank</td>
                            <td>: <?php echo $b['bank']?></td>
                        </tr>
                        <tr>
                            <td style="padding-left:5px;">No Rekening</td>
                            <td>: <?php echo $b['norek']?></td>
                        </tr>
                        <tr>
                            <td style="padding-left:5px;">Atas Nama</td>
                            <td>: <?php echo $b['atasnama']?></td>
                        </tr>
                        <tr>
                            <td style="padding-left:5px;">Jumlah Transfer</td>
                            <td>: <b><?php echo 'Rp. '.number_format( $b['total']); ?></b></td>
                        </tr>
                        <tr>
                            <td style="padding-left:5px;">Total Pinjam</td>
                            <td>: <?php echo $b['jml_pinjam'].' Buah';?></td>
                        </tr>
</table>
<table border="0" align="center" style="width:800px;border:none;">
        <tr>
            <th style="text-align:center">Rincian</th>
        </tr>
</table>
<table border="1" align="center" style="width:800px;margin-bottom:20px;">
    <tr>
        <th style="text-align:center">Pinjam</th>
        <th style="text-align:center">Kembali</th>
        <th style="text-align:center">Body</th>
        <th style="text-align:center">Lensa</th>
        <th style="text-align:center">Total</th>
    </tr>
<tbody>

            <tr>
                <td style="text-align:center;"><?php echo $b['pinjam']; ?></td>
                <td style="text-align:center;"><?php echo $b['kembali']; ?></td>
                <td style="text-align:center;"><?php echo $b['bodyo']; ?></td>
                <td style="text-align:center;"><?php echo $b['lensaa']; ?></td>
                <td style="text-align:right;"><?php echo 'Rp. '.number_format( $b['total']); ?></td>

            </tr>

</table>
<table align="center" style="width:800px; border:none;margin-top:5px;margin-bottom:20px;">
    <tr>
        <td><?php echo $b['catatan'];?></td>
</table>
<table align="center" style="width:800px; border:none;margin-top:5px;margin-bottom:20px;">
    <tr>
        <td align="center">Yogyakarta, <?php echo date('d-M-Y')?></td>
    </tr>

    <tr>
    <td><br/><br/><br/><br/></td>
    </tr>
    <tr>
        <td align="center"><b>( <?php echo $b['nama'];?> )</b></td>
    </tr>

</table>

</div>
</body>
</html>
