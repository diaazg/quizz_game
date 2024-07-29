import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SuggestionBox extends StatelessWidget {
   SuggestionBox({super.key, required this.title, this.color});

  String title;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      height: 70,
      decoration: BoxDecoration(
          border: Border.all(
              color: color == null ? Colors.purple : color!, width: 2),
          borderRadius: BorderRadius.circular(20)),
      child:  Text(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.start,
        title,
        style: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
      ),
    );
  }
}
