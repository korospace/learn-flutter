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
  MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final List dataDropDown = [
    {"title": "tes 1", "value": 1},
    {"title": "tes 2", "value": 2},
  ];

  late int defaultDropdown;

  @override
  void initState() {
    defaultDropdown = dataDropDown[0]["value"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          child: Image.asset(
              "data/images/logo.png"), // Pastikan file gambar sudah ditambahkan di pubspec.yaml
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
      body: Center(
        child: DropdownButton(
          value: defaultDropdown,
          items: dataDropDown
              .map((e) => DropdownMenuItem<int>(
                    child: Text("${e["title"]}"),
                    value: e["value"] as int,
                  ))
              .toList(),
          onChanged: (value) {
            defaultDropdown = value!;
            setState(() {});
          },
        ),
      ),
    );
  }
}
