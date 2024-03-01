import "package:flutter/material.dart";

import "package:first_app/content.dart";

class Background extends StatelessWidget {
  const Background({required this.gradientColors, super.key});

  final List<Color> gradientColors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(gradient:
        LinearGradient(
          colors: gradientColors, 
          begin: Alignment.topLeft, 
          end: Alignment.bottomRight
          )
      ), child: const Center(child: Content(),),
    );
  }
}