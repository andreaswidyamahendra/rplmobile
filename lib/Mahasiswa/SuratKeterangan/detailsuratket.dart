import 'package:flutter/material.dart';

class DetailSuratket extends StatefulWidget {
  List list;
  int index;
  DetailSuratket({this.list, this.index});

  @override
  _DetailSuratketState createState() => _DetailSuratketState();
}

class _DetailSuratketState extends State<DetailSuratket> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("${widget.list[widget.index]['lembaga']}")),
      body: new Container(
        height: 250.0,
        padding: const EdgeInsets.all(20.0),
        child: new Card(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(padding: const EdgeInsets.only(top: 30.0),),
                new Text(widget.list[widget.index]['lembaga'], style: new TextStyle(fontSize: 20.0),),
                new Text("Pimpinan : ${widget.list[widget.index]['pimpinan']}", style: new TextStyle(fontSize: 18.0),),
                new Text("No Telpon : ${widget.list[widget.index]['noTelp']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Alamat : ${widget.list[widget.index]['alamat']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Fax : ${widget.list[widget.index]['fax']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Dokumen : ${widget.list[widget.index]['dokSurat']}", style: new TextStyle(fontSize: 18.0),),
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
