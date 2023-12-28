import 'package:flutter/material.dart';
import 'main.dart';
import 'reuseableScreen.dart';

class pictureAssignment extends StatefulWidget {


  @override
  State<pictureAssignment> createState() => _pictureAssignmentState();
}

class _pictureAssignmentState extends State<pictureAssignment> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text('Assignment'),
      // ),
      body: pictureWidget(
        myPicture: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrjUuo_mciXRd5Wr53a45sACYngaWvb5u04g&usqp=CAU',
        text1: 'movie name',
        text2: 'movie release date',
        text3: 'movie duration',
        text4: 'movie start time',
      )
    );
  }
}


