import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizz_game/domain/entity/quizz.dart';
import 'package:quizz_game/domain/entity/quizz_card.dart';
import 'package:quizz_game/view/presentation/screen/questions_screen.dart';

// ignore: must_be_immutable
class QuizzCard extends StatelessWidget {
  QuizzCard({super.key, required this.data,required this.quizz});

  QuizzCardData data;

  Quizz quizz;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: data.primaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data.title,
                style: const TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuestionScreen(quizz: quizz,)));
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: data.secondaryColor),
                  child: const Center(
                    child: Text(
                      "Start quizz",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 15),
                    ),
                  ),
                ),
              )
            ],
          ),
          Image.asset("assets/images/${data.picture}.png")
        ],
      ),
    );
  }
}
