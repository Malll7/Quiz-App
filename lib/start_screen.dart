import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {

  //? 👇 This means: we expect the parent to give us a function
  //? "void Function()" = a function with no input and no return value
  //? Example: switchScreen()
  final void Function() startQuiz;

  //? 👇 Constructor: when parent creates StartScreen, it must give a function
  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300),
          const SizedBox(height: 20),
          Text(
            'Learn Flutter the fun way !',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            //? 👇 onPressed expects a function
            //? we give it the "startQuiz" function that was passed from parent
            //? so when button is clicked -> it will run parent's switchScreen()
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min, // keep button compact
              children: [
                Icon(Icons.arrow_right_rounded, size: 32, color: Colors.indigo),
                SizedBox(width: 1), // 👈 control spacing manually
                Text(
                  'Start Quiz',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
