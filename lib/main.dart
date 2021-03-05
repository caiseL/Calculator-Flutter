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
        brightness: Brightness.dark,
        textTheme: TextTheme(
          button: TextStyle(color: Colors.white, fontSize: 25.0),
          headline3: TextStyle(
            backgroundColor: Colors.white70,
            fontSize: 38,
            color: Color.fromARGB(255, 32, 32, 32),
          ),
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => HomePage(),
      },
    );
  }
}
