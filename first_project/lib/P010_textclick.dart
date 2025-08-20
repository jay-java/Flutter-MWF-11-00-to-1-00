import 'package:flutter/material.dart';

class MyTextClick extends StatelessWidget {
  const MyTextClick({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('click'), backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                print('clicked on text button');
              },
              child: Text('TextButton', style: TextStyle(fontSize: 30)),
            ),
            ElevatedButton(
              onPressed: () {
                print('elevated button');
              },
              child: Text('ElevatedButton', style: TextStyle(fontSize: 30)),
            ),
            OutlinedButton(
              onPressed: () {
                print('outlined button');
              },
              onLongPress: () {
                print('long pressed on outlined button');
              },
              child: Text('OUtlied Button', style: TextStyle(fontSize: 30)),
            ),
            InkWell(
              onTap: () {
                print('user data clicked');
              },
              child: Text('user data', style: TextStyle(fontSize: 30)),
            ),
            GestureDetector(
              onTap: () {
                print('clicked on user');
              },
              child: Text('Hello user', style: TextStyle(fontSize: 30)),
            ),
          ],
        ),
      ),
    );
  }
}
