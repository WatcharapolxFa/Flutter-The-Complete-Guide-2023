import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 46, 6, 116),
                Color.fromARGB(255, 124, 35, 151)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: const StartScreen()),
      ),
    );
  }
}
