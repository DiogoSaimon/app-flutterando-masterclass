import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/utils/app_colors.dart';
import 'package:projeto_app_masterclass/shared/utils/app_fonts.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: SizedBox(
        height: 220,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          color: AppColors.mirage,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 12, right: 13),
                  child: CircleAvatar(
                    child: Image.asset(
                      "assets/images/awesome_running.png",
                      alignment: Alignment.center,
                    ),
                    backgroundColor: AppColors.endeavour,
                    radius: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 68),
                child: Text(
                  "Animações",
                  style: AppFonts.poppinsw500BlackSqueeze16,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 11, top: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Exercícios:",
                        style: AppFonts.montserratw400Abbey12,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "4",
                        style: AppFonts.poppinsw500BlackSqueeze12,
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos",
                    style: AppFonts.montserratw400Abbey14,
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 17, left: 14.56),
                  child: Row(
                    children: [
                      Image.asset("assets/images/awesome_github.png"),
                      SizedBox(width: 4.36),
                      Text(
                        "Acessar código fonte",
                        style: AppFonts.montserratw400BlackSqueeze12,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 14.56, bottom: 9.5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: AppColors.endeavour,
                        fixedSize: Size(119, 34.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    onPressed: () {},
                    child: Text(
                      "Ver mais",
                      style: AppFonts.poppinsw600BlackSqueeze12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
