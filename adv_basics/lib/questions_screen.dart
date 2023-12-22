import 'package:adv_basics/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Questions Screen',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          const SizedBox(height: 30),
          AnswerButton(answerText: , onTap: (){})
        ],
      ),
    );
  }
}
