import 'dart:math';
import 'package:flutter/material.dart';

class Circleavatarletter extends StatelessWidget {
  final String letter;
  final double size;
  final double fontSize;
  final String imageURL;

  const Circleavatarletter({
    super.key,
    required this.letter,
    this.size = 50.0,
    this.fontSize = 24.0,
    this.imageURL = "",
  });

  Color getRandomColor() {
    final Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  String getRandomLetter() {
    const String letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    Random random = Random();
    return letters[random.nextInt(letters.length)];
  }

  @override
  Widget build(BuildContext context) {
    if (imageURL.isEmpty) {
      return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: getRandomColor(),
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: Text(
          getRandomLetter().toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    } else {
      return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(imageURL),
            fit: BoxFit.cover,
          ),
        ),
      );
    }
  }
}
