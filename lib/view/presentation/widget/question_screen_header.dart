import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizz_game/constants/styles.dart';

class QuestionHeader extends StatelessWidget {
  const QuestionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 270,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/back.png")),
          borderRadius:
              BorderRadius.vertical(bottom: Radius.circular(30))),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
                size: 40,
              ),
              Row(
                children: [
                  Icon(
                    Icons.access_time_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                  Text(
                    "  01:30  ",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  )
                ],
              )
            ],
          ),
          Text(
            "1/10",
            style: mainTitle.copyWith(fontSize: 80),
          ),
          Text(
            maxLines: 2,
            "How many students in your class from korea?",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: mainTitle.copyWith(fontSize: 20),
          )
        ],
      ),
    );
  }
}
