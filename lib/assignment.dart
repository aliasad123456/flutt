

import 'package:flutter/material.dart';

class Assigment extends StatefulWidget {
  const Assigment({Key? key}) : super(key: key);


  @override
  State<Assigment> createState() => _AssigmentState();
}

class _AssigmentState extends State<Assigment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // width: 280,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.purple,
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
                  fit: BoxFit.fill,
                  image: const NetworkImage('data:image/jpeg;base64,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'),
                )
              ),
              child: Container(
                margin: const EdgeInsets.only(left: 14, top: 140),
                child: Row(
                  children: [
                        const CircleAvatar(
                        radius: 30,
                        backgroundImage:  NetworkImage('data:image/png;base64,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'),
                      ),
                    const SizedBox(
                      width: 6,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                         Text('Ali Asad', style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white
                        ),),
                         Text('Junior Flutter Developer', style:  TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: Colors.white
                        ),)
                      ]
                    )
                  ]
                ),
              ),
            ),

            const ListTile(leading: Icon(Icons.notification_add_rounded,color: Colors.white,),
            title: Text("Notifications", style:  TextStyle(color: Colors.white),),
            subtitle:  Text("Manage your notification here", style:  TextStyle(color: Colors.grey),),
            ),
            const ListTile(leading:  Icon(Icons.settings,color: Colors.white,),
              title: Text("Settings", style: TextStyle(color: Colors.white),),
              subtitle:  Text("Manage your Settings here", style: TextStyle(color: Colors.grey),),
            ),
            const ListTile(leading: Icon(Icons.person,color: Colors.white,),
              title: Text("Profile", style: TextStyle(color: Colors.white),),
              subtitle: Text("Change your bio here", style: TextStyle(color: Colors.grey),),
            ),
            const ListTile(leading: Icon(Icons.privacy_tip,color: Colors.white,),
              title: Text("Privacy", style: TextStyle(color: Colors.white),),
              subtitle: Text("Read Privacy Policy for the App ", style: TextStyle(color: Colors.grey),),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.grey
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const CircleAvatar(
                  radius: 40,
                  backgroundImage:  AssetImage('images/mny.jpg'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Ali Asad", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                    ),),
                    SizedBox(
                      width: 160,
                      child: Text("Junior Flutter  Developer", overflow: TextOverflow.ellipsis,),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            width: 140,
            // height: 50,
            child: Divider(
              color: Colors.black,
              thickness: 2,
            ),
          ),

          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                      ),
                      border: Border.all(color: Colors.blue,width: 5),
                      color: Colors.grey
                  ),
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 10
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                    ),
                    border: Border.all(color: Colors.blue, width: 5),
                    color: Colors.grey
                  ),
                )
              ],

            ),
          ),
        ],
      ),
    );
  }
}
