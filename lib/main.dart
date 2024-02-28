import 'package:dog_pic/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 231, 195, 50),
          Color.fromARGB(231, 240, 208, 28)
        ]),
      ),
    );
  }
}
