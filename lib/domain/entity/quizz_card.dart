import 'package:flutter/cupertino.dart';
import 'package:quizz_game/view/presentation/widget/quizz_card.dart';

class QuizzCardData {
  String title;
  String picture;
  Color primaryColor;
  Color secondaryColor;

  QuizzCardData(
      {required this.title,
      required this.picture,
      required this.primaryColor,
      required this.secondaryColor});
}
