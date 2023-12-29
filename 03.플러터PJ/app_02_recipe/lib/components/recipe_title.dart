// 황금 레시피 타이틀 클래스 
import 'package:flutter/material.dart';

class RecipeTitle extends StatelessWidget {
  const RecipeTitle({Key?key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20.0),
      child: Center(
        child: Text(
          "황금레서피",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}