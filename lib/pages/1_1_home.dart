import 'package:flutter/material.dart';
import '1_2_product.dart';

class MyHome extends StatelessWidget {
  const MyHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Product(),
            ));
          },
          child: Text("next"),
        ),
      ),
    );
  }
}
