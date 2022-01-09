import 'package:flutter/material.dart';
import '../Utils/app_colors.dart';

class SignUpGoogle extends StatelessWidget {
  const SignUpGoogle({
    Key? key,
    required this.appColors,
  }) : super(key: key);

  final AppColors appColors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: appColors.white,
          onPrimary: appColors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage("assets/images/google_icon.png"),
              width: 30,
              height: 30,
            ),
            Text(
              "Sign Up with Google",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
