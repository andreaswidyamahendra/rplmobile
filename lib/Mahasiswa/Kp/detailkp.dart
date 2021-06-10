import 'package:flutter/material.dart';

class DetailKp extends StatefulWidget {
  List list;
  int index;
  DetailKp({this.list, this.index});

  @override
  _DetailKpState createState() => _DetailKpState();
}

class _DetailKpState extends State<DetailKp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("${widget.list[widget.index]['lembaga']}")),
      body: new Container(
        height: 300.0,
        padding: const EdgeInsets.all(20.0),
        child: new Card(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(padding: const EdgeInsets.only(top: 30.0),),
                new Text(widget.list[widget.index]['lembaga'],
                  style: new TextStyle(fontSize: 20.0),),
                new Text("Judul : ${widget.list[widget.index]['judul']}",
                  style: new TextStyle(fontSize: 18.0),),
                new Text("Tools : ${widget.list[widget.index]['tools']}",
                  style: new TextStyle(fontSize: 18.0),),
                new Text("Spesifikasi : ${widget.list[widget.index]['spesifikasi']}",
                  style: new TextStyle(fontSize: 18.0),),
                new Text("pimpinan : ${widget.list[widget.index]['pimpinan']}",
                  style: new TextStyle(fontSize: 18.0),),
                new Text("No Telp : ${widget.list[widget.index]['noTelp']}",
                  style: new TextStyle(fontSize: 18.0),),
                new Text("Alamat : ${widget.list[widget.index]['alamat']}",
                  style: new TextStyle(fontSize: 18.0),),
                new Text("Fax : ${widget.list[widget.index]['fax']}",
                  style: new TextStyle(fontSize: 18.0),),
                new Text("Dokumen : ${widget.list[widget.index]['dokKp']}",
                  style: new TextStyle(fontSize: 18.0),),
                //new Text("Status : ${widget.list[widget.index]['statusSurat']}", style: new TextStyle(fontSize: 18.0),),
                new Padding(padding: const EdgeInsets.only(top: 30.0),),
                new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    //new RaisedButton(
                    // child: new Text("Edit"),
                    // color: Colors.blue,
                    // onPressed: ()=>Navigator.of(context).push(
                    //     new MaterialPageRoute(
                    //         builder:(BuildContext context)=> new editData(list: widget.list, index: widget.index,)
                    //     )
                    // )
                    //),
                    //new RaisedButton(
                    // child: new Text("Delete"),
                    // color: Colors.red,
                    // onPressed: ()=>confirm(),
                    //)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
