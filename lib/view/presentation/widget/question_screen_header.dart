import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizz_game/constants/other.dart';
import 'package:quizz_game/constants/styles.dart';

class QuestionHeader extends StatelessWidget {
   QuestionHeader({
    super.key,
    required this.numberOfQuestions,
    required this.currentIndex,
    required this.question,
    required this.duration
  });

  int numberOfQuestions;
  int currentIndex;
  String question;
  int duration;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 270,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("$imagesPath/back.png")),
          borderRadius:
              BorderRadius.vertical(bottom: Radius.circular(30))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
                size: 40,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.access_time_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                  Text(
                    "  $duration  ",
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  )
                ],
              )
            ],
          ),
          Text(
            "${currentIndex+1}/$numberOfQuestions",
            style: mainTitle.copyWith(fontSize: 80),
          ),
          Text(
            maxLines: 2,
            question,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: mainTitle.copyWith(fontSize: 20),
          )
        ],
      ),
    );
  }
}
