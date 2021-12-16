// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
import 'package:second/Pages/detail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Computer Knowledge"),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              MyBox(
                  "What is computer?",
                  "A computer is an electronic device that manipulates information, or data. It has the ability to store, retrieve, and process data.",
                  "https://cdn.pixabay.com/photo/2020/10/21/18/07/laptop-5673901_960_720.jpg"),
              SizedBox(
                height: 20,
              ),
              MyBox(
                  "What is Flutter?",
                  "Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.",
                  "https://cdn.pixabay.com/photo/2015/04/23/22/05/hummingbird-736890_960_720.jpg"),
              SizedBox(
                height: 20,
              ),
              MyBox(
                  "What is Dart?",
                  "Dart is a client-optimized language for fast apps on any platform.",
                  "https://cdn.pixabay.com/photo/2015/03/14/14/25/darts-673229_960_720.jpg"),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }

  Widget MyBox(String title, String subtitle, String ImgLink) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(ImgLink),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.darken))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            subtitle,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          SizedBox(
            height: 15,
          ),
          TextButton(
              onPressed: () {
                print("Next page >>");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailPage()));
              },
              child: Text(
                "Read more",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
