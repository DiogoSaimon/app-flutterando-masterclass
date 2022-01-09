import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/utils/theme_colors.dart';
import 'change_theme_button.dart';

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
  final themeColors = ThemeColors();
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 120,
      elevation: 0.0,
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
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  "Flutterando Masterclass",
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        ChangeThemeButton(themeColors: themeColors),
      ],
    );
  }
}
