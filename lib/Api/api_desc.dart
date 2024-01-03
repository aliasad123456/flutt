import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled27/Api/api_services.dart';
import 'api_fetch_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';

class apiDesc extends StatefulWidget {


  final int movieID;
  @override
  State<apiDesc> createState() => _apiDescState();

  apiDesc({required this.movieID});
}

class _apiDescState extends State<apiDesc> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FutureBuilder(
          future: ApiServices.apiDesc(widget.movieID),
          builder:  (context, snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return const CircularProgressIndicator();
            }
            if(snapshot.hasData){
              Map map = jsonDecode("${snapshot.data}");
              String movieName = map["tvShow"]["name"];
              return Text(movieName);
            }
            if(snapshot.hasError){
              return const Icon(Icons.error, color: Colors.red,);
            }
            return Container();
          },
        ),

      ),
      body: FutureBuilder(
        future: ApiServices.apiDesc(widget.movieID),
        builder:  (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const CircularProgressIndicator();
          }
          if(snapshot.hasData){
            Map map = jsonDecode("${snapshot.data}");
            debugPrint("$map");
            String movieDescription = map["tvShow"]["description"];
            String movieName = map["tvShow"]["name"];
            return  Column(
              children: [
                Stack(
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      height: 242,
                    ),
                    CarouselSlider(items: items, options: options)
                  ],
                )
              ],
            );
          }
          if(snapshot.hasError){
            return const Icon(Icons.error, color: Colors.red,);
          }
          return Container();
        },
      ),

    );
  }
}
