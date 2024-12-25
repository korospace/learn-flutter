import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  Future<List<Map<String, dynamic>>> getListUser() async {
    var res = await http.get(Uri.parse("https://reqres.in/api/users?page=2"));

    if (res.statusCode == 200) {
      Map<String, dynamic> resData =
          jsonDecode(res.body) as Map<String, dynamic>;
      print(resData);
      List<dynamic> data = resData["data"];

      // Konversi ke List<Map<String, dynamic>>
      List<Map<String, dynamic>> dataUsers = data
          .map((e) => {
                "name": e["first_name"],
                "email": e["email"],
                "ava": e["avatar"]
              })
          .toList();

      return dataUsers;
    } else {
      throw Exception("Failed to load users");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Future Builder"),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: getListUser(), // Panggil fungsi untuk mendapatkan data
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            ); // Loading state
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No data found"));
          } else {
            return ListView(
              children: snapshot.data!.map((row) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(row["ava"]),
                  ),
                  title: Text(row["name"]),
                  subtitle: Text(row["email"]),
                );
              }).toList(),
            );
          }
        },
      ),
    );
  }
}
