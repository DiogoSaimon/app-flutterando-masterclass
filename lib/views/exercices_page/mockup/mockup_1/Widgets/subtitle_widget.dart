import 'package:flutter/material.dart';
import 'Utils/app_colors.dart';

class SubTitleWidget extends StatelessWidget {
  const SubTitleWidget({
    Key? key,
    required this.appColors,
  }) : super(key: key);

  final AppColors appColors;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Manage your expenses. \n Seamlessly.",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: appColors.white.withOpacity(0.50)),
    );
  }
}