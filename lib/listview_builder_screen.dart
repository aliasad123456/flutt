import 'package:flutter/material.dart';

class LiStViewScreen extends StatefulWidget {
 

  @override
  State<LiStViewScreen> createState() => _LiStViewScreenState();
}

class _LiStViewScreenState extends State<LiStViewScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('ListView Builder Screen'),
      ),
      // body: ListView.builder(
      //     itemBuilder: (context , index){
      //
      //     })
    );
  }
}
