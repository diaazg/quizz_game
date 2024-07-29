import 'package:flutter/material.dart';
import 'package:quizz_game/constants/styles.dart';
import 'package:quizz_game/domain/data/quizzCards.dart';
import 'package:quizz_game/domain/data/quizzes.dart';

import 'package:quizz_game/view/presentation/widget/how_to_play.dart';
import 'package:quizz_game/view/presentation/widget/quizz_card.dart';

import '../../../domain/entity/quizz.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 250,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/back.png")),
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(30))),
                    child: const Center(
                      child: Text(
                        "Quizz",
                        style: mainTitle,
                      ),
                    ),
                  ),
                  HowToPlay(
                    title: "How to play",
                  )
                ],
              )),
          Expanded(
              flex: 2,
              child: ListView.builder(
                  itemCount: quizzData.length,
                  itemBuilder: (context, index) {
                    return QuizzCard(
                      data: quizzData.toList()[index],
                      quizz:
                          Quizz(title: "Tech Quizz", questions: techQuestions),
                    );
                  }))
        ],
      ),
    ));
  }
}


