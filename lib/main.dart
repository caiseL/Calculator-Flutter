import 'package:flutter/material.dart';

import 'src/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 32, 32, 32),
        primarySwatch: Colors.grey,
      ),
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => HomePage(),
      },
    );
  }
}
