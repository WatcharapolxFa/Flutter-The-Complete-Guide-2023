import 'package:flutter/material.dart';
class StartScreen extends StatelessWidget{
  const StartScreen({super.key});
  @override
  Widget build(BuildContext context){
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/quiz-logo.png',
          height: 300,
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter the fun way! ',
            style: TextStyle(
              color:  Color.fromARGB(255, 237, 223, 252),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(onPressed: (){}, 
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 237, 223, 252),

          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),)
        ],
      )
      );
  }
}