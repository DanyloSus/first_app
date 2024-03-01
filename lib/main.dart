import "package:flutter/material.dart";

import "package:first_app/background.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: Background(gradientColors: [Colors.black87, Colors.black54])
    )
    );
  }
}