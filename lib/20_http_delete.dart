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

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String hasil = "_ _ _ _";
  bool isLoading = false;

  @override
  void initState() {
    getUser();

    super.initState();
  }

  void getUser() async {
    var response = await http.get(Uri.parse("https://reqres.in/api/users/2"));

    Map<String, dynamic> data =
        jsonDecode(response.body) as Map<String, dynamic>;

    setState(() {
      hasil = "${data["data"]["first_name"]}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HTTP DELETE"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(hasil),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: Colors.black26,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () async {
              setState(() {
                isLoading = true;
              });

              var response =
                  await http.delete(Uri.parse("https://reqres.in/api/users/2"));

              if (response.statusCode == 204) {
                setState(() {
                  hasil = "user berhasil dihapus!!";
                  isLoading = false;
                });
              }
            },
            child: isLoading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  )
                : const Text("DELETE"),
          )
        ],
      ),
    );
  }
}
