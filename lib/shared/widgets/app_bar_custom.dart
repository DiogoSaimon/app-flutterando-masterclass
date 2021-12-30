import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projeto_app_masterclass/shared/utils/app_fonts.dart';

class AppBarCustom extends StatefulWidget {
  const AppBarCustom({
    Key? key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  final String? title;
  final String? subtitle;

  @override
  _AppBarCustomState createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
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
                    widget.title!,
                    style: AppFonts.poppinsw600BlackSqueeze20,
                  ),
                  Text(
                    widget.subtitle!,
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
