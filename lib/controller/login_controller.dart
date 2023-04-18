import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_intern/view/account_page/account_page.dart';
import 'package:project_intern/view/admin/home_page/admin_home_page.dart';

class LoginController {
  void signIn(String email, String password, BuildContext context) async {
    Fluttertoast.showToast(msg: email);
    final completer = Completer<BuildContext>();
    completer.future.then((value) {
      if (email == 'admin@admin.admin') {
        Fluttertoast.showToast(msg: email);
        FirebaseAuth.instance
            .signInWithEmailAndPassword(
          email: email,
          password: password,
        )
            .then((_) {
          // Fluttertoast.showToast(msg: "Login admin successful");
          Navigator.of(value).pushReplacement(
              MaterialPageRoute(builder: (context) => const AdminHomePage()));
        });
      } else {
        FirebaseAuth.instance
            .signInWithEmailAndPassword(
          email: email,
          password: password,
        )
            .then((_) {
          Fluttertoast.showToast(msg: "Login successful");
          Navigator.of(value).pushReplacement(
              MaterialPageRoute(builder: (context) => const AccountPage()));
        });
      }
    });
    completer.complete(context);
  }
}
