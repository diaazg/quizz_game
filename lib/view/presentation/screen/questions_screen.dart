import 'package:flutter/material.dart';
import 'package:quizz_game/constants/styles.dart';
import 'package:quizz_game/view/presentation/widget/question_screen_header.dart';
import 'package:quizz_game/view/presentation/widget/submession_button.dart';
import 'package:quizz_game/view/presentation/widget/suggestion_box.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int current = 5;

  @override
  Widget build(BuildContext context) {
    List<String> suggestions = ["option 1", "option 2", "option 3", "option 4"];
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const QuestionHeader(),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: List.generate(suggestions.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (current == index) {
                        current = 5;
                      } else {
                        current = index;
                      }
                    });
                  },
                  child: SuggestionBox(
                    title: suggestions[index],
                    color: current == index ? Colors.green : null,
                  ),
                );
              }),
            ),
            SubmessionButton(title:  "Submit")
          ],
        ),
      ),
    );
  }
}

