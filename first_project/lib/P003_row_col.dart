import 'package:flutter/material.dart';

class MyRowColumn extends StatelessWidget {
  const MyRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row And Column'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.blue,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                children: [
                  Container(height: 80,width: 80,color: Colors.blue),
                  SizedBox(height: 10,),
                  Container(height: 80,width: 80,color: Colors.red),
                  SizedBox(height: 10,),
                  Container(height: 80,width: 80,color: Colors.yellow),
                  SizedBox(height: 10,),
                  Container(height: 80,width: 80,color: Colors.green),
                  SizedBox(height: 10,),
                  Container(height: 80,width: 80,color: Colors.grey),
                  SizedBox(height: 10,),
                  Container(height: 80,width: 80,color: Colors.orange),
                  SizedBox(height: 10,),
                  Container(height: 80,width: 80,color: Colors.purple),
                  SizedBox(height: 10,),
                  Container(height: 80,width: 80,color: Colors.brown),
                  SizedBox(height: 10,),
                  Container(height: 80,width: 80,color: Colors.indigo),
                ],
                ),
              ),
              SizedBox(height: 10,),
              Container(height: 300,width: 300,color: Colors.blue),
              SizedBox(height: 10,),
              Container(height: 300,width: 300,color: Colors.red),
              SizedBox(height: 10,),
              Container(height: 300,width: 300,color: Colors.yellow),
              SizedBox(height: 10,),
              Container(height: 300,width: 300,color: Colors.green),
              SizedBox(height: 10,),
              Container(height: 300,width: 300,color: Colors.grey),
              SizedBox(height: 10,),
              Container(height: 300,width: 300,color: Colors.orange),
              SizedBox(height: 10,),
              Container(height: 300,width: 300,color: Colors.purple),
              SizedBox(height: 10,),
              Container(height: 300,width: 300,color: Colors.brown),
              SizedBox(height: 10,),
              Container(height: 300,width: 300,color: Colors.indigo),
            ],
          ),
        ),



        // child: Row(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     Text('First', style: TextStyle(fontSize: 30)),
        //     Text('Second', style: TextStyle(fontSize: 30)),
        //     Text('Third', style: TextStyle(fontSize: 30)),
        //     // Text('Fourth', style: TextStyle(fontSize: 30)),
        //     // Text('Fifth', style: TextStyle(fontSize: 30)),
        //     // Text('Sixth', style: TextStyle(fontSize: 30)),
        //     // Text('Seventh', style: TextStyle(fontSize: 30)),
        //   ],
        // ),

        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Text('First',style: TextStyle(fontSize: 30),),
        //     Text('Second',style: TextStyle(fontSize: 30),),
        //     Text('Third',style: TextStyle(fontSize: 30),),
        //     Text('Fourth',style: TextStyle(fontSize: 30),),
        //     Text('Fifth',style: TextStyle(fontSize: 30),),
        //     Text('Sixth',style: TextStyle(fontSize: 30),),
        //     Text('Seventh',style: TextStyle(fontSize: 30),),
        //   ],
        // ),
      ),
    );
  }
}
