import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fire_pro/views/addNoteScreen.dart';
import 'package:flutter_fire_pro/views/loginscreen.dart';
import 'package:get/get.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          GestureDetector(
            onTap: () {
              showDialog<String>(
                context: context,
                builder:
                    (BuildContext context) => AlertDialog(
                      title: const Text('Logout'),
                      content: const Text('Are you sure ?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed:
                              () =>
                                  FirebaseAuth.instance.signOut().then((value) {
                                    Get.off(() => LoginScreen());
                                  }),
                          child: const Text('Yes'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('No'),
                        ),
                      ],
                    ),
              );
            },
            child: Icon(Icons.logout),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(()=> Addnotescreen());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
