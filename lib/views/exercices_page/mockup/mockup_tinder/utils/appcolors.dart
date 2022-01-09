import 'dart:math';
import 'package:flutter/material.dart';

class AppColors {
  static const Color white = Colors.white;
  static const Color darkPink = Color(0xFFE94976);
  static const Color terraCotta = Color(0xFFED7361);

  static const linearGradient = LinearGradient(
    colors: <Color>[
      darkPink,
      terraCotta,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [
      0.1,
      0.95,
    ],
    transform: GradientRotation((-90 * pi) / 180),
  );
}
