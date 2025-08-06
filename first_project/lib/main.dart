import 'package:flutter/material.dart';

import 'P001_text.dart';
import 'P002_cener_container.dart';
import 'P004_image.dart';
import 'P005_listview.dart';
import 'P006_listtile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyListTile(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('MyApp'),
      //     backgroundColor: Colors.blue.shade800,
      //   ),
      //   body: Text(
      //       'Hello Flutter developers dfb',
      //       style: TextStyle(
      //         fontSize: 30,
      //         color: Colors.white,
      //         backgroundColor: Colors.green,
      //         fontWeight: FontWeight.bold
      //       ),
      //   ),
      // ),
    );
  }
}
