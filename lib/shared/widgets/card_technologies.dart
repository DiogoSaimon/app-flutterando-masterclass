import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/utils/app_colors.dart';
import 'package:projeto_app_masterclass/shared/utils/app_fonts.dart';

class CardTechnologies extends StatefulWidget {
  const CardTechnologies({Key? key}) : super(key: key);

  @override
  _CardTechnologiesState createState() => _CardTechnologiesState();
}

class _CardTechnologiesState extends State<CardTechnologies> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: SizedBox(
        width: 94,
        height: MediaQuery.of(context).size.height,
        child: Card(
          color: AppColors.mirage,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/simple_flutter.png",
              ),
              SizedBox(height: 8.6),
              Text(
                "Flutter",
                style: AppFonts.poppinsw500BlackSqueeze12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
