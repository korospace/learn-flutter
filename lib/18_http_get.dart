import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

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
  late String id;
  late String email;
  late String name;

  @override
  void initState() {
    id = "_ _ _ _";
    email = "_ _ _ _";
    name = "_ _ _ _";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HTTP GET"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(id),
            Text(email),
            Text(name),
            ElevatedButton(
              onPressed: () async {
                var myresponse = await myhttp
                    .get(Uri.parse("https://reqres.in/api/users/100"));

                if (myresponse.statusCode == 200) {
                  Map<String, dynamic> data =
                      jsonDecode(myresponse.body) as Map<String, dynamic>;

                  setState(() {
                    id = data["data"]["id"].toString();
                    email = data["data"]["email"].toString();
                    String firstName = data["data"]["first_name"].toString();
                    String lastName = data["data"]["last_name"].toString();
                    name = "$firstName $lastName";
                  });
                } else {
                  setState(() {
                    id = "_ _ _ _";
                    email = "_ _ _ _";
                    name = "_ _ _ _";
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("data tidak ditemukan"),
                      action: SnackBarAction(label: "tutup", onPressed: () {}),
                      backgroundColor: Colors.redAccent,
                      margin: EdgeInsets.all(10),
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  );
                }
              },
              child: const Text("get data"),
            )
          ],
        ),
      ),
    );
  }
}
