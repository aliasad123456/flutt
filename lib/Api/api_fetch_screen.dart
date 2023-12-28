import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled27/Api/api_desc.dart';
import 'package:untitled27/Api/api_services.dart';
import 'package:untitled27/reuseableScreen.dart';

class FetchScreen extends StatefulWidget {


  @override
  State<FetchScreen> createState() => _FetchScreenState();
}

class _FetchScreenState extends State<FetchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Fetch Screen'),
      ),
      body: FutureBuilder(
        future: ApiServices.apiFetch(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator());
          }
          if(snapshot.hasData){
            Map map = jsonDecode("${snapshot.data}");
            List myData = map["tv_shows"];

          return ListView.builder(
          itemBuilder: (context, index){
            String movieName = myData[index]["name"];
            String movieImage = myData[index]["image_thumbnail_path"];
            String movieNetwork = myData[index]["network"];
            String movieDate = myData[index]["start_date"];
            String movieStatus = myData[index]["status"];
            int movieID = myData[index]["id"];

            return GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                        apiDesc(movieID: movieID,),
                    ));
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('movie Id: $movieID')));
              },
              child: pictureWidget(
                movieImage: movieImage,
                movieName: movieName,
                movieDate: movieDate,
                movieNetwork: movieNetwork,
                movieStatus: movieStatus,
              ),
            );
          }
          );
          }
          return Container();
        },
      ),
    );
  }
}
