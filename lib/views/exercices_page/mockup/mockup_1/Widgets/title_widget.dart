import 'package:flutter/material.dart';
import 'Utils/app_colors.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.appColors,
  }) : super(key: key);

  final AppColors appColors;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Get your Money \nUnder Control",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: appColors.white,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}