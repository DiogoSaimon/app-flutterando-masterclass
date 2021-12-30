import 'package:flutter/material.dart';
import 'shared/utils/app_colors.dart';
import 'views/home_page/home_page.dart';

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
      home: HomePage(),
    );
  }
}
