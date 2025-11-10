import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fire_pro/views/homeScreen.dart';
import 'package:get/get.dart';

class Addnotescreen extends StatefulWidget {
  const Addnotescreen({super.key});

  @override
  State<Addnotescreen> createState() => _AddnotescreenState();
}

class _AddnotescreenState extends State<Addnotescreen> {
  TextEditingController noteController = TextEditingController();
  User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Note'), backgroundColor: Colors.blue),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextFormField(
                  controller: noteController,
                  decoration: InputDecoration(hintText: 'your note'),
                  maxLines: null,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                var note = noteController.text.trim();
                if (note != "" && note != null) {
                  try {
                    await FirebaseFirestore.instance
                        .collection('notes')
                        .doc()
                        .set({
                          'createAt': DateTime.now(),
                          'note': note,
                          'userId': user?.uid,
                        })
                        .then((value) => Get.to(Homescreen()));
                  } catch (e) {
                    print('error $e');
                  }
                } else {
                  // Fluttertoast.showToast(
                  //   msg: "Please add note",
                  //   toastLength: Toast.LENGTH_SHORT,
                  //   gravity: ToastGravity.CENTER,
                  //   timeInSecForIosWeb: 1,
                  //   backgroundColor: Colors.red,
                  //   textColor: Colors.white,
                  //   fontSize: 16.0,
                  // );
                }
              },
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
