import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/widgets/app_bar_logo.dart';
import 'package:projeto_app_masterclass/shared/widgets/bottom_navigation_bar_custom.dart';
import 'package:projeto_app_masterclass/shared/widgets/card.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

final controller = HomeController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: AppBarLogo(
          title: 'Atividades',
        ),
      ),
      body: ListView.builder(
          itemCount: controller.listDataModels.length,
          itemBuilder: (context, index) {
            return CardWidget(
              info: controller.listDataModels[index],
            );
          }),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: BottomNavigationBarCustom(),
      ),
    );
  }
}
