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
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(
                bottom: 16,
                left: 20,
              ),
              width: double.infinity,
              height: 125,
              color: Colors.blue,
              child: Text(
                "FOURTHMACE",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 0),
                itemCount: 18,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      print("Home");
                    },
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
