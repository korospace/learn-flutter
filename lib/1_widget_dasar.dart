import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF5BE49B),
          title: Text("My First App"),
          centerTitle: false,
        ),
        backgroundColor: Color(0xFF007867),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Color(0xFF5BE49B),
            /**
             * Elevated Button
             */
            // child: Center(
            //   child: ElevatedButton(
            //       onPressed: () => {print("pressed")},
            //       child: Text("Hello World")),
            // ),

            /**
             * Image
             */
            child: Image(
                image: AssetImage("data/images/bg1.jpg")
                // image: NetworkImage("https://fastly.picsum.photos/id/17/2500/1667.jpg?hmac=HD-JrnNUZjFiP2UZQvWcKrgLoC_pc_ouUSWv8kHsJJY")
                ),
          ),
        ),
      ),
    );
  }
}
