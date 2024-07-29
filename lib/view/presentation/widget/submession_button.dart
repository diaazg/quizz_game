import 'package:flutter/material.dart';
import 'package:quizz_game/constants/styles.dart';

// ignore: must_be_immutable
class SubmessionButton extends StatelessWidget {
  SubmessionButton({
    super.key,
    required this.title
  });

  String title;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      decoration:BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(20)
      ),
      child:  Center(
        child: Text(
         title,
          style: mainTitle,
        ),
      ),
    );
  }
}
