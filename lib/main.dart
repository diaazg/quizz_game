import 'package:flutter/material.dart';
import 'package:quizz_game/view/presentation/screen/home_page.dart';
import 'package:quizz_game/view/presentation/screen/questions_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quizz App',
      home: HomeScreen(),
    );
  }
}

