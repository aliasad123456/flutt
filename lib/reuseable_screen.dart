import 'package:flutter/material.dart';
import 'reuseableScreen.dart';

class ResueableScreen extends StatefulWidget {


  @override
  State<ResueableScreen> createState() => _ResueableScreenState();
}

class _ResueableScreenState extends State<ResueableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          EhtishamContainer(myColor: Colors.blue, userText: 'Ali ASad',),
          EhtishamContainer(myColor: Colors.yellow,userText: 'Mehdi',)
        ],
      ),
    );
  }
}


