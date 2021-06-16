<?php

include 'conn.php';

$lembaga = $_POST['lembaga'];
$pimpinan = $_POST['pimpinan'];
$noTelp = $_PORT['noTelp'];
$alamat = $_POST['alamat'];
$fax = $POST['fax'];
$doksurat = $_POST['doksurat'];

$connect->query("INSERT INTO surat (lembaga,pimpinan,noTelp,alamat,fax,doksurat) VALUES ('".$lembaga."','".$pimpinan."','".$noTelp."','".$alamat."','".$fax."','".$doksurat."') ")

?>