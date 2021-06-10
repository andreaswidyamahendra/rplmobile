import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_sikp/Mahasiswa/SuratKeterangan/ajukansuratket.dart';
import 'package:flutter_sikp/Mahasiswa/SuratKeterangan/detailsuratket.dart';
import 'package:http/http.dart' as http;

class DbSuratKet extends StatefulWidget {
  final String title;

  DbSuratKet({Key key, this.title,}) :super(key: key);

  @override
  _DbSuratKetState createState() => _DbSuratKetState();
}

class _DbSuratKetState extends State<DbSuratKet> {
  Future<List> getData() async{
    final response= await http.get("http://10.0.2.2/crudsikp/getmhssurat.php");
    return jsonDecode(response.body);
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Daftar Pengajuan Surat Keterangan"),
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: ()=>Navigator.of(context).push(
          new MaterialPageRoute(
            builder: (BuildContext context) => new AjukanSuratKet(title: "Ajukan Surat Keterangan",),
          ),
        ),
      ),
      body: new FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot){
          if(snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? new ItemList(list: snapshot.data)
              : new Center( child: new CircularProgressIndicator(),);
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget{

  final List list;
  ItemList({this.list});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: list==null ? 0 : list.length,
        itemBuilder: (context, i) {
          return new Container(
              padding: const EdgeInsets.all(10.0),
              child: new GestureDetector(
                onTap: ()=>Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context)=> new DetailSuratket(list:list , index: i,) )
                ),
                child: new Card(
                  child: new ListTile(
                    title: new Text(list[i]['lembaga']),
                    leading: new Icon(Icons.widgets),
                    subtitle: new Text("Alamat : ${list[i]['alamat']}"),
                  ),
                ),
              )
          );
        }
    );
  }
}
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text(widget.title),
  //       actions: <Widget>[
  //         IconButton(
  //           icon: Icon(Icons.add),
  //           onPressed: (){
  //             Navigator.push(
  //               context,
  //               MaterialPageRoute(builder: (context) => AjukanSuratKet(title: "Ajukan Surat Keterangan")),
  //             );//.then(onGoBack);
  //           },
  //         )
  //       ],
  //     ),
  //     /*drawer: Drawer(
  //       child: ListView(
  //         children: <Widget>[
  //           UserAccountsDrawerHeader(
  //             accountName: Text("Andreas Baikhati"),
  //             accountEmail: Text("andreas.widya@si.ukdw.ac.id"),
  //             currentAccountPicture: CircleAvatar(
  //               backgroundColor: Colors.blue,
  //               child: Text(
  //                 "Ha",
  //                 style: TextStyle(fontSize: 40.0),
  //               ),
  //             ),
  //           ),
  //           Divider(
  //             color: Colors.black,
  //             height: 20,
  //             indent: 10,
  //             endIndent: 10,
  //           ),
  //           ListTile(
  //             title: Text("Logout"),
  //             trailing: Icon(Icons.exit_to_app),
  //             onTap: () async {
  //               SharedPreferences pref = await SharedPreferences.getInstance();
  //               await pref.setInt("is_login", 0);
  //               Navigator.pushReplacement(
  //                 context,
  //                 MaterialPageRoute(builder: (context) => Login()),
  //               );
  //             },
  //           )
  //         ],
  //       ),
  //     ),*/
  //     body: FutureBuilder(
  //       //future: ApiServices().getMahasiswa(),
  //       builder: (BuildContext context, AsyncSnapshot<List<Mahasiswa>> snapshot) {
  //         if (snapshot.hasError) {
  //           return Center(
  //             child: Text(
  //                 "Something wrong with message: ${snapshot.error.toString()}"),
  //           );
  //         } else if (snapshot.connectionState == ConnectionState.done) {
  //           lMhs = snapshot.data;
  //           return ListView.builder(
  //             itemBuilder: (context, position) {
  //               return Card(
  //                 margin: new EdgeInsets.symmetric(horizontal: 5.0, vertical: 1.0),
  //                 child: Container(
  //                   child: ListTile(
  //                     title: Text(lMhs[position].nama + " - " + lMhs[position].nim),
  //                     subtitle: Text(lMhs[position].email),
  //                     leading: CircleAvatar(
  //                       backgroundImage: NetworkImage(lMhs[position].foto),
  //                     ),
  //                     onLongPress: (){
  //                       showDialog(
  //                           context: context,
  //                           builder: (_) => new AlertDialog(
  //                             content: Column(
  //                               mainAxisSize: MainAxisSize.min,
  //                               children: <Widget>[
  //                                 FlatButton(
  //                                   child: Text("Update"),
  //                                   onPressed: () {
  //                                     Navigator.pop(context);
  //                                     Navigator.push(
  //                                       context,
  //                                       MaterialPageRoute(builder: (context) => UpdateMhs(title: "asa", mhs: lMhs[position], nimcari: lMhs[position].nim)),
  //                                     ).then(onGoBack);
  //                                   },
  //                                 ),
  //                                 Divider(
  //                                   color: Colors.black,
  //                                   height: 20,
  //                                 ),
  //                                 FlatButton(
  //                                   child: Text("Delete"),
  //                                   onPressed: () async{
  //                                     //ApiServices().deleteMhs(lMhs[position].nim);
  //                                     Navigator.pop(context);
  //                                     setState(() {});
  //                                   },
  //                                 )
  //                               ],
  //                             ),
  //                           )
  //                       );
  //                     },
  //                   ),
  //                 ),
  //               );
  //             },
  //             itemCount: lMhs.length,
  //           );
  //         } else {
  //           return Center (
  //             child: CircularProgressIndicator(),
  //           );
  //         }
  //       },
  //       /*child: GestureDetector(
  //           child: Card(
  //               child: Column(
  //                 mainAxisSize: MainAxisSize.min,
  //                 children: <Widget>[
  //                   ListTile(
  //                     leading: Icon(Icons.person),
  //                     title: Text("Andreas Widya Mahendra"),
  //                     subtitle: Text("0812333445 - andreas.baikhati@staff.ukdw.ac.id"),
  //                       trailing: PopupMenuButton(
  //                         itemBuilder: (_) => <PopupMenuItem<String>>[
  //                           new PopupMenuItem<String>(
  //                               child: const Text('Update'), value: 'Update'),
  //                           new PopupMenuItem<String>(
  //                               child: const Text('Delete'), value: 'Delete'),
  //                         ],
  //                       )
  //                   )
  //                 ],
  //               )
  //           ),
  //         )*/
  //     ),
  //   );
  // }

