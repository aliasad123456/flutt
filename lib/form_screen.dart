import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled27/loginScreen.dart';
import 'package:untitled27/reuseableScreen.dart';

class formScreen extends StatefulWidget {



  @override
  State<formScreen> createState() => _formScreenState();
}



class _formScreenState extends State<formScreen> {
  bool isHide = true;
  TextEditingController userName = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffdb5fb2),
        title: const Text('Form Screen'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children:  [
             reuseWidget(
               errormsg: "Enter  your name",
              hint: 'dada125don',
              icon: const Icon(Icons.person),
               Label: 'Enter Your Name',
               passHide: false,
               textController: userName ,
               formatter: false,
            ),
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
                Colors.purple;

                Navigator.push(context, MaterialPageRoute(builder: (context ) => loginScreen(), ));
                //print("User Registered");
                ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(
                    content: Text('User registered! \n UserEmail: ${userEmail.text} \n UserPassword: ${userPassword.text}'),
                  ),
                );
                userName.clear();
                userEmail.clear();
                userPassword.clear();
              }
           },
                child:  const Text('Register'),)
          ],
        ),
      ),
    );
  }
}


