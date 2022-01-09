import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/views/exercices_page/mockup/mockup_tinder/utils/appcolors.dart';

class TermsWidget extends StatelessWidget {
  const TermsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "By tapping Create Account or Sign In, you agree to our\n",
            style: TextStyle(
              letterSpacing: 0.4,
              fontSize: 10,
              color: AppColors.white.withOpacity(0.70),
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text: "Terms.",
            style: TextStyle(
              letterSpacing: 0.4,
              fontSize: 10,
              color: AppColors.white.withOpacity(0.70),
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: " Learn how we process your data in our ",
            style: TextStyle(
              letterSpacing: 0.4,
              fontSize: 10,
              color: AppColors.white.withOpacity(0.70),
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text: "Privacy\nPolicy",
            style: TextStyle(
              letterSpacing: 0.4,
              fontSize: 10,
              color: AppColors.white.withOpacity(0.70),
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: " and ",
            style: TextStyle(
              letterSpacing: 0.4,
              fontSize: 10,
              color: AppColors.white.withOpacity(0.70),
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text: "Cookies Policy.",
            style: TextStyle(
              letterSpacing: 0.4,
              fontSize: 10,
              color: AppColors.white.withOpacity(0.70),
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
