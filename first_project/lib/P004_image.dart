import 'package:flutter/material.dart';

class MyImages extends StatelessWidget {
  const MyImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyImage'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Image.asset('assets/images/a.jpg'),
            ),
            SizedBox(height: 10,),
            Container(
              height: 400,
              width: double.infinity,
              child: Image.asset('assets/images/b.jpg'),
            ),
            SizedBox(height: 10,),
            Container(
              height: 400,
              width: double.infinity,
              child: Image.asset('assets/images/c.jpg'),
            ),
            SizedBox(height: 10,),
            Container(
              height: 400,
              width: double.infinity,
              child: Image.asset('assets/images/d.jpg'),
            ),
            SizedBox(height: 10,),
            Container(
              height: 400,
              width: double.infinity,
              child: Image.asset('assets/images/e.jpg'),
            ),
            SizedBox(height: 10,),
            Container(
              height: 400,
              width: double.infinity,
              child: Image.asset('assets/images/f.png'),
            ),
            SizedBox(height: 10,),
            Container(
              height: 400,
              width: double.infinity,
              child: Image.asset('assets/images/g.jpg'),
            ),
            SizedBox(height: 10,),
            Container(
              height: 400,
              width: double.infinity,
              child: Image.asset('assets/images/h.jpg'),
            ),
            SizedBox(height: 10,),
            Container(
              height: 400,
              width: double.infinity,
              child: Image.asset('assets/images/i.jpg'),
            ),
            SizedBox(height: 10,),
            Container(
              height: 400,
              width: double.infinity,
              child: Image.asset('assets/images/j.jpg'),
            ),
            SizedBox(height: 10,),
            Container(
              height: 400,
              width: double.infinity,
              child: Image.asset('assets/images/k.jpg'),
            ),
            SizedBox(height: 10,),
            Container(
              height: 400,
              width: double.infinity,
              child: Image.asset('assets/images/l.jpg'),
            ),
            SizedBox(height: 10,),
            Container(
              height: 400,
              width: double.infinity,
              child: Image.asset('assets/images/m.jpg'),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
