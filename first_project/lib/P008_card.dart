import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Card(
            child: Text('Card Widget'),
            color: Colors.yellow,
            shadowColor: Colors.blue,
            elevation: 10,
          ),
        ),
      ),
    );
  }
}
