import 'dart:math';

import 'package:flutter/material.dart';

class Soal14 extends StatelessWidget {
  const Soal14({
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
      body: Column(
        children: [
          Container(
            height: 120,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 100,
                        width: 100,
                        color: Color.fromARGB(
                            255,
                            200 + Random().nextInt(255),
                            200 + Random().nextInt(255),
                            200 + Random().nextInt(255))),
                  );
                }),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                  child: Container(
                    height: 200,
                    color: Color.fromARGB(
                        255,
                        200 + Random().nextInt(255),
                        200 + Random().nextInt(255),
                        200 + Random().nextInt(255)),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
