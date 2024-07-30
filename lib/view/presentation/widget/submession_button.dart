import 'package:flutter/material.dart';
import 'package:quizz_game/constants/styles.dart';

// ignore: must_be_immutable
class SubmessionButton extends StatelessWidget {
  SubmessionButton({
    super.key,
    required this.title,
    required this.backColor
  });

  String title;
  Color backColor;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      decoration:BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child:  Center(
        child: Text(
         title,
          style: mainTitle.copyWith(color: backColor==Colors.purple?Colors.white:Colors.purple),
        ),
      ),
    );
  }
}
