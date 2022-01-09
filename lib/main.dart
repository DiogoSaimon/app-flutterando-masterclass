import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/routes/routes.dart';
import 'package:projeto_app_masterclass/views/exercices_page/animations/animation_exercices_page.dart';
import 'package:projeto_app_masterclass/views/navigation_page/navigation_page.dart';
import 'package:provider/provider.dart';
import 'shared/utils/theme_colors.dart';
import 'shared/utils/theme_controller.dart';
import 'views/splash_page/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeController())
      ],
      child: Consumer<ThemeController>(
        builder: (context, store, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'MasterClass App',
            themeMode: store.themeMode,
            theme: ThemeColors.lightTheme,
            darkTheme: ThemeColors.darkTheme,
            initialRoute: splash,
            routes: {
              splash: (context) => SplashPage(),
              navigation: (context) => NavigationPage(),
              animations: (context) => AnimationExercicesPage(),
            },
          );
        },
      ),
    );
  }
}
