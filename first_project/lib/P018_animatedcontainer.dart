import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  const MyContainer({super.key});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  double _margin = 0;
  double _width = 200;
  Color _color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
        backgroundColor: Colors.blue,
      ),
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
               setState(() {
                 _margin = 50;
               });
            }, child: Text('margin')),
            ElevatedButton(onPressed: () {
              setState(() {
                _color = Colors.yellow;
              });
            }, child: Text('color')),

            ElevatedButton(onPressed: () {
              setState(() {
                _width = 400;
              });
            }, child: Text('margin')),

          ],
        ),
      ),
    );
  }
}
