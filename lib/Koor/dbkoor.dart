import 'package:flutter/material.dart';
import 'package:flutter_sikp/Koor/kbimbingankp.dart';
import 'package:flutter_sikp/Koor/ksuratketerangan.dart';
import 'package:flutter_sikp/Koor/kujiankp.dart';
import 'package:flutter_sikp/Koor/regiskp.dart';
import 'package:flutter_sikp/Koor/regisprakp.dart';
import 'package:flutter_sikp/Koor/setujian.dart';

class DbKoor extends StatefulWidget {
  @override
  _DbKoorState createState() => _DbKoorState();
}

class _DbKoorState extends State<DbKoor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Andreas Baikhati"),
              accountEmail: Text("andreas.widya@staff.ukdw.ac.id"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "AB",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              title: Text("Bimbingan KP"),
              trailing: Icon(Icons.book),
              subtitle: Text("Daftar Bimbingan KP"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KbimbinganKp(title: "Daftar Bimbingan KP")),
                );
              },
            ),
            ListTile(
              trailing: Icon(Icons.book_sharp),
              title: Text("Batas KP"),
              subtitle: Text("Atur Batas KP"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SetUjian(title: "Atur Batas KP")),
                );
              },
            ),
            ListTile(
              title: Text("Ujian KP"),
              trailing: Icon(Icons.book_sharp),
              subtitle: Text("Ujian KP"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KujianKp(title: "Ujian KP")),
                );
              },
            ),
            ListTile(
              title: Text("Surat Keterangan"),
              trailing: Icon(Icons.book_sharp),
              subtitle: Text("Daftar Pengajuan Surat Keterangan"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KsuratKet(title: "Daftar Pengajuan Surat Keterangan")),
                );
              },
            ),
            ListTile(
              title: Text("Pra KP"),
              trailing: Icon(Icons.book_sharp),
              subtitle: Text("Daftar Pengajuan Pra KP"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisPrakp(title: "Daftar Pengajuan Pra KP")),
                );
              },
            ),
            ListTile(
              title: Text("KP"),
              trailing: Icon(Icons.book),
              subtitle: Text("Daftar Pengajuan KP"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisKp(title: "Daftar Pengajuan KP")),
                );
              },
            ),
            // ListTile(
            //   title: Text("Pengajuan KP"),
            //   trailing: Icon(Icons.schedule),
            //   subtitle: Text("Daftar KP"),
            //   onTap: () {
            //     // Navigator.pop(context);
            //     // Navigator.push(
            //     //   context,
            //     //   MaterialPageRoute(builder: (context) => DbKp(title: "Daftar Pengajuan KP")),
            //     // );
            //   },
            // ),
            Divider(
              color: Colors.black,
              height: 20,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(
              title: Text("Logout"),
              trailing: Icon(Icons.exit_to_app),
              onTap: () async {
                // SharedPreferences pref = await SharedPreferences.getInstance();
                // await pref.setInt("is_login", 0);
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(builder: (context) => Login(title: "Login")),
                //);
              },
            )
          ],
        ),
      ),
      body: Container(
          child: Center(
            child: Text("Dashboard Mahasiswa",
              style: TextStyle(
                  fontSize: 20
              ),
            ),
          )
      ),
    );
  }
}
