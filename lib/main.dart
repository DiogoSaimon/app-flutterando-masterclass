import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/routes/routes.dart';
import 'package:projeto_app_masterclass/views/exercices_page/animation/animation_exercices_page.dart';
import 'package:projeto_app_masterclass/views/navigation_page/navigation_page.dart';
import 'shared/utils/app_colors.dart';
import 'views/splash_page/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MasterClass App',
      theme: ThemeData(
        primaryColor: AppColors.endeavour,
        scaffoldBackgroundColor: AppColors.woodSmoke,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.woodSmoke,
        ),
      ),
      initialRoute: splash,
      routes: {
        splash: (context) => SplashPage(),
        navigation: (context) => NavigationPage(),
        exercices: (context) => AnimationExercicesPage(),
      },
    );
  }
}
