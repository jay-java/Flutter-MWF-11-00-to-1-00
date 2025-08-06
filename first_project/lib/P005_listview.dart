import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    List images = [
      'a.jpg',
      'b.jpg',
      'c.jpg',
      'd.jpg',
      'e.jpg',
      'f.png',
      'g.jpg',
      'h.jpg',
      'i.jpg',
      'j.jpg',
      'k.jpg',
      'l.jpg',
      'm.jpg',
    ];

    return Scaffold(
      appBar: AppBar(title: Text('ListView'), backgroundColor: Colors.blue),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              // Image.asset('assets/images/${images[index]}'),
              Text('${images[index]}',style: TextStyle(fontSize: 20),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/${images[index]}'),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 10,
              // )
            ],
          );
        },
        itemCount: images.length,
      ),
    );
  }
}
