import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_intern/controller/setting_controller.dart';

class ChangeEmailPage extends StatefulWidget {
  const ChangeEmailPage({Key? key}) : super(key: key);

  @override
  State<ChangeEmailPage> createState() => _ChangeEmailPageState();
}

class _ChangeEmailPageState extends State<ChangeEmailPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _newEmailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isObscure = true;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change Email',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
          color: Colors.grey.shade700,
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return ("Please Enter Your Email");
                }
                // reg for email validation
                if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9._]+.[a-z]")
                    .hasMatch(value)) {
                  return ("Please Enter a valid email");
                }
                return null;
              },
              controller: _emailController,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.mail, color: Colors.black),
                  filled: true,
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.black),
                  labelStyle: TextStyle(color: Colors.black)),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return ("Please Enter Your Email");
                }
                // reg for email validation
                if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9._]+.[a-z]")
                    .hasMatch(value)) {
                  return ("Please Enter a valid email");
                }
                return null;
              },
              controller: _newEmailController,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail, color: Colors.black),
                filled: true,
                hintText: 'New Email',
                hintStyle: TextStyle(color: Colors.black),
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: TextFormField(
              validator: (value) {
                RegExp regex = RegExp(r'^.{6,}$');
                if (value!.isEmpty) {
                  return ("Please enter your password");
                }

                if (regex.hasMatch(value)) {
                  return ("Please Enter Valid Password(Min 6 character");
                }
                return null;
              },
              controller: _passwordController,
              style: const TextStyle(color: Colors.grey),
              obscureText: !isObscure,
              decoration: const InputDecoration(
                filled: true,
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock, color: Colors.black),
                hintStyle: TextStyle(color: Colors.black),
                labelStyle: TextStyle(color: Colors.black),
                // suffixIcon: IconButton(
                //   icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off, color: Colors.black,),
                //   onPressed: (){
                //     setState(() {
                //       isObscure = !isObscure;
                //     });
                //   },
                // ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: TextButton(
                onPressed: () {
                  SettingController().changeEmail(_emailController.text,
                      _newEmailController.text, _passwordController.text);
                  Fluttertoast.showToast(msg: "Change email successful");
                  Navigator.of(context).pop();
                },
                child: const Text('Change Email')),
          ),
        ],
      ),
    );
  }
}
