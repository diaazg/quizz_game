import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizz_game/constants/styles.dart';
import 'package:quizz_game/domain/data/quizzCards.dart';
import 'package:quizz_game/domain/entity/quizz_card.dart';
import 'package:quizz_game/view/presentation/widget/how_to_play.dart';
import 'package:quizz_game/view/presentation/widget/quizz_card.dart';

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
                        color: Colors.purple,
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
                itemBuilder: (context,index){
                return QuizzCard(data: quizzData.toList()[index]); 
              })
              )
        ],
      ),
    ));
  }
}
