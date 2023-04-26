import 'package:flutter/material.dart';
import 'package:quizz_app/question_screen.dart';
import 'package:quizz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen= StartScreen(switchScreen);
  //   super.initState();
  // }

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'Question-screen';
      // activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    // final screenWidget = activeScreen == 'start-screen'
    //     ? StartScreen(switchScreen)
    //     : const QuestionsScreen();
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'Question-screen') {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 90, 4, 132),
                Color.fromARGB(255, 94, 9, 154),
                Color.fromARGB(255, 109, 10, 158)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget
          // activeScreen == 'start-screen'
          //     ? StartScreen(switchScreen)
          //     : const QuestionsScreen()
          ,
        ),
      ),
    );
  }
}
