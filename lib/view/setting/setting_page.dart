import 'package:flutter/material.dart';
import 'package:project_intern/controller/setting_controller.dart';
import 'package:project_intern/view/login/login.dart';
import 'package:project_intern/view/setting/about_us_page.dart';
import 'package:project_intern/view/setting/change_country_page.dart';
import 'package:project_intern/view/setting/change_email_page.dart';
import 'package:project_intern/view/setting/change_language_page.dart';
import 'package:project_intern/view/setting/change_password.dart';
import 'package:project_intern/view/setting/legal_page.dart';


class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey.shade700),),
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
      body: Container(
        margin: const EdgeInsets.all(15),
        color: Colors.white,
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, screenWidth * 0.6, 10),
                  child: const Text('General', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ),

                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                      const ImageIcon(AssetImage('assets/image/icons/language-icon.png')),

                      TextButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ChangeLanguagePage()),
                            );
                          },
                          child: SizedBox(
                            width: screenWidth * 0.7,
                              child: Text('Language', style: TextStyle(color: Colors.grey.shade700, fontSize: 16),)
                          ),
                      ),
                  ],
                ),

                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.language_outlined, color: Colors.grey.shade700),

                    TextButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ChangeCountryPage()),
                        );
                      },
                      child: SizedBox(
                        width: screenWidth * 0.7,
                          child: Text('Change country', style: TextStyle(color: Colors.grey.shade700, fontSize: 16),)
                      ),
                    ),
                  ],
                ),

                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    ImageIcon(const AssetImage('assets/image/icons/legal-icon.png'), color: Colors.grey.shade700,),

                    TextButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LegalPage()),
                        );
                      },
                      child: SizedBox(
                        width: screenWidth * 0.7,
                          child: Text('Legal & About', style: TextStyle(color: Colors.grey.shade700, fontSize: 16),)
                      ),
                    ),
                  ],
                ),

                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.lightbulb_outline_sharp, color: Colors.grey.shade700,),

                    TextButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AboutUsPage()),
                        );
                      },
                      child: SizedBox(
                        width: screenWidth * 0.7,
                          child: Text('About Us', style: TextStyle(color: Colors.grey.shade700, fontSize: 16),)
                      ),
                    ),
                  ],
                ),
                
                Container(
                    margin: EdgeInsets.fromLTRB(0, 20, screenWidth * 0.6, 10),
                    child: const Text('Account', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                ),

                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.lock_person_outlined, color: Colors.grey.shade700,),

                    TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ChangePasswordPage()),
                          );
                        },
                        child: SizedBox(
                          width: screenWidth * 0.7,
                            child: Text('Change Password', style: TextStyle(color: Colors.grey.shade700, fontSize: 16),)
                        ),
                    ),
                  ],
                ),

                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.mail_outline_rounded, color: Colors.grey.shade700,),

                    TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ChangeEmailPage())
                          );
                        },
                        child: SizedBox(
                          width: screenWidth * 0.7,
                            child: Text('Change Email', style: TextStyle(color: Colors.grey.shade700, fontSize: 16),)
                        ),
                    ),
                  ],
                ),

                ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.logout),

                        TextButton(
                          onPressed: (){
                            SettingController().signOut();
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  const LoginPage())
                            );
                          },
                          child: SizedBox(
                              width: screenWidth * 0.7,
                              child: Text('SignOut', style: TextStyle(color: Colors.grey.shade700, fontSize: 16),)
                          ),
                        ),

                      ],
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
