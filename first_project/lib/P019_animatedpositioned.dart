import 'package:first_project/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAnimatedPositioned extends StatefulWidget {
  const MyAnimatedPositioned({super.key});

  @override
  State<MyAnimatedPositioned> createState() => _MyAnimatedPositionedState();
}

class _MyAnimatedPositionedState extends State<MyAnimatedPositioned> {
  @override
  Widget build(BuildContext context) {
    RxDouble _top = 0.0.obs;
    RxDouble _left = 0.0.obs;
    RxDouble _right = 0.0.obs;
    RxDouble _bottom = 0.0.obs;
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPositioned'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Obx(()=> Container(
               height: 400,
               width: 400,
               color: Colors.blue.shade400,
               child: Stack(
                 children: [
                   AnimatedPositioned(
                     top: _top.value,
                     left: _left.value,
                     child: Container(
                       width: 100,
                       height: 100,
                       color: Colors.grey.shade400,
                     ),
                     duration: Duration(seconds: 2),
                   ),
                 ],
               ),
             ),)
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {
                 _left.value = 50;
              }, child: Text('Right')),

              ElevatedButton(onPressed: () {
                _right.value = 0;
              }, child: Text('Left')),

              ElevatedButton(onPressed: () {
                _top.value = 50;
              }, child: Text('Top')),

              ElevatedButton(onPressed: () {

              }, child: Text('Bottom')),
            ],
          ),
        ],
      ),
    );
  }
}
