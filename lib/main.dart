import 'package:flutter/material.dart';
import 'package:untitled27/Api/api_fetch_screen.dart';
import 'package:untitled27/external_screen.dart';
import 'package:untitled27/final_assignment.dart';
import 'package:untitled27/form_screen.dart';
import 'package:untitled27/listview_builder_screen.dart';
import 'package:untitled27/picture_assignment.dart';
import 'package:untitled27/reuseable_screen.dart';
import 'package:untitled27/stackScreen.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FetchScreen(),
    );
  }
}
class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Aptech"),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Image(image: AssetImage('images/mny.jpg')),
            Container(
              width: 80,
              height: 80,
              color: Colors.pink,

            ),
          Container(
            width: 40,
            height: 40,
            color: Colors.purple,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}




