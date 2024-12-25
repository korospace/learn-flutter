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
          leading: Padding(
            padding: EdgeInsets.only(top: 15, bottom: 15),
            child: Image(image: AssetImage("data/images/logo.png")),
          ),
          backgroundColor: Color(0xFF0E0508),
          title:
              Text("SMS Blaster", style: TextStyle(color: Color(0xFFFFFFFF))),
          actions: [
            IconButton(
                onPressed: () => {print("click")}, icon: Icon(Icons.more_vert))
          ],
          toolbarHeight: 70,
        ),
        body: ButtonAlert(),
      ),
    );
  }
}

class ButtonAlert extends StatelessWidget {
  const ButtonAlert({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Ini Dialog"),
                  content: Text(
                      "Ini adalah isi dari content dialog. Anda bebas mengisi apa saja disini"),
                  actions: [
                    ElevatedButton(onPressed: () {}, child: Text("close"))
                  ],
                );
              });
        },
        child: Text("show"));
  }
}
