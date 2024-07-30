import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quizz_game/domain/entity/quizz.dart';
import 'package:quizz_game/view/presentation/screen/result_screen.dart';
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
  int _duration = 0;
  Timer? _timer;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_duration == 0) {
          setState(() {
            timer.cancel();
            if (widget.quizz.getEnd) {
              widget.quizz.setIncrementWrong = 1;

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Result(
                          correct: widget.quizz.getCorrectAnswers,
                          wrong: widget.quizz.getWrongAnswers)));
            } else {
              widget.quizz.setIncrementWrong = 1;
              resetTimer();
            }
          });
        } else {
          setState(() {
            _duration--;
          });
        }
      },
    );
  }

  void resetTimer() {
    if (_timer != null) {
      _timer!.cancel();
    }
    _duration = widget.quizz.questions[widget.quizz.getCurrentIndex].duration;
    startTimer();
  }

  int current = 5;

  @override
  void initState() {
    resetTimer();
    super.initState();
  }

  @override
  void dispose() {
    if (_timer != null) {
      _timer!.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic> suggestions = widget
        .quizz.questions[widget.quizz.getCurrentIndex].getSuggestions
        .sublist(0, 4);

    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        if (_timer != null) {
          _timer!.cancel();
        }
        widget.quizz.reset();
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              QuestionHeader(
                duration: _duration,
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
                  onTap: () {
                    if (current != 5 && !widget.quizz.getEnd) {
                      setState(() {
                        _timer!.cancel();

                        widget.quizz.validationAnswer(
                            suggestions[current], widget.quizz.getCurrentIndex);
                        current = 5;
                        resetTimer();
                      });
                    } else if (current != 5 && widget.quizz.getEnd) {
                      setState(() {
                        widget.quizz.validationAnswer(
                            suggestions[current], widget.quizz.getCurrentIndex);
                        current = 5;
                        _timer!.cancel();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Result(
                                    correct: widget.quizz.getCorrectAnswers,
                                    wrong: widget.quizz.getWrongAnswers)));
                      });
                    }
                  },
                  child: SubmessionButton(
                    title: widget.quizz.getEnd ? "Submit" : "Next",
                    backColor: Colors.purple,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
