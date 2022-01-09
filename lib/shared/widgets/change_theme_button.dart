import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projeto_app_masterclass/shared/utils/theme_colors.dart';
import 'package:projeto_app_masterclass/shared/utils/theme_controller.dart';
import 'package:provider/provider.dart';

class ChangeThemeButton extends StatefulWidget {
  const ChangeThemeButton({
    Key? key,
    required this.themeColors,
  }) : super(key: key);

  final ThemeColors themeColors;

  @override
  State<ChangeThemeButton> createState() => _ChangeThemeButtonState();
}

class _ChangeThemeButtonState extends State<ChangeThemeButton> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeController>(context);
    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: IconButton(
        onPressed: () {
          setState(() {
            provider.changeTheme();
          });
        },
        icon: FaIcon(
          provider.themeMode == ThemeMode.dark
              ? FontAwesomeIcons.solidMoon
              : FontAwesomeIcons.solidSun,
          color: Theme.of(context).iconTheme.color,
        ),
        splashRadius: 20,
      ),
    );
  }
}
