import 'package:flutter/material.dart';

class SuggestionBox extends StatelessWidget {
  const SuggestionBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
       height: 70,
       decoration: BoxDecoration(
        border: Border.all(color:Colors.purple,width: 2),
        borderRadius: BorderRadius.circular(20)
       ),
       child: const Text(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.start,
        "Hello world",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w500
        ),
       ),
    
    );
  }
}

