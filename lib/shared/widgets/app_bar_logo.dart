import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projeto_app_masterclass/shared/utils/app_fonts.dart';

class AppBarLogo extends StatefulWidget {
  const AppBarLogo({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _AppBarLogoState createState() => _AppBarLogoState();
}

class _AppBarLogoState extends State<AppBarLogo> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: AppBar(
        toolbarHeight: 130,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Row(
            children: [
              Image.asset(
                "assets/images/logo3x.png",
                height: 48,
                width: 48,
              ),
              SizedBox(
                width: 4,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.title,
                    style: AppFonts.poppinsw600BlackSqueeze20,
                  ),
                  Text(
                    "Flutterando Masterclass",
                    style: AppFonts.poppinsw500BlackSqueeze12,
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0, top: 38),
            child: IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.solidMoon,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
