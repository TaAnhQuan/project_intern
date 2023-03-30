import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SettingController{
  final User _user = FirebaseAuth.instance.currentUser!;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  SettingController();

  void changePassword(var oldPassword, var newPassword, var confirmNewPassword) async{
    if (newPassword == confirmNewPassword && await validateEmailAndPassword(oldPassword)){
      //Pass in the password to updatePassword.
      _user.updatePassword(newPassword).then((_){
      }).catchError((error){
        //This might happen, when the wrong password is in, the user isn't found, or if the user hasn't logged in recently.
      });

      final db = FirebaseFirestore.instance;
      db.collection('users').doc(_user.uid).update({
       'password': newPassword,
      });
    }
  }

  Future<bool> validateEmailAndPassword(String password) async {
    var firebaseUser = _auth.currentUser!;

    var authCredentials = EmailAuthProvider.credential(
        email: firebaseUser.email.toString(), password: password);
    try {
      var authResult = await firebaseUser
          .reauthenticateWithCredential(authCredentials);
      return authResult.user != null;
    } catch (e) {
      return false;
    }
  }

  Future<void> signOut() async {
      try{
        return await _auth.signOut();
      }
      catch(e){
        return;
      }
  }

  void changeEmail(var oldEmail, var newEmail, var password) async{
    if (oldEmail !=  newEmail && await validateEmailAndPassword(password)){
      //Pass in the password to updatePassword.
      _user.updateEmail(newEmail).then((_){
      }).catchError((error){
        //This might happen, when the wrong password is in, the user isn't found, or if the user hasn't logged in recently.
      });

      final db = FirebaseFirestore.instance;
      db.collection('users').doc(_user.uid).update({
        'username': newEmail,
      });
    }
  }


}