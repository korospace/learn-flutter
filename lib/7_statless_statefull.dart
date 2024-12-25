import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$nilai",
                style: TextStyle(fontSize: 50),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        nilai = nilai - 1;
                        print(nilai);
                        setState(() {});
                      },
                      child: Icon(Icons.remove)),
                  ElevatedButton(
                      onPressed: () {
                        nilai = nilai + 1;
                        print(nilai);
                        setState(() {});
                      },
                      child: Icon(Icons.add)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
