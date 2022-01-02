import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/widgets/app_bar_exercices.dart';
import 'package:projeto_app_masterclass/shared/widgets/exercices_button.dart';

class AnimationExercicesPage extends StatefulWidget {
  const AnimationExercicesPage({Key? key}) : super(key: key);

  @override
  _AnimationExercicesPageState createState() => _AnimationExercicesPageState();
}

class _AnimationExercicesPageState extends State<AnimationExercicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: AppBarExecices(
          title: "Animações",
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
          itemCount: 4,
          padding: EdgeInsets.only(left: 12.0, right: 12.0),
          itemBuilder: (context, index) {
            return ExercicesButton(
              count: index,
            );
          }),
    );
  }
}
