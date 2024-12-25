import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          title: Text("Extra Widget"),
        ),
        body: Column(
          children: [
            KotakWarna(
              text: "merah",
              warna: Colors.red,
            ),
            KotakWarna(
              text: "yellow",
              warna: Colors.yellow,
            ),
            KotakWarna(
              text: "pink",
              warna: Colors.pink,
            ),
          ],
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
