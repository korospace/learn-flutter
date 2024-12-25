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

class MyHome extends StatelessWidget {
  const MyHome({super.key});

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
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isDismissible: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              builder: (context) {
                return Container(
                  height: 200,
                  child: ListView(
                    children: [
                      ListTile(
                        onTap: () {
                          print("camera");
                        },
                        leading: Icon(Icons.camera),
                        title: Text("Camera"),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        leading: Icon(Icons.cancel),
                        title: Text("Cancle"),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Text("tes"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF0E0508),
        unselectedItemColor: Colors.white70,
        selectedItemColor: Color(0xFFFFFFFF),
        currentIndex: 0,
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
