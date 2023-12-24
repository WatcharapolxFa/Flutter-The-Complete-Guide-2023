import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = ' startScreen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questionsScreen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if(selectedAnswer.length == questions.length){
      setState(() {
        selectedAnswer = [];  
         activeScreen = 'Start - Screen';
      });
    }
    
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questionsScreen') {
      screenWidget =  QuestionsScreen(onSelectedAnswer: chooseAnswer);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 46, 6, 116),
              Color.fromARGB(255, 124, 35, 151)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
