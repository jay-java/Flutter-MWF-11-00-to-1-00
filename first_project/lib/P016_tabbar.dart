import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home,color: Colors.blue,),
                ),
                Tab(
                  icon: Icon(Icons.chat,color: Colors.blue,),
                ),
                Tab(
                  icon: Icon(Icons.call,color: Colors.blue,),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                Container(
                  child: Center(
                    child: Text('Home',style: TextStyle(fontSize: 50),),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text('Chat',style: TextStyle(fontSize: 50),),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text('Calls',style: TextStyle(fontSize: 50),),
                  ),
                ),
              ]),
            )
          ]
        ),
      ),

    );
  }
}
