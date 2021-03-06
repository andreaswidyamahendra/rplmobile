import 'package:flutter/material.dart';
import 'package:flutter_sikp/Dosen/dbdosen.dart';
// import 'package:flutter_app/Home.dart';
// import 'package:flutter_app/TugasPertemuan8.dart';
// import 'package:flutter_app/dashboard.dart';
// import 'package:flutter_app/main.dart';
import 'package:flutter_sikp/Mahasiswa/dbMahasiswa.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  void navigateLogin() async{
    // SharedPreferences pref = await SharedPreferences.getInstance();
    // int isLogin = pref.getInt("is_login");
    // if(isLogin == 1) {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //         builder: (context) => DashBo(title: 'Dashboard')),
    //   );
    // }
  }

  @override
  void initState() {
    //navigateLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
            child: Form(
              //key:key,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    decoration: new InputDecoration(
                      labelText: "Username",
                      hintText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(3),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  TextFormField(
                    decoration: new InputDecoration(
                      labelText: "Password",
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(3),
                      ),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: () async {
                      // SharedPreferences pref = await SharedPreferences
                      //     .getInstance();
                      // await pref.setInt("is_login", 1);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => DbMhs(title: 'Mahasiswa')),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}