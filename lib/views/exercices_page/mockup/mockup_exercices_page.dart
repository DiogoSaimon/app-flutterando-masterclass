import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/routes/routes.dart';
import 'package:projeto_app_masterclass/shared/widgets/app_bar_exercices.dart';
import 'package:projeto_app_masterclass/shared/widgets/exercices_button.dart';

class MockupExercicesPage extends StatefulWidget {
  const MockupExercicesPage({Key? key}) : super(key: key);

  @override
  _MockupExercicesPageState createState() => _MockupExercicesPageState();
}

class _MockupExercicesPageState extends State<MockupExercicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: AppBarExecices(
          title: "Leitura de Mockup",
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 12.0, right: 12.0),
        children: [
          ExercicesButton(
            count: 0,
            onPressed: () {
              Navigator.of(context).pushNamed(mockup1);
            },
          ),
          ExercicesButton(
            count: 1,
            onPressed: () {
              Navigator.of(context).pushNamed(mockupTinder);
            },
          ),
        ],
      ),
    );
  }
}
