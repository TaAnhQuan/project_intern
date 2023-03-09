import 'package:flutter/material.dart';
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
 
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, 
        icon:Icon(Icons.arrow_back_ios) ),
      ),
      body: Container(
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.orange,
          
        ),
        child: Column(
          children: [
            Text("Glad To Meet You",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
            Text("You",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
            Text("Creat your new account for future uses.",style: TextStyle(color: Colors.white,fontSize: 20,),),
            Container(
              //height:size.height,
              //width: size.width,
              decoration: BoxDecoration(
                color: Colors.amber,
                //borderRadius: BorderRadius.all(20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
