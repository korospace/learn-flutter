import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  late int defaultNavigation;

  List bodyItem = [
    Center(
      child: Text("chat"),
    ),
    Center(
      child: Text("profile"),
    ),
  ];

  @override
  void initState() {
    defaultNavigation = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          child: Image.asset(
            "data/images/logo.png",
          ), // Pastikan file gambar sudah ditambahkan di pubspec.yaml
        ),
        backgroundColor: const Color(0xFF0E0508),
        title: const Text(
          "SMS Blaster",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("click");
            },
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          )
        ],
        toolbarHeight: 70,
      ),
      body: bodyItem[defaultNavigation],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF0E0508),
        unselectedItemColor: Colors.white70,
        selectedItemColor: Color(0xFFFFFFFF),
        currentIndex: defaultNavigation,
        onTap: (value) {
          defaultNavigation = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            label: "chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "profile",
          ),
        ],
      ),
    );
  }
}
