import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.purple, Colors.deepPurple],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FractionallySizedBox(
                widthFactor: 0.4,
                child: Image.asset(
                  'lib/assets/quiz-logo.png',
                  fit: BoxFit.scaleDown,
                  color: const Color.fromARGB(78, 244, 67, 54),
                ),
              ),
              // opacity: 0.1,
              //   child: Image.asset(
              //     'lib/assets/quiz-logo.png',
              //     fit: BoxFit.scaleDown,
              //   ),
              // ),
              //),
              const SizedBox(height: 20), // Adjust spacing as needed
              const Text(
                'Learn Flutter the fun way',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                    decoration: TextDecoration.none),
              ),
              const SizedBox(height: 20), // Adjust spacing as needed
              OutlinedButton.icon(
                onPressed: () {
                  startQuiz();
                },
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text('Start Quiz'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
