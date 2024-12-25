import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({
    super.key,
  });

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  bool hidePassword = true;

  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

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
      body: ListView(
        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
        children: [
          TextField(
            autocorrect: true,
            controller: emailC,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              // label: Text("email"),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              labelText: "email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              // prefix: Padding(
              //   padding: EdgeInsets.only(right: 10),
              //   child: Icon(Icons.email),
              // ),
              prefixIcon: Icon(Icons.email),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            autocorrect: false,
            controller: passwordC,
            obscureText: hidePassword,
            decoration: InputDecoration(
                // label: Text("email"),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                labelText: "password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.vpn_key),
                suffixIcon: IconButton(
                  icon: Icon(
                      hidePassword ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    hidePassword = !hidePassword;
                    setState(() {});
                  },
                )),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                      "email: ${emailC.text} || password: ${passwordC.text}"),
                  action: SnackBarAction(label: "tutup", onPressed: () {}),
                  backgroundColor: Colors.redAccent,
                  margin: EdgeInsets.all(10),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              );
            },
            child: Text("login"),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(top: 20, bottom: 20)),
          )
        ],
      ),
    );
  }
}
