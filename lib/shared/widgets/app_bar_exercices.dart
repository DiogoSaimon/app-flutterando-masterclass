import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/utils/theme_colors.dart';
import 'change_theme_button.dart';

class AppBarExecices extends StatefulWidget {
  const AppBarExecices({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  _AppBarExecicesState createState() => _AppBarExecicesState();
}

class _AppBarExecicesState extends State<AppBarExecices> {
  final themeColors = ThemeColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130,
        elevation: 0.0,
        leading: IconButton(
          onPressed: widget.onPressed,
          splashRadius: 20,
          icon: Icon(
            Icons.chevron_left_rounded,
            size: 50,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        title: Column(
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
        actions: [
          ChangeThemeButton(themeColors: themeColors),
        ],
      ),
    );
  }
}
