import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/widgets/app_bar_logo.dart';
import 'package:projeto_app_masterclass/shared/widgets/card_skills_competences.dart';
import 'package:projeto_app_masterclass/shared/widgets/card_user_profile.dart';
import 'package:projeto_app_masterclass/shared/widgets/favorite_technologies.dart';

class AboutDevPage extends StatefulWidget {
  const AboutDevPage({Key? key}) : super(key: key);

  @override
  _AboutDevPageState createState() => _AboutDevPageState();
}

class _AboutDevPageState extends State<AboutDevPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: AppBarLogo(
          title: "Sobre o dev",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CardUserProfile(),
              SizedBox(height: 29),
              FavoriteTechnologies(),
              SizedBox(height: 25),
              SkillsCompetencesCard(),
            ],
          ),
        ),
      ),
    );
  }
}
