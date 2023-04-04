import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_intern/model/user_account.dart';
import 'package:project_intern/view/account_page/account_page.dart';
import 'login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});


  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool _isObscure = true;
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  final _usernameError = 'Email not validate';
  final _passwordError = 'Password must have at least 6 character';
  final _userInvalid = false;
  final _passwordInvalid = false;

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(255,179,71, 1)
        ),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(screenWidth / 20, screenHeight / 4, screenWidth / 4, screenHeight / 20),
              child: const Text('Glad to meet you', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
            ),

            Stack(
              children: [
                Container(
                  decoration: const ShapeDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(12)
                        )
                    ),
                  ),
                  width: screenWidth,
                  height: 300,
                  margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                  child: ListView(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 30, 10, 20),
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
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            fillColor: const Color.fromRGBO(255, 255, 255, 0),
                            prefixIcon: const Icon(Icons.mail, color: Colors.black),
                            filled: true,
                            hintText: 'Email',
                            hintStyle: const TextStyle(color: Colors.black),
                            labelStyle: const TextStyle(color: Colors.black),
                            errorText: _userInvalid ? _usernameError : null,
                          ),
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 10, 10, 20),
                        child: TextFormField(
                          validator: (value){
                            RegExp regex = RegExp(r'^.{6,}$');
                            if (value!.isEmpty){
                              return("Please enter your password");
                            }

                            if (regex.hasMatch(value)){
                              return ("Please Enter Valid Password(Min 6 character");
                            }
                            return null;
                          },
                          controller: _passwordController,
                          style: const TextStyle(color: Colors.grey),
                          obscureText: true,
                          decoration: InputDecoration(
                            fillColor: const Color.fromRGBO(255, 255, 255, 0),
                            filled: true,
                            hintText: 'Password',
                            prefixIcon: const Icon(Icons.lock, color: Colors.black),
                            hintStyle: const TextStyle(color: Colors.black),
                            labelStyle: const TextStyle(color: Colors.black),
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

                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                        child: TextFormField(
                          validator: (value){
                            if (_confirmPasswordController.text.length > 6 && _passwordController.text != value){
                              return "Password don't match";
                            }
                            return null;
                          },
                          controller: _confirmPasswordController,
                          style: const TextStyle(color: Colors.grey),
                          obscureText: true,
                          decoration: InputDecoration(
                            fillColor: const Color.fromRGBO(255, 255, 255, 0),
                            filled: true,
                            hintText: 'Confirm Password',
                            prefixIcon: const Icon(Icons.lock, color: Colors.black),
                            hintStyle: const TextStyle(color: Colors.black),
                            labelStyle: const TextStyle(color: Colors.black),
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


                    ],
                  ),
                ),

                Container(
                  margin: const EdgeInsets.fromLTRB(150, 270, 100, 10),
                  width: screenWidth / 2,
                  height: 50,
                  child: TextButton(
                    onPressed: (){
                      onSignInClicked(_userController.text, _passwordController.text);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                    ),
                    child: const Text('SignUp', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                  ),
                ),
              ],
            ),

            Container(
                margin: EdgeInsets.fromLTRB(screenWidth / 3.5, 0, 0, 0),
                child: Row(
                  children: [
                    const Text('Already have an account.', style: TextStyle(
                        fontSize: 15
                    ),),

                    TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: gotoHome));
                        },
                        child: const Text('Sign In!', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),))
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
    return const LoginPage();
  }

  void signUpAction(String email, String password) async {
    await _auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) => {
      postDetailsToFireStore(),
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const AccountPage()))
    })
        .catchError((e) {
      Fluttertoast.showToast(msg: e!.message);
      throw e; // throw the error to propagate it further up the call stack
    });
  }


  postDetailsToFireStore() async{
    // calling firestore
    // calling model
    // sending these value

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

     UserAccount useracc = UserAccount.fromUser();

     useracc.username = _userController.text;
     useracc.id = user!.uid;
     useracc.password = _passwordController.text;

     await firebaseFirestore
         .collection("users")
        .doc(user.uid)
        .set(useracc.toMap());

     Fluttertoast.showToast(msg: "Account created successfully :) ");
     // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const SplashScreenIntro()));
  }

}
