import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(top: 15, bottom: 15),
            child: Image(image: AssetImage("data/images/logo.png")),
          ),
          backgroundColor: Color(0xFF0E0508),
          title:
              Text("SMS Blaster", style: TextStyle(color: Color(0xFFFFFFFF))),
          actions: [
            IconButton(
                onPressed: () => {print("click")}, icon: Icon(Icons.more_vert))
          ],
          toolbarHeight: 70,
        ),
        body: ButtonSnackbar(),
      ),
    );
  }
}

class ButtonSnackbar extends StatelessWidget {
  const ButtonSnackbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("anda yakin ingin pergi?"),
              action: SnackBarAction(label: "tutup", onPressed: () {}),
              backgroundColor: Colors.redAccent,
              margin: EdgeInsets.all(10),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          );
        },
        child: Text("snackbar"));
  }
}
