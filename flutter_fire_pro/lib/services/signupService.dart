import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_fire_pro/views/loginscreen.dart';
import 'package:get/get.dart';

signUpUser(String name,String contact,String email,String password) async{

  User? userid = FirebaseAuth.instance.currentUser;

  try{
    await FirebaseFirestore.instance.collection('users')
        .doc(userid!.uid)
        .set({
      'name' : name,
      'contact':contact,
      'email':email,
      'password':password,
      'createAt' : DateTime.now(),
      'id' : userid!.uid
    }).then((value) => {
      FirebaseAuth.instance.signOut(),
      Get.to(()=> LoginScreen()),
    });
  } on FirebaseAuthException catch(e){
    print('error msg : $e');
  }
}