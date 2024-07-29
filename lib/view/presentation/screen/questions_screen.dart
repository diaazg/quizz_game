import 'package:flutter/material.dart';
import 'package:quizz_game/domain/entity/quizz.dart';
import 'package:quizz_game/view/presentation/widget/question_screen_header.dart';
import 'package:quizz_game/view/presentation/widget/submession_button.dart';
import 'package:quizz_game/view/presentation/widget/suggestion_box.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({super.key, required this.quizz});
  Quizz quizz;
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int current = 5;

  @override
  Widget build(BuildContext context) {
    List<dynamic> suggestions =
        widget.quizz.questions[widget.quizz.getCurrentIndex].getSuggestions.sublist(0,4);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            QuestionHeader(
              numberOfQuestions: widget.quizz.questions.length,
              currentIndex: widget.quizz.getCurrentIndex,
              question:
                  widget.quizz.questions[widget.quizz.getCurrentIndex].title,
            ),
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
            GestureDetector(
              onTap: (){
                if(current != 5 && !widget.quizz.getEnd){
                  setState(() {
                    widget.quizz.validationAnswer(suggestions[current], widget.quizz.getCurrentIndex);
                    current = 5;
                  });
                }else if(widget.quizz.getEnd){
                  // TODO: implement result
                }
              },
              child: SubmessionButton(title:widget.quizz.getEnd?"Submit":"Next"))
          ],
        ),
      ),
    );
  }
}


  