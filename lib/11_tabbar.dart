import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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

// class MyHome extends StatelessWidget {
//   const MyHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4, // Jumlah tab harus sesuai dengan jumlah Tab dan TabBarView
//       child: Scaffold(
//         appBar: AppBar(
//           leading: Padding(
//             padding: const EdgeInsets.only(top: 15, bottom: 15),
//             child: Image.asset(
//                 "data/images/logo.png"), // Pastikan file gambar sudah ditambahkan di pubspec.yaml
//           ),
//           backgroundColor: const Color(0xFF0E0508),
//           title: const Text(
//             "SMS Blaster",
//             style: TextStyle(color: Color(0xFFFFFFFF)),
//           ),
//           actions: [
//             IconButton(
//               onPressed: () {
//                 print("click");
//               },
//               icon: const Icon(Icons.more_vert),
//             )
//           ],
//           toolbarHeight: 70,
//           bottom: const TabBar(
//             tabs: [
//               Tab(
//                 icon: Icon(Icons.camera),
//               ),
//               Tab(
//                 child: Text("Chats"),
//               ),
//               Tab(
//                 child: Text("Status"),
//               ),
//               Tab(
//                 child: Text("Cals"),
//               ),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(
//               child: Text("This is Camera Tab"), // Konten untuk tab kedua
//             ), // Konten untuk tab pertama
//             Center(
//               child: Text("This is Chats Tab"), // Konten untuk tab kedua
//             ),
//             Center(
//               child: Text("This is Status Tab"), // Konten untuk tab kedua
//             ),
//             Center(
//               child: Text("This is Cals Tab"), // Konten untuk tab kedua
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  late TabController tabC = TabController(length: 4, vsync: this);

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
            icon: const Icon(Icons.more_vert),
          )
        ],
        toolbarHeight: 70,
        bottom: TabBar(
          controller: tabC,
          tabs: [
            Tab(
              icon: Icon(Icons.camera),
            ),
            Tab(
              child: Text("Chats"),
            ),
            Tab(
              child: Text("Status"),
            ),
            Tab(
              child: Text("Cals"),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabC,
        children: [
          Center(
            child: Text("This is Camera Tab"), // Konten untuk tab kedua
          ), // Konten untuk tab pertama
          Center(
            child: Text("This is Chats Tab"), // Konten untuk tab kedua
          ),
          Center(
            child: Text("This is Status Tab"), // Konten untuk tab kedua
          ),
          Center(
            child: Text("This is Cals Tab"), // Konten untuk tab kedua
          )
        ],
      ),
    );
  }
}
