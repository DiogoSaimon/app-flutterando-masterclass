import 'package:flutter/material.dart';
import 'Utils/app_colors.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
    required this.appColors,
  }) : super(key: key);

  final AppColors appColors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 95,
                width: 45,
                decoration: BoxDecoration(
                  color: appColors.royalBlue,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                ),
              ),
              Container(
                height: 95,
                width: 46,
                decoration: BoxDecoration(
                  color: appColors.royalBlue,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 50,
            width: 45,
            decoration: BoxDecoration(
              color: appColors.black,
            ),
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: appColors.royalBlue,
              borderRadius: BorderRadius.circular(45),
            ),
          ),
        ],
      ),
    );
  }
}
