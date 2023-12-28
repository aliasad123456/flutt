import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled27/Api/api_services.dart';
import 'package:untitled27/reuseable_screen.dart';

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
            Map map = jsonDecode(snapshot.data);
            List myData = map["tv_shows"];

          return ListView.builder(
          itemBuilder: (context, index){
            String movieName = myData[index]["name"];
            String movieNetwork = myData[index]["name"];
            String movieName = myData[index]["name"];
            String movieName = myData[index]["name"];

          }
          );
          }
        },
      ),
    );
  }
}
