import 'package:flutter/material.dart';
import 'package:quizz_game/constants/styles.dart';

// ignore: must_be_immutable
class HowToPlay extends StatelessWidget {
  HowToPlay({
    required  this.title,
    super.key,
  });

   String title;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 5,
      right: 82,
      child: Container(
        height: 70,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Text(
            title,
            style: mainTitle
          ),
        ),
      ),
    );
  }
}