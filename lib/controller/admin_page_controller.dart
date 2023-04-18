import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AdminPageController{

  Future<User?> deleteUser(String uid) async {
    try {
      FirebaseFirestore.instance.collection('users').doc(uid).delete();
    } catch (e) {
      Fluttertoast.showToast(msg: 'Failed to get current user: $e');
    }
    return null;
  }

}