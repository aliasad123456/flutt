

import 'package:flutter/material.dart';

class  stackScreen extends StatefulWidget {
  const stackScreen({Key? key}) : super(key: key);

  @override
  State<stackScreen> createState() => _stackScreenState();
}

class _stackScreenState extends State<stackScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     // appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 165,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.  lightBlueAccent,
                    borderRadius: BorderRadius.circular(14)
                  ),

                ),
                const Positioned(
                  top: 80,
                  left: 140,
                  child: CircleAvatar(
                  radius: 40,
                 // backgroundColor: Colors.black,
                    backgroundImage: NetworkImage('https://img.freepik.com/free-photo/handsome-confident-smiling-man-with-hands-crossed-chest_176420-18743.jpg'),
                )
                )
              ],
            ),
          ),
          const Text('Ali Asad Sayani', style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Colors.black
          ),),
        const Text('Junior Flutter Developer', style:  TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: 14,
              color: Colors.black
          ),)
        ],
      )
    );
  }
}
