<?php

include 'conn.php';

$judul = $_POST['judul'];
$tools = $_POST['tools'];
$spesifikasi = $_POST['spesifikasi'];
$lembaga = $_POST['lembaga'];
$pimpinan = $_POST['pimpinan'];
$noTelp = $_POST['noTelp'];
$alamat = $_POST['alamat'];
$fax = $_POST['fax'];
$dokPraKp = $_POST['dokPraKp'];

$connect->query("INSERT INTO prakp (judul,tools,spesifikasi,lembaga,pimpinan,noTelp,alamat,fax,dokPraKp) VALUES ('".$judul."','".$tools."','".$spesifikasi."','".$lembaga."','".$pimpinan."','".$noTelp."','".$alamat."','".$fax."','".$dokPraKp."') ")

?>