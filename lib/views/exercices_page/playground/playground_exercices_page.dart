import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/widgets/app_bar_exercices.dart';

class PlaygroundExercicesPage extends StatefulWidget {
  const PlaygroundExercicesPage({Key? key}) : super(key: key);

  @override
  _PlaygroundExercicesPageState createState() =>
      _PlaygroundExercicesPageState();
}

class _PlaygroundExercicesPageState extends State<PlaygroundExercicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: AppBarExecices(
          title: "Playground",
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Sem Atividades no Momento",
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
