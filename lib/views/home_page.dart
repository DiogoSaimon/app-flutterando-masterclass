import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/widgets/app_bar_custom.dart';
import 'package:projeto_app_masterclass/shared/widgets/bottom_navigation_bar_custom.dart';
import 'package:projeto_app_masterclass/shared/widgets/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: AppBarCustom(
          subtitle: 'Flutterando Masterclass',
          title: 'Atividades',
        ),
      ),
      body: CardWidget(),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: BottomNavigationBarCustom(),
      ),
    );
  }
}
