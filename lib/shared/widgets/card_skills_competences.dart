import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/widgets/progress_line.dart';

class SkillsCompetencesCard extends StatelessWidget {
  const SkillsCompetencesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 12),
          child: Text(
            "Habilidades e Competências",
            style: Theme.of(context).primaryTextTheme.bodyText1,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 150,
          child: Card(
            color: Theme.of(context).cardColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.5, vertical: 12.5),
              child: Column(
                children: const [
                  ProgressLine(
                    title: "Dart/Flutter",
                    porcentage: 0.8,
                  ),
                  ProgressLine(
                    title: "React",
                    porcentage: 0.5,
                  ),
                  ProgressLine(
                    title: "JavaScipt",
                    porcentage: 0.7,
                  ),
                  ProgressLine(
                    title: "HTML",
                    porcentage: 0.9,
                  ),
                  ProgressLine(
                    title: "CSS",
                    porcentage: 0.8,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
