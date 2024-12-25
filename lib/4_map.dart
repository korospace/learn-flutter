import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<KotakWarna> listKotakWarna = List.generate(
      5,
      (index) => KotakWarna(
            text: "warna - ${index + 1}",
            warna: Color.fromARGB(255, 200 + Random().nextInt(255),
                200 + Random().nextInt(255), 200 + Random().nextInt(255)),
          ));

  List<Map<String, dynamic>> dataWarna = List.generate(
      5,
      (index) => {
            "text": "warna - ${index + 1}",
            "warna": Color.fromARGB(255, 200 + Random().nextInt(255),
                200 + Random().nextInt(255), 200 + Random().nextInt(255)),
          });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Map"),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          // children: listKotakWarna,
          children: dataWarna
              .map((row) => KotakWarna(text: row["text"], warna: row["warna"]))
              .toList(),
        ),
      ),
    );
  }
}

class KotakWarna extends StatelessWidget {
  const KotakWarna({required this.text, required this.warna, super.key});

  final String text;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      color: warna,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
