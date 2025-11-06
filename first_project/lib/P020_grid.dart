import 'package:flutter/material.dart';

class MyGrid extends StatelessWidget {
  const MyGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyGrid'), backgroundColor: Colors.green),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.grey, height: 100, width: 100),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.blue, height: 100, width: 100),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.black54, height: 100, width: 100),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.yellow, height: 100, width: 100),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.red, height: 100, width: 100),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.grey, height: 100, width: 100),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.blue, height: 100, width: 100),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.black54, height: 100, width: 100),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.yellow, height: 100, width: 100),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.red, height: 100, width: 100),
          ),
        ],
      ),
    );
  }
}
