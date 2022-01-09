import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/views/exercices_page/mockup/mockup_tinder/utils/appcolors.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Trouble Signing In?",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColors.white.withOpacity(0.70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
