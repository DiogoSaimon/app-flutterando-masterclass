import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/routes/routes.dart';
import 'package:projeto_app_masterclass/shared/utils/theme_colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(navigation);
    });
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(controller);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();
    return Scaffold(
      backgroundColor: ThemeColors.darkTheme.scaffoldBackgroundColor,
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, child) => SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: FadeTransition(
            opacity: animation,
            child: Center(
              child: Image.asset("assets/images/masterclass_logo.png"),
            ),
          ),
        ),
      ),
    );
  }
}
