import 'package:flutter/material.dart';

import '../../utils/appcolors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.image,
    required this.onpress,
  }) : super(key: key);

  final String title, image;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 40,
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(
              bottom: 14.0,
            ),
            child: Image.asset(
              image,
              width: 14,
              height: 14,
            ),
          ),
          shape: StadiumBorder(
            side: BorderSide(
              width: 1.15,
              color: AppColors.white.withOpacity(0.80),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(
              bottom: 14.0,
              right: 27,
              left: 0.0,
            ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.white.withOpacity(0.80),
                fontSize: 11,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.6,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
