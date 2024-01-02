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
        movieImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrjUuo_mciXRd5Wr53a45sACYngaWvb5u04g&usqp=CAU',
        movieName: 'movie name',
        movieNetwork: 'movie release date',
        movieDate: 'movie }duration',
        movieStatus: 'movie start time'
      )
    );
  }
}


