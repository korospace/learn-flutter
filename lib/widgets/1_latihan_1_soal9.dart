import 'dart:math';

import 'package:flutter/material.dart';

class Soal9 extends StatelessWidget {
  const Soal9({
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
      body: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          if (index % 2 == 0) {
            return Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
            );
          } else {
            return Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10)),
            );
          }
        },
      ),
    );
  }
}
