import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<Map<String, dynamic>> listKotak = List.generate(
      10,
      (index) => {
            "title": "kotak - ${index}",
            "color": Color.fromARGB(255, Random().nextInt(255) + 200,
                Random().nextInt(255) + 200, Random().nextInt(255) + 200)
          });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            title: Center(
              child: Text("Widget Builder"),
            ),
          ),
          // body: GridView(
          //   gridDelegate:
          //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          //   children: listKotak
          //       .map((row) => KotakWarna(
          //           title: "warna - ${row["title"]}", color: row["color"]))
          //       .toList(),
          // ),
          // body: ListView.builder(
          //     itemCount: 10,
          //     itemBuilder: (context, index) => KotakWarna(
          //         title: "kotak - ${index}",
          //         color: Color.fromARGB(
          //             255,
          //             Random().nextInt(255) + 200,
          //             Random().nextInt(255) + 200,
          //             Random().nextInt(255) + 200)))),
          body: GridView.builder(
              itemCount: 10,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (context, index) => KotakWarna(
                  title: "kotak - ${index + 1}",
                  color: Color.fromARGB(
                      255,
                      Random().nextInt(255) + 200,
                      Random().nextInt(255) + 200,
                      Random().nextInt(255) + 200)))),
    );
  }
}

class KotakWarna extends StatelessWidget {
  const KotakWarna({required this.title, required this.color, super.key});

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: color,
      child: Center(
        child: Text(title),
      ),
    );
  }
}
