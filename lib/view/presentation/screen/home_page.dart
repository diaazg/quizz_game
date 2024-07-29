import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizz_game/constants/styles.dart';
import 'package:quizz_game/view/presentation/widget/how_to_play.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
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
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(30)
                        )
                    ),
                    child: const Center(
                      child: Text(
                        
                        "Quizz",
                        style: mainTitle,
                      ),
                    ),
                  ),
                  HowToPlay(title: "How to play",)
                ],
                
              )
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    QuizzCard()
                  ],
                )
                  
                  )
          ],
        ),
      ) 
    );
  }
}

class QuizzCard extends StatelessWidget {
  const QuizzCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF35ECF8)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Text("data"),
              Container(
                child: Center(
                  child: Text("Start quizz"),
                ),
              )
            ],
          ),
          
        ],
      ),
    );
  }
}


