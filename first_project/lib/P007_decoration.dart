import 'package:flutter/material.dart';

class MyDecoration extends StatelessWidget {
  const MyDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Decoration'), backgroundColor: Colors.blue),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          // color: Colors.grey,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blue),
            boxShadow: [
              BoxShadow(color: Colors.grey, spreadRadius: 10, blurRadius: 50),
            ],
          ),
        ),
      ),
    );
  }
}
