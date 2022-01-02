import 'dart:io';

import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/models/data_models.dart';
import 'package:projeto_app_masterclass/shared/routes/routes.dart';
import 'package:projeto_app_masterclass/shared/utils/app_colors.dart';
import 'package:projeto_app_masterclass/shared/utils/app_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CardActivities extends StatefulWidget {
  final DataModels info;

  const CardActivities({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  State<CardActivities> createState() => _CardActivitiesState();
}

class _CardActivitiesState extends State<CardActivities> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0, right: 14.0, bottom: 8.0),
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
                      widget.info.iconImage!,
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
                  widget.info.title!,
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
                        widget.info.count.toString(),
                        style: AppFonts.poppinsw500BlackSqueeze12,
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    widget.info.subtitle!,
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
                  child: GestureDetector(
                    onTap: () {
                      WebView(
                        initialUrl:
                            'https://github.com/DiogoSaimon/desafio-transicao-botoes',
                      );
                    },
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
                    onPressed: () {
                      Navigator.of(context).pushNamed(exercices);
                    },
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
