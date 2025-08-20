import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SpashScreen'), backgroundColor: Colors.blue),
      body: Center(child: Text('Hello user', style: TextStyle(fontSize: 50))),
    );
  }
}
