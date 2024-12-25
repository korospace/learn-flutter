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
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();
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
      hasil = "${data["data"]["first_name"]} _ _ _ _";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("HTTP POST"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: nameC,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: "name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: jobC,
            autocorrect: false,
            decoration: InputDecoration(
              labelText: "job",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: isLoading
                ? null
                : () async {
                    setState(() {
                      isLoading = true;
                    });

                    // var response = await http.post(
                    //   Uri.parse("https://reqres.in/api/users"),
                    //   body: {"name": nameC.text, "job": jobC.text},
                    // );
                    var response = await http.put(
                      Uri.parse("https://reqres.in/api/users/2"),
                      body: {"name": nameC.text, "job": jobC.text},
                    );

                    Map<String, dynamic> data =
                        jsonDecode(response.body) as Map<String, dynamic>;

                    setState(() {
                      hasil = "${data["name"]} ${data["job"]}";
                      isLoading = false;
                    });
                  },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
            ),
            child: isLoading
                ? const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                        ),
                      ),
                    ],
                  )
                : const Text("Submit"),
          ),
          const SizedBox(height: 40),
          const Divider(
            color: Colors.black54,
          ),
          const SizedBox(height: 40),
          Text(hasil),
        ],
      ),
    );
  }
}
