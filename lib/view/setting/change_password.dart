import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_intern/controller/setting_controller.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {

  bool _isObscure = true;
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _newPasswordConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey.shade700),),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
          color: Colors.grey.shade700,
        ),
      ),

      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: TextFormField(
              validator: (value){
                RegExp regex = RegExp(r'^.{6,}$');
                if (value!.isEmpty){
                  return("Please enter your password");
                }

                if (regex.hasMatch(value)){
                  return ("Please Enter Valid Password(Min 6 character");
                }
              },
              controller: _passwordController,
              style: const TextStyle(color: Colors.grey),
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                hintText: 'Current Password',
                prefixIcon: const Icon(Icons.lock, color: Colors.black),
                hintStyle: const TextStyle(color: Colors.black),
                labelStyle: const TextStyle(color: Colors.black),
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
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: TextFormField(
              validator: (value){
                RegExp regex = RegExp(r'^.{6,}$');
                if (value!.isEmpty){
                  return("Please enter your password");
                }

                if (regex.hasMatch(value)){
                  return ("Please Enter Valid Password(Min 6 character");
                }
              },
              controller: _newPasswordController,
              style: const TextStyle(color: Colors.grey),
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                hintText: 'New Password',
                prefixIcon: const Icon(Icons.lock, color: Colors.black),
                hintStyle: const TextStyle(color: Colors.black),
                labelStyle: const TextStyle(color: Colors.black),
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
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: TextFormField(
              validator: (value){
                RegExp regex = RegExp(r'^.{6,}$');
                if (value!.isEmpty){
                  return("Please enter your password");
                }

                if (regex.hasMatch(value)){
                  return ("Please Enter Valid Password(Min 6 character");
                }
              },
              controller: _newPasswordConfirmController,
              style: const TextStyle(color: Colors.grey),
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                hintText: 'Confirm New Password',
                prefixIcon: const Icon(Icons.lock, color: Colors.black),
                hintStyle: const TextStyle(color: Colors.black),
                labelStyle: const TextStyle(color: Colors.black),
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
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: TextButton(
                onPressed: (){
                  SettingController().changePassword(
                      _passwordController.text,
                      _newPasswordController.text,
                      _newPasswordConfirmController.text);
                  Fluttertoast.showToast(msg: "Change password successful");
                  Navigator.of(context).pop();
                },
                child: const Text('Change Password')
            ),
          ),
        ],
      ),
    );
  }
}
