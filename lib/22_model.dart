import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tes_flutter_app/models/user.dart';

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

  Future<List<UserModel>> getListUser() async {
    var res = await http.get(Uri.parse("https://reqres.in/api/users?page=3"));

    if (res.statusCode == 200) {
      Map<String, dynamic> resData =
          jsonDecode(res.body) as Map<String, dynamic>;

      List<dynamic> data = resData["data"];

      List<UserModel> dataUsers = data.map((e) {
        return UserModel.fromJson(e);
      }).toList();

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
      body: FutureBuilder<List<UserModel>>(
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
                    backgroundImage: NetworkImage(row.avatar),
                  ),
                  title: Text(row.firstName),
                  subtitle: Text(row.email),
                );
              }).toList(),
            );
          }
        },
      ),
    );
  }
}
