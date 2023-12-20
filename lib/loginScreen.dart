import 'package:flutter/material.dart';
import 'package:untitled27/reuseableScreen.dart';

class loginScreen extends StatefulWidget {


  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  bool isHide = true;
  TextEditingController userName = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          children:  [
            reuseWidget(
              errormsg: "Enter your email",
              hint: 'dada125don@gmail.com',
              icon: const Icon(Icons.mail),
              Label: 'Enter Your Email',
              passHide: false,
              textController: userEmail,
              formatter: false,
            ),
            reuseWidget(
              errormsg: "Enter your password",
              hint: 'dada125don',
              Label: 'Enter Your Password',
              icon: const Icon(Icons.password),
              formatter: true,
              passHide: isHide == true?true:false,
              passIcon: IconButton(onPressed: (){
                setState(() {
                  isHide = ! isHide;
                });
              }, icon: isHide==true? const Icon(Icons.remove_red_eye_outlined):const Icon(Icons.remove_red_eye) ),
              textController: userPassword,
            ),
            ElevatedButton(onPressed: (){
              if(formKey.currentState!.validate()){
                debugPrint(userName.text);
                debugPrint(userEmail.text);
                debugPrint(userPassword.text);
                userName.clear();
                userEmail.clear();
                userPassword.clear();
                //print("User Registered");
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('User registered!'),
                  ),
                );
              }
            },
                child: const Text('Register'))
          ],
        ),
      ),
    );
  }
}
