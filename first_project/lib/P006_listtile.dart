import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({super.key});

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
      appBar: AppBar(title: Text('LIstTile'), backgroundColor: Colors.blue),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              height: 100,
              width: 100,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/${images[index]}'),
              ),
            ),
            title: Text(
              '${images[index]}',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('${images[index]}', style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.add),
          );
        },
        itemCount: images.length,
      ),
    );
  }
}
