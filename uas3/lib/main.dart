import 'package:flutter/material.dart';
import 'jadwal.dart';
import 'home.dart';
 
void main() => runApp(
      MaterialApp(
        title: 'Returning Data',
        home: Home(),
        routes: <String, WidgetBuilder>{
            '/Haldua' : (BuildContext context) => new Jadwal(),
         },
      ),
    );