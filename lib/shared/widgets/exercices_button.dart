import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/utils/app_colors.dart';
import 'package:projeto_app_masterclass/shared/utils/app_fonts.dart';

class ExercicesButton extends StatelessWidget {
  const ExercicesButton({
    Key? key,
    required this.count,
  }) : super(key: key);

  final int count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 16,
              child: Text(
                (count + 1).toString(),
                style: AppFonts.poppinsw500BlackSqueeze15,
              ),
            ),
            Text(
              "Exercícios 01",
              style: AppFonts.poppinsw500BlackSqueeze16,
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
            primary: AppColors.mirage,
            fixedSize: Size(MediaQuery.of(context).size.width, 64),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            )),
      ),
    );
  }
}
