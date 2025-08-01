import 'package:flutter/material.dart';

class MyCenterContainer extends StatelessWidget {
  const MyCenterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CenterContainer'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.green,
        height: double.infinity,
        width: double.infinity,
        // height: 300,
        // width: 300,
        child: Text('Hello flutter',style: TextStyle(fontSize: 30),),
      )


      // Container(
      //   color: Colors.green,
      //   child: Center(child: Text('Hello flutter', style: TextStyle(fontSize: 30))),
      // ),
    );
  }
}
