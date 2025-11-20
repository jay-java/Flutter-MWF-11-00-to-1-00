import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fire_pro/views/addNoteScreen.dart';
import 'package:flutter_fire_pro/views/editeNoteScreen.dart';
import 'package:flutter_fire_pro/views/loginscreen.dart';
import 'package:get/get.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  User? user = FirebaseAuth.instance.currentUser;

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
      body: Container(
        child: StreamBuilder(
          stream:
              FirebaseFirestore.instance
                  .collection('notes')
                  .where("userId", isEqualTo: user!.uid)
                  .snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('something went wrong !');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CupertinoActivityIndicator());
            }
            if (snapshot.data!.docs.isEmpty) {
              return Text('No data found !');
            }
            if (snapshot != null && snapshot.data != null) {
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  var note = snapshot.data!.docs[index]['note'];
                  var noteId = snapshot.data!.docs[index]['userId'];
                  var docId = snapshot.data!.docs[index].id;
                  return Card(
                    margin: EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(snapshot.data!.docs[index]['note']),
                      subtitle: Text(snapshot.data!.docs[index]['userId']),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () {
                              print(docId);
                              Get.to(
                                () => EditeNoteScreen(),
                                arguments: {'note': note, 'docId': docId},
                              );
                            },
                            child: Icon(Icons.edit),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              showDialog<String>(
                                context: context,
                                builder:
                                    (BuildContext context) => AlertDialog(
                                      title: const Text('Delete'),
                                      content: const Text('Are you sure ?'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () async {
                                            await FirebaseFirestore.instance
                                                .collection('notes')
                                                .doc(docId)
                                                .delete();
                                            Navigator.pop(context, 'OK');
                                          },
                                          child: const Text('Yes'),
                                        ),
                                        TextButton(
                                          onPressed:
                                              () =>
                                                  Navigator.pop(context, 'OK'),
                                          child: const Text('No'),
                                        ),
                                      ],
                                    ),
                              );
                            },
                            child: Icon(Icons.delete),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
            return Container();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => Addnotescreen());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
