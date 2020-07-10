import 'package:flutter/material.dart';

import 'database_helper.dart';
import 'catatan.dart';

 
class CatatanScreen extends StatefulWidget {
  final Catatan catatan;
  CatatanScreen(this.catatan);
 
  @override
  State<StatefulWidget> createState() => new _CatatanScreenState();
}
 
class _CatatanScreenState extends State<CatatanScreen> {
  DatabaseHelper db = new DatabaseHelper();
  TextEditingController _matkulController;
  TextEditingController _tugasController;
  TextEditingController _deadlineController;
 
  @override
  void initState() {
    super.initState();
 
    _matkulController = new TextEditingController(text: widget.catatan.matkul);
    _tugasController = new TextEditingController(text: widget.catatan.tugas);
    _deadlineController = new TextEditingController(text: widget.catatan.deadline);
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text('Input Catatan Tugas'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          IconButton(
           icon: Icon(Icons.event_note, color: Colors.white),   
             onPressed: (){
              Navigator.pushNamed(context, '/Haldua');
            },
        ),
          ],
        ),
      body: Container(
        margin: EdgeInsets.all(7.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            TextField(
              controller: _matkulController,
              decoration: InputDecoration(
                labelText: 'Matkul', 
                filled: true
                ),
            ),
            Padding(padding: new EdgeInsets.all(3.0)),
            TextField(
              controller: _tugasController,
              decoration: InputDecoration(
                labelText: 'Tugas',
                filled: true
                ),
            ),
            Padding(padding: new EdgeInsets.all(3.0)),
            TextField(
              controller: _deadlineController,
              decoration: InputDecoration(
                labelText: 'Deadline',
                filled: true
                ),
            ),
            RaisedButton(
              child: (widget.catatan.id != null) ? Text('SIMPAN') : Text('SIMPAN'),
              onPressed: () {
                if (widget.catatan.id != null) {
                  db.updateCatatan(Catatan.fromMap({
                    'id': widget.catatan.id,
                    'matkul': _matkulController.text,
                    'tugas': _tugasController.text,
                    'deadline': _deadlineController.text
                  })).then((_) {
                    Navigator.pop(context, 'update');
                  });
                }else {
                  db.saveCatatan(Catatan(_matkulController.text, _tugasController.text, _deadlineController.text)).then((_) {
                    Navigator.pop(context, 'save');
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}