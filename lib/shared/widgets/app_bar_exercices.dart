import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projeto_app_masterclass/shared/utils/app_fonts.dart';

class AppBarExecices extends StatefulWidget {
  const AppBarExecices({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final Function onPressed;

  @override
  _AppBarExecicesState createState() => _AppBarExecicesState();
}

class _AppBarExecicesState extends State<AppBarExecices> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: AppBar(
        toolbarHeight: 130,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_left_rounded,
            size: 50,
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.title,
              style: AppFonts.poppinsw600BlackSqueeze20,
            ),
            Text(
              "Flutterando Masterclas",
              style: AppFonts.poppinsw500BlackSqueeze12,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
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
