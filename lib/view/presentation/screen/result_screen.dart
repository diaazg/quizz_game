import 'package:flutter/material.dart';
import 'package:quizz_game/constants/other.dart';
import 'package:quizz_game/constants/styles.dart';
import 'package:quizz_game/view/presentation/screen/home_page.dart';
import 'package:quizz_game/view/presentation/widget/submession_button.dart';

class Result extends StatelessWidget {
  Result({super.key, required this.correct, required this.wrong});

  int correct;
  int wrong;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("$imagesPath/screenBack.png"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("$imagesPath/congratulation.png"),
            const SizedBox(
              height: 40,
            ),
            AnswersResult(
              correct: correct,
              wrong: wrong,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              child: SubmessionButton(title: "Home", backColor: Colors.white),
            )
          ],
        ),
      ),
    ));
  }
}

class AnswersResult extends StatelessWidget {
  AnswersResult({super.key, required this.wrong, required this.correct});

  int wrong;
  int correct;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Image.asset("$imagesPath/correct.png"),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                correct.toString(),
                style: mainTitle.copyWith(fontWeight: FontWeight.w900),
              ),
            )
          ],
        ),
        Column(
          children: [
            Image.asset("$imagesPath/wrong.png"),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                wrong.toString(),
                style: mainTitle.copyWith(fontWeight: FontWeight.w900),
              ),
            )
          ],
        ),
      ],
    );
  }
}
