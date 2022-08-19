import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Google Meet In-Call Mobile Clone",
      home: Scaffold(
        backgroundColor: const Color(0xFF202124),
        appBar: AppBar(
          backgroundColor: const Color(0xFF030304),
          title: const Text("Google Meet In-Call Mobile Clone",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        body: const HomePage(),
      ),
    );
  }
}
