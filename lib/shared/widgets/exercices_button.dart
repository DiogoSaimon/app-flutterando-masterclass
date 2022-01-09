import 'package:flutter/material.dart';

class ExercicesButton extends StatelessWidget {
  const ExercicesButton({
    Key? key,
    required this.count,
    required this.onPressed,
  }) : super(key: key);

  final int count;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 16,
              child: Text(
                "${count + 1}",
                style: Theme.of(context).primaryTextTheme.subtitle1,
              ),
            ),
            Text(
              "Exercícios 01",
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
            primary: Theme.of(context).cardColor,
            fixedSize: Size(MediaQuery.of(context).size.width, 64),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            )),
      ),
    );
  }
}
