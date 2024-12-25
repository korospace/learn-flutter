import 'dart:math';

import 'package:flutter/material.dart';

class Soal12 extends StatelessWidget {
  const Soal12({
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
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Color.fromARGB(255, 200 + Random().nextInt(255),
                  200 + Random().nextInt(255), 200 + Random().nextInt(255)),
            ),
            Container(
              width: 180,
              height: 180,
              color: Color.fromARGB(255, 200 + Random().nextInt(255),
                  200 + Random().nextInt(255), 200 + Random().nextInt(255)),
            ),
            Container(
              width: 160,
              height: 160,
              color: Color.fromARGB(255, 200 + Random().nextInt(255),
                  200 + Random().nextInt(255), 200 + Random().nextInt(255)),
            ),
            Container(
              width: 140,
              height: 140,
              color: Color.fromARGB(255, 200 + Random().nextInt(255),
                  200 + Random().nextInt(255), 200 + Random().nextInt(255)),
            ),
          ],
        ),
      ),
    );
  }
}
