<?php

include 'conn.php';

$judul = $_POST['judul'];
$tools = $_POST['tools'];
$spesifikasi = $_POST['spesifikasi'];
$lembaga = $_POST['lembaga'];
$pimpinan = $POST['pimpinan'];
$noTelp = $_POST['noTelp'];
$alamat = $_POST['alamat'];
$fax = $_POST['fax'];
$dokKp = $_POST['dokKp'];

$connect->query("INSERT INTO kp (judul,tools,spesifikasi,lembaga,pimpinan,noTelp,alamat,fax,dokKp) VALUES ('".$judul."','".$tools."','".$spesifikasi."','".$lembaga."','".$pimpinan."','".$noTelp."','".$alamat."','".$fax."','".$dokKp."') ")

?>