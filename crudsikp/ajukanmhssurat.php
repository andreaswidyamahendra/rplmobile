<?php

include 'conn.php';

$lembaga = $_POST['lembaga'];
$pimpinan = $_POST['pimpinan'];
$noTelp = $_POST['noTelp'];
$alamat = $_POST['alamat'];
$fax = $_POST['fax'];
$dokSurat = $_POST['dokSurat'];

$connect->query("INSERT INTO surat (lembaga,pimpinan,noTelp,alamat,fax,dokSurat) VALUES ('".$lembaga."','".$pimpinan."','".$noTelp."','".$alamat."','".$fax."','".$dokSurat."') ")

?>