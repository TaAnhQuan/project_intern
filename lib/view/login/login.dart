import 'package:flutter/material.dart';
import 'package:project_intern/controller/login_controller.dart';
import 'package:project_intern/view/admin/home_page/admin_home_page.dart';
import 'package:project_intern/view/intro_app/splashscreen.dart';
import 'package:project_intern/view/login/signup.dart';
import 'package:project_intern/view/setting/reset_password_page.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _isObscure = true;
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _usernameError = 'Email not validate';
  final _passwordError = 'Password must have at least 6 character';
  final _userInvalid = false;
  final _passwordInvalid = false;



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
                child: const Text('Welcome back', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
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
                    height: 200,
                    margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
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
                          padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
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


                      ],
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.fromLTRB(150, 180, 100, 10),
                    width: screenWidth / 2,
                    height: 50,
                    child: TextButton(
                      onPressed: (){
                        onSignInClicked(_userController.text, _passwordController.text, context);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                      ),
                      child: const Text('Login', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                    ),
                  ),
                ],
              ),

              Container(
                margin: EdgeInsets.fromLTRB(screenWidth / 3, 0, 0, 0),
                child: Row(
                  children: [
                    const Text('Don\'t have account.', style: TextStyle(
                        fontSize: 15
                    ),),

                    TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: gotoSignUpPage));
                        },
                        child: const Text('SignUp!', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),))
                  ],
                )
              ),

              Container(
                  margin: EdgeInsets.fromLTRB(screenWidth / 4, 0, 0, 0),
                  child: Row(
                    children: [
                      const Text('Forgot your password.', style: TextStyle(
                          fontSize: 15
                      ),),

                      TextButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  const ResetPasswordPage())
                            );
                          },
                          child: const Text('Reset password', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),))
                    ],
                  )
              ),
            ],
          ),
        ),
      );
  }

  void onSignInClicked(String email, String password, BuildContext context) async {
    LoginController().signIn(email, password, context);
  }

  Widget gotoHome(BuildContext context){
    return const SplashScreenIntro();
  }

  Widget goAdminPage(BuildContext context){
    return const AdminHomePage();
  }

  Widget gotoSignUpPage(BuildContext context){
    return const SignUpPage();
  }



}
