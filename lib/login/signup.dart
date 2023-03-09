import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_intern/user/user_account.dart';
import 'package:project_intern/view/intro%20app/splashscreen.dart';
import 'login.dart';

class signUpPage extends StatefulWidget {

  @override
  State<signUpPage> createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {

  bool _isObscure = true;
  TextEditingController _userController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _confirmPasswordController = new TextEditingController();

  var _usernameError = 'Email not validate';
  var _passwordError = 'Password must have at least 6 character';
  var _userInvalid = false;
  var _passwordInvalid = false;

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
            color: Color.fromRGBO(255,179,71, 1)
        ),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(screenWidth / 20, screenHeight / 4, screenWidth / 4, screenHeight / 20),
              child: Text('Glad to meet you', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
            ),

            Stack(
              children: [
                Container(
                  decoration: ShapeDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(12)
                        )
                    ),
                  ),
                  width: screenWidth,
                  height: 300,
                  margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                  child: ListView(
                    children: <Widget>[
                      Container(
                        // alignment: AlignmentDirectional.topCenter,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 30, 10, 20),
                            child: TextFormField(
                              validator: (value){
                                if (value!.isEmpty){
                                  return ("Please Enter Your Email");
                                }
                                // reg for email validation
                                if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9._]+.[a-z]").hasMatch(value)){
                                  return ("Please Enter a valid email");
                                }
                                return null;
                              },
                              controller: _userController,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                fillColor: Color.fromRGBO(255, 255, 255, 0),
                                prefixIcon: Icon(Icons.mail, color: Colors.black),
                                filled: true,
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Colors.black),
                                labelStyle: TextStyle(color: Colors.black),
                                errorText: _userInvalid ? _usernameError : null,
                              ),
                            ),
                          )
                      ),

                      Container(
                        // alignment: AlignmentDirectional.center,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20, 10, 10, 20),
                          child: TextFormField(
                            validator: (value){
                              RegExp regex = new RegExp(r'^.{6,}$');
                              if (value!.isEmpty){
                                return("Please enter your password");
                              }

                              if (regex.hasMatch(value)){
                                return ("Please Enter Valid Password(Min 6 character");
                              }
                            },
                            controller: _passwordController,
                            style: TextStyle(color: Colors.grey),
                            obscureText: true,
                            decoration: InputDecoration(
                              fillColor: Color.fromRGBO(255, 255, 255, 0),
                              filled: true,
                              hintText: 'Password',
                              prefixIcon: Icon(Icons.lock, color: Colors.black),
                              hintStyle: TextStyle(color: Colors.black),
                              labelStyle: TextStyle(color: Colors.black),
                              errorText: _passwordInvalid ? _passwordError : null,
                              suffixIcon: IconButton(
                                icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off, color: Colors.black,),
                                onPressed: (){
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ),

                      Container(
                        // alignment: AlignmentDirectional.center,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                          child: TextFormField(
                            validator: (value){
                              if (_confirmPasswordController.text.length > 6 && _passwordController.text != value){
                                return "Password don't match";
                              }
                              return null;
                            },
                            controller: _confirmPasswordController,
                            style: TextStyle(color: Colors.grey),
                            obscureText: true,
                            decoration: InputDecoration(
                              fillColor: Color.fromRGBO(255, 255, 255, 0),
                              filled: true,
                              hintText: 'Confirm Password',
                              prefixIcon: Icon(Icons.lock, color: Colors.black),
                              hintStyle: TextStyle(color: Colors.black),
                              labelStyle: TextStyle(color: Colors.black),
                              errorText: _passwordInvalid ? _passwordError : null,
                              suffixIcon: IconButton(
                                icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off, color: Colors.black,),
                                onPressed: (){
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(150, 270, 100, 10),
                  width: screenWidth / 2,
                  height: 50,
                  child: TextButton(
                    onPressed: (){
                      onSignInClicked(_userController.text, _passwordController.text);
                    },
                    child: Text('SignUp', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                    ),
                  ),
                ),
              ],
            ),

            Container(
                margin: EdgeInsets.fromLTRB(screenWidth / 3.5, 0, 0, 0),
                child: Row(
                  children: [
                    Text('Already have an account.', style: TextStyle(
                        fontSize: 15
                    ),),

                    TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: gotoHome));
                        },
                        child: Text('Sign In!', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),))
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }

  void onSignInClicked(String email, String password){
    signUpAction(email, password);
  }

  Widget gotoHome(BuildContext context){
    return loginPage();
  }

  void signUpAction(String email, String password) async{
    await _auth.createUserWithEmailAndPassword(email: email, password: password)
        .then((value) => {
          postDetailsToFireStore(),
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (conext) => SplashScreenIntro()))
    }).catchError((e){
      Fluttertoast.showToast(msg: e!.message);
    });
  }

  postDetailsToFireStore() async{
    // calling firestore
    // calling model
    // sending these value

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

     userAccount useracc = userAccount.fromUser();

     useracc.username = _userController.text;
     useracc.id = user!.uid;
     useracc.password = _passwordController.text;

     await firebaseFirestore
         .collection("users")
        .doc(user.uid)
        .set(useracc.toMap());

     Fluttertoast.showToast(msg: "Account created successfully :) ");
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (conext) => SplashScreenIntro()));
  }

}
