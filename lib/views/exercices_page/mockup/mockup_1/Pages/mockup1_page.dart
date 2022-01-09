import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto_app_masterclass/views/exercices_page/mockup/mockup_1/Widgets/Buttons/sign_in.dart';
import 'package:projeto_app_masterclass/views/exercices_page/mockup/mockup_1/Widgets/Buttons/sign_up_email.dart';
import 'package:projeto_app_masterclass/views/exercices_page/mockup/mockup_1/Widgets/Buttons/sign_up_google.dart';
import 'package:projeto_app_masterclass/views/exercices_page/mockup/mockup_1/Widgets/Utils/app_colors.dart';
import 'package:projeto_app_masterclass/views/exercices_page/mockup/mockup_1/Widgets/logo_widget.dart';
import 'package:projeto_app_masterclass/views/exercices_page/mockup/mockup_1/Widgets/subtitle_widget.dart';
import 'package:projeto_app_masterclass/views/exercices_page/mockup/mockup_1/Widgets/title_widget.dart';

class Mockup1Page extends StatelessWidget {
  Mockup1Page({Key? key}) : super(key: key);

  final AppColors appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.chevron_left_rounded,
              size: 40.0,
            ),
            splashRadius: 16.0,
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LogoWidget(appColors: appColors),
                  SizedBox(height: 40),
                  TitleWidget(appColors: appColors),
                  SizedBox(height: 20),
                  SubTitleWidget(appColors: appColors),
                  SizedBox(height: 84),
                  SignUpEmail(appColors: appColors),
                  SizedBox(height: 14),
                  SignUpGoogle(appColors: appColors),
                  SizedBox(height: 40),
                  SignIn(),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
