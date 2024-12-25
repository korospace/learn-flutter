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
        // invisible
        appBar: AppBar(
          // visible
          backgroundColor: Color(0xFF5BE49B),
          title: Text("visible & invisible widget"),
        ),
        // invisible
        // body: Center(
        //   // visible & invisible
        //   child: Container(
        //     width: 100,
        //     height: 100,
        //     color: Color(0xFF007867), // make it visible
        //     child: Center(
        //       child: Text("Hello Worlds"),
        //     ),
        //   ),
        // ),
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Container(
        //       width: 100,
        //       height: 100,
        //       color: Color(0xFF007867), // make it visible
        //       child: Center(
        //         child: Text("Hello Worlds"),
        //       ),
        //     ),
        //     Container(
        //       width: 200,
        //       height: 200,
        //       color: Color(0xFF007867), // make it visible
        //       child: Center(
        //         child: Text("Hello Worlds"),
        //       ),
        //     )
        //   ],
        // )
        // body: Row(
        //   children: [
        //     Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.amber,
        //     ),
        //     Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.green,
        //     )
        //   ],
        // ),
        // body: Stack(
        //   alignment: AlignmentDirectional.bottomEnd,
        //   children: [
        //     Container(
        //       width: 200,
        //       height: 200,
        //       color: Colors.amber, // make it visible
        //       child: Center(
        //         child: Text("Hello Worlds"),
        //       ),
        //     ),
        //     Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.red, // make it visible
        //       child: Center(
        //         child: Text("Hello Worlds"),
        //       ),
        //     )
        //   ],
        // )
        // body: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       SingleChildScrollView(
        //         scrollDirection: Axis.horizontal,
        //         child: Row(
        //           children: [
        //             Container(
        //               width: 300,
        //               height: 300,
        //               color: Colors.red,
        //               child: Center(
        //                 child: Text("tes 1"),
        //               ),
        //             ),
        //             Container(
        //               width: 300,
        //               height: 300,
        //               color: Colors.amber,
        //               child: Center(
        //                 child: Text("tes 1"),
        //               ),
        //             ),
        //             Container(
        //               width: 300,
        //               height: 300,
        //               color: Colors.green,
        //               child: Center(
        //                 child: Text("tes 1"),
        //               ),
        //             )
        //           ],
        //         ),
        //       ),
        //       Column(
        //         children: [
        //           Container(
        //             width: 300,
        //             height: 300,
        //             color: Colors.red,
        //             child: Center(
        //               child: Text("tes 1"),
        //             ),
        //           ),
        //           Container(
        //             width: 300,
        //             height: 300,
        //             color: Colors.amber,
        //             child: Center(
        //               child: Text("tes 1"),
        //             ),
        //           ),
        //           Container(
        //             width: 300,
        //             height: 300,
        //             color: Colors.green,
        //             child: Center(
        //               child: Text("tes 1"),
        //             ),
        //           )
        //         ],
        //       )
        //     ],
        //   ),
        // ),
        // body: ListView(
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     Container(
        //       width: 200,
        //       height: 200,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       width: 200,
        //       height: 200,
        //       color: Colors.amber,
        //     ),
        //     Container(
        //       width: 200,
        //       height: 200,
        //       color: Colors.green,
        //     ),
        //   ],
        // ),
        body: GridView(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1 / 2),
          // gridDelegate:
          //     SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200),
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.pink,
            )
          ],
        ),
      ),
    );
  }
}
