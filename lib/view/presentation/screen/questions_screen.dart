import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizz_game/constants/styles.dart';
import 'package:quizz_game/view/presentation/widget/question_screen_header.dart';
import 'package:quizz_game/view/presentation/widget/suggestion_box.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            QuestionHeader(),
            SizedBox(height: 50,),
            SuggestionBox(),

          ],
        ),
      ),
    );
  }
}

