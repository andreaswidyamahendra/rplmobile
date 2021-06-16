<?php

$namaDosen = DB::table('dosen')->select('namaDosen')
    ->where('email', $myString)
    ->get();
$nik = DB::table('dosen')->select('nik')
    ->where('email', $myString)
    ->orWhere('namaDosen', $nama_login)
    ->get();
$ujian = DB::table('ujian')
    ->leftJoin('kp', 'ujian.idKp', '=', 'kp.idKp')
    ->get();
$data = DB::table('registrasi')
    ->join('mahasiswa', 'mahasiswa.nim', '=', 'registrasi.nim')
    ->join('kp', 'registrasi.idReg', '=', 'kp.idReg')
    ->select(DB::raw('registrasi.nim,mahasiswa.nama,registrasi.idReg,
    kp.judul,kp.lembaga,kp.nik,kp.idKp,kp.pengajuanUjian'))
    ->get();
$dafPengajuan = DB::table('ujian')
    ->join('kp', 'ujian.idKp', '=', 'kp.idKp')
    ->join('mahasiswa', 'ujian.nim', '=', 'mahasiswa.nim')
    ->select(DB::raw('ujian.idKp,ujian.nim,mahasiswa.nama,kp.nik,kp.pengajuanUjian'))
    ->get();
return view('dosen.BimbinganKp', [
    'nik' => $nik, 'namaDosen' => $namaDosen,
    'data' => $data, 'dafPengajuan' => $dafPengajuan, 'ujian' => $ujian
]);

?>