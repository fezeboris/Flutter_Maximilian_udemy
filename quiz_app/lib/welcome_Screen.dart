import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen(
    this.startQuiz, {
    super.key,
  });
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 300,
            child: Opacity(
              opacity: 1,
              child: Image.asset(
                'assets/images/quiz-logo.png',
                width: 300,
              ),
            ),
          ),
          const SizedBox(height: 60),
          const Text(
            'Learn Flutter the fun way !',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(178, 255, 255, 255)),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                ' Start Quiz',
              ))
        ],
      ),
    );
  }
}
