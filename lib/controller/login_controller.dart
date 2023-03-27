import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_intern/view/account_page/account_page.dart';
import 'package:project_intern/view/admin/home_page/admin_home_page.dart';
import 'package:project_intern/view/setting/setting_page.dart';

class LoginController{

  // final _auth = FirebaseAuth.instance;
  // final bool _isAdmin = false;

  void signIn(String email, String password, BuildContext context) async {
    Fluttertoast.showToast(msg: email);
    if (email == 'admin@admin.admin' ){
      Fluttertoast.showToast(msg: email);
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Fluttertoast.showToast(msg: "Login admin successful");
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const AdminHomePage()));
    } else{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Fluttertoast.showToast(msg: "Login successful");
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const AccountPage()));
    }
  }

}