import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/utils/app_colors.dart';
import 'package:projeto_app_masterclass/shared/utils/app_fonts.dart';

class FavoriteTechnologies extends StatefulWidget {
  const FavoriteTechnologies({Key? key}) : super(key: key);

  @override
  _FavoriteTechnologiesState createState() => _FavoriteTechnologiesState();
}

class _FavoriteTechnologiesState extends State<FavoriteTechnologies> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tecnologias Favoritas",
            style: AppFonts.poppinsw500BlackSqueeze14,
          ),
          SizedBox(height: 12),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
