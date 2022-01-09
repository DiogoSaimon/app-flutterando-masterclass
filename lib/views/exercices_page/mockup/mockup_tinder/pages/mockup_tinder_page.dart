import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto_app_masterclass/views/exercices_page/mockup/mockup_tinder/utils/appcolors.dart';
import 'widgets/logo_widget.dart';
import 'widgets/custom_button.dart';
import 'widgets/signin_widget.dart';
import 'widgets/terms_widget.dart';

class MockupTinderPage extends StatefulWidget {
  const MockupTinderPage({Key? key}) : super(key: key);

  @override
  State<MockupTinderPage> createState() => _MockupTinderPageState();
}

class _MockupTinderPageState extends State<MockupTinderPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: AppColors.linearGradient,
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
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                LogoWidget(),
                TermsWidget(),
                SizedBox(height: 24),
                CustomButton(
                  onpress: () {},
                  title: "SIGN IN WITH APPLE",
                  image: "assets/images/icon_apple.png",
                ),
                SizedBox(height: 8),
                CustomButton(
                  onpress: () {},
                  title: "SIGN IN WITH FACEBOOK",
                  image: "assets/images/facebook.png",
                ),
                SizedBox(height: 8),
                CustomButton(
                  onpress: () {},
                  title: "SIGN IN WITH PHONE NUMBER",
                  image: "assets/images/speech-bubble.png",
                ),
                SizedBox(height: 18),
                SignInWidget(),
                SizedBox(height: 34),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
