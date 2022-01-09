import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/widgets/app_bar_logo.dart';
import 'package:projeto_app_masterclass/shared/widgets/card_activities.dart';
import 'activities_controller.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({
    Key? key,
  }) : super(key: key);

  @override
  _ActivitiesPageState createState() => _ActivitiesPageState();
}

final controller = HomeController();

class _ActivitiesPageState extends State<ActivitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: AppBarLogo(
          title: 'Atividades',
        ),
      ),
      body: ListView.builder(
          itemCount: controller.listDataModels.length,
          itemBuilder: (context, index) {
            return CardActivities(
              info: controller.listDataModels[index],
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                          controller.listDataModels[index].page!),
                );
              },
            );
          }),
    );
  }
}
