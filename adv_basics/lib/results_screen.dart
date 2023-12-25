import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chooseAnswer});

  final List<String> chooseAnswer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered X out of Y Questions correctly'),
            const SizedBox(height: 30),
            const Text('List of answers and questionss...'),
            const SizedBox(height: 30),
            TextButton(onPressed: (){}, child: const Text('Restart Quiz'),)
        ],
        ),
      ),
    );
  }
}
