import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/widgets/bottom_navigation_bar_custom.dart';
import 'package:projeto_app_masterclass/views/about_dev_page/about_dev_page.dart';
import 'package:projeto_app_masterclass/views/activities_page/activities_page.dart';
import 'package:projeto_app_masterclass/views/repositories_page/repositories_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  late PageController controller;
  int indexPage = 0;

  setInitialPage(pagina) {
    setState(() {
      indexPage = pagina;
    });
  }

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: indexPage);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: const [
          ActivitiesPage(),
          RepositoriesPage(),
          AboutDevPage(),
        ],
        onPageChanged: setInitialPage,
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: BottomNavigationBarCustom(
          currentIndex: indexPage,
          onTap: (int indexPage) {
            controller.animateToPage(
              indexPage,
              duration: Duration(milliseconds: 400),
              curve: Curves.ease,
            );
          },
        ),
      ),
    );
  }
}
