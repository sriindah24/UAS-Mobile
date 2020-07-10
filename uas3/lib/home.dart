import 'package:flutter/material.dart';

import 'database_helper.dart';
import 'catatan.dart';
import 'tampilan.dart';

 
class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}
 
class _HomeState extends State<Home> {
  List<Catatan> items = new List();
  DatabaseHelper db = new DatabaseHelper();
 
  @override
  void initState() {
    super.initState();
 
    db.getAllCatatans().then((catatans) {
      setState(() {
        catatans.forEach((catatan) {
          items.add(Catatan.fromMap(catatan));
        });
      });
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          
          title: Text('Catatan Tugas'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          actions: <Widget>[
          IconButton(
           icon: Icon(Icons.add, color: Colors.white),   
             onPressed: () => _createNewCatatan(context),
         ),
          ],
        ),
        
        body: Center(
          
          child: ListView.builder(
              itemCount: items.length,              
              padding: EdgeInsets.only(bottom: 15,left: 15,right: 15),
              itemBuilder: (context, position) {
                return Column(
                  
                  children: <Widget>[
                    Divider(height: 2.0),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                    ),
                    
                    ListTile(
                      
                      title: Text(
                        '${items[position].matkul}',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        
                      ),
                      subtitle: Text(
                        '${items[position].tugas}',
                        style: new TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey,
                        ),
                      ),
                      leading: Text(
                        '${items[position].deadline}',
                        style: new TextStyle(
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                          color: Colors.red,
                        ),
                      ),
                      trailing: Column(
                        children: <Widget>[   
                          Container(     
                                             
                            child: IconButton(
                              icon: const Icon(Icons.delete),
                              iconSize: 23,
                              color: Colors.red,
                              onPressed: () => _deleteCatatan(context, items[position], position)),
                          ),
                         ], 
                      ),
                      
                      onTap: () => _navigateToCatatan(context, items[position]),
                    ),
                  ],
                );
              }
              ),
        ),
        
      ),
    );
  }
 
  void _deleteCatatan(BuildContext context, Catatan catatan, int position) async {
    db.deleteCatatan(catatan.id).then((catatans) {
      setState(() {
        items.removeAt(position);
      });
    });
  }
 
  void _navigateToCatatan(BuildContext context, Catatan catatan) async {
    String result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CatatanScreen(catatan)),
    );
 
    if (result == 'update') {
      db.getAllCatatans().then((catatans) {
        setState(() {
          items.clear();
          catatans.forEach((catatan) {
            items.add(Catatan.fromMap(catatan));
          });
        });
      });
    }
  }
 
  void _createNewCatatan(BuildContext context) async {
    String result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CatatanScreen(Catatan('', '',''))),
    );
 
    if (result == 'save') {
      db.getAllCatatans().then((catatans) {
        setState(() {
          items.clear();
          catatans.forEach((catatan) {
            items.add(Catatan.fromMap(catatan));
          });
        });
      });
    }
  }
}