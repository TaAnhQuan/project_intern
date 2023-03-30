import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_intern/login/signup.dart';
import 'package:project_intern/view/intro_app/splashscreen.dart';

// ignore: camel_case_types
class loginPage extends StatefulWidget{
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

// ignore: camel_case_types
class _loginPageState extends State<loginPage> {

  bool _isObscure = true;
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
                child: const  Text('Welcome back', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
              ),

              Stack(
                children: [
                  Container(
                    decoration:const  ShapeDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(12)
                          )
                      ),
                    ),
                    width: screenWidth,
                    height: 200,
                    margin:const   EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const  EdgeInsets.fromLTRB(20, 20, 10, 20),
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
                            style: const  TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: const  Color.fromRGBO(255, 255, 255, 0),
                                prefixIcon: const  Icon(Icons.mail, color: Colors.black),
                                filled: true,
                                hintText: 'Email',
                                hintStyle: const  TextStyle(color: Colors.black),
                                labelStyle: const  TextStyle(color: Colors.black),
                                errorText: _userInvalid ? _usernameError : null,
                            ),
                          ),
                        ),

                        Container(
                          padding: const  EdgeInsets.fromLTRB(20, 10, 10, 10),
                          child: TextFormField(
                            validator: (value){
                              RegExp regex =  RegExp(r'^.{6,}$');
                              if (value!.isEmpty){
                                return("Please enter your password");
                              }
                              
                              if (regex.hasMatch(value)){
                                return ("Please Enter Valid Password(Min 6 character");
                              }
                            },
                            controller: _passwordController,
                            style: const  TextStyle(color: Colors.grey),
                            obscureText: true,
                            decoration: InputDecoration(
                              fillColor: const Color.fromRGBO(255, 255, 255, 0),
                              filled: true,
                              hintText: 'Password',
                              prefixIcon:const   Icon(Icons.lock, color: Colors.black),
                              hintStyle: const  TextStyle(color: Colors.black),
                              labelStyle: const  TextStyle(color: Colors.black),
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
                    margin: EdgeInsets.fromLTRB(150, 180, 100, 10),
                    width: screenWidth / 2,
                    height: 50,
                    child: TextButton(
                      onPressed: (){
                        onSignInClicked(_userController.text, _passwordController.text);
                      },
                      child: const Text('Login', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                margin: EdgeInsets.fromLTRB(screenWidth / 3, 0, 0, 0),
                child: Row(
                  children: [
                    Text('Don\'t have account.', style: TextStyle(
                        fontSize: 15
                    ),),

                    TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: gotoSignUpPage));
                        },
                        child: Text('SignUp!', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),))
                  ],
                )
              ),

              Container(
                  margin: EdgeInsets.fromLTRB(screenWidth / 4, 0, 0, 0),
                  child: Row(
                    children: [
                      Text('Forgot your password.', style: TextStyle(
                          fontSize: 15
                      ),),

                      TextButton(
                          onPressed: (){
                          },
                          child: Text('Reset password', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),))
                    ],
                  )
              ),
            ],
          ),
        ),
      );
  }

  void onSignInClicked(String email, String password){
    setState(() {
      signIn(email, password);
    });
  }

  Widget gotoHome(BuildContext context){
    return SplashScreenIntro();
  }

  Widget gotoSignUpPage(BuildContext context){
    return signUpPage();
  }

  void signIn(String email, String password) async{
    await _auth.signInWithEmailAndPassword(email: email, password: password)
        .then((uid) => {
          Fluttertoast.showToast(msg: "Login successful"),
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (conext) => SplashScreenIntro()))
    }).catchError((e){
        Fluttertoast.showToast(msg: e!.message);
    });
  }

}
