import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/utils/app_colors.dart';
import 'package:projeto_app_masterclass/shared/utils/app_fonts.dart';

class CardUserProfile extends StatefulWidget {
  const CardUserProfile({Key? key}) : super(key: key);

  @override
  _CardUserProfileState createState() => _CardUserProfileState();
}

class _CardUserProfileState extends State<CardUserProfile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        color: AppColors.mirage,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 13),
              child: CircleAvatar(
                backgroundColor: AppColors.woodSmoke,
                radius: 50,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/female_profile.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              "Mary Ann Sullivan",
              style: AppFonts.poppinsw500BlackSqueeze16,
              maxLines: 1,
              overflow: TextOverflow.fade,
            ),
            SizedBox(height: 13),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Text(
                "Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien.",
                style: AppFonts.poppinsw500Abbey12,
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.fade,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 46, left: 82, right: 82),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/logo_whatsapp.png"),
                    splashRadius: 14,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/awesome_github_alt.png"),
                    splashRadius: 14,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/awesome_instagram.png"),
                    splashRadius: 14,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/awesome_facebook.png"),
                    splashRadius: 14,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
