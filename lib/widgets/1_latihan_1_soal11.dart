import 'dart:math';

import 'package:flutter/material.dart';

class Soal11 extends StatelessWidget {
  const Soal11({
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
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.only(bottom: 16, left: 20),
              height: 200,
              alignment: Alignment.bottomLeft,
              child: Text(
                "Hello - ${index + 1}",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      opacity: 0.5,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://picsum.photos/id/${index + 1}/200/300"))),
            ),
          );
        },
      ),
    );
  }
}
