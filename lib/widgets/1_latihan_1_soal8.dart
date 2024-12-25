import 'dart:math';

import 'package:flutter/material.dart';

class Soal8 extends StatelessWidget {
  const Soal8({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(top: 15, bottom: 15),
          child: Image(image: AssetImage("data/images/logo.png")),
        ),
        backgroundColor: Color(0xFF0E0508),
        title: Text("SMS Blaster", style: TextStyle(color: Color(0xFFFFFFFF))),
        actions: [
          IconButton(
              onPressed: () => {print("click")}, icon: Icon(Icons.more_vert))
        ],
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 200 + Random().nextInt(255),
                      200 + Random().nextInt(255), 200 + Random().nextInt(255)),
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 200 + Random().nextInt(255),
                      200 + Random().nextInt(255), 200 + Random().nextInt(255)),
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 200 + Random().nextInt(255),
                      200 + Random().nextInt(255), 200 + Random().nextInt(255)),
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 200 + Random().nextInt(255),
                      200 + Random().nextInt(255), 200 + Random().nextInt(255)),
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 200 + Random().nextInt(255),
                      200 + Random().nextInt(255), 200 + Random().nextInt(255)),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ],
        ),
      ),
    );
  }
}
