import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/utils/app_colors.dart';
import 'package:projeto_app_masterclass/shared/utils/app_fonts.dart';

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    required this.title,
    required this.porcentage,
  }) : super(key: key);

  final String title;
  final double porcentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppFonts.poppinsw500Abbey12,
          ),
          Stack(
            children: [
              Container(
                width: 255,
                height: 9,
                decoration: BoxDecoration(
                  color: AppColors.woodSmoke,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: 255 * porcentage,
                  height: 9,
                  decoration: BoxDecoration(
                    color: AppColors.endeavour,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
