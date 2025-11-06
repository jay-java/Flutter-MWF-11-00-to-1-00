import 'package:first_project/pages/home.dart';
import 'package:flutter/material.dart';

class MyNavigationDrawer extends StatefulWidget {
  const MyNavigationDrawer({super.key});

  @override
  State<MyNavigationDrawer> createState() => _MyNavigationDrawerState();
}

class _MyNavigationDrawerState extends State<MyNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavigationDrawer'),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Text('MyApp', style: TextStyle(fontSize: 50))),
      drawer: Drawer(
        child: Column(
            children: [
              drawerHeader(context),
              drawerItems(context)]),
      ),
    );
  }

  drawerHeader(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 50),
          height: 150,
          width: 150,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/a.jpg'),
          ),
        ),
        Text('flutteruser@gmail.com', style: TextStyle(fontSize: 25)),
      ],
    );
  }

  drawerItems(BuildContext context) {
    return Column(
      children: [
        Divider(color: Colors.black54),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => Home()));
          },
        ),
        ListTile(leading: Icon(Icons.chat), title: Text('Chat')),
        ListTile(
          leading: Icon(Icons.favorite_outline),
          title: Text('Favourite'),
        ),

        ListTile(
          leading: Icon(Icons.access_time),
          title: Text('Notifications'),
        ),
        Divider(color: Colors.black54),
        ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
        ListTile(leading: Icon(Icons.person), title: Text('Account')),
        ListTile(leading: Icon(Icons.logout), title: Text('Logout')),
      ],
    );
  }
}
