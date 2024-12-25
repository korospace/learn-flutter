import 'dart:math';

import 'package:flutter/material.dart';

class Soal5 extends StatelessWidget {
  const Soal5({
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
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                "Hello World",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          // SizedBox(
          //   width: 10,
          // ),
          Container(
            margin: EdgeInsets.only(left: 10),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                "Hello World",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
