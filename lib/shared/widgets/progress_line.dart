import 'package:flutter/material.dart';

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    required this.title,
    required this.porcentage,
  }) : super(key: key);

  final String title;
  final double porcentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).primaryTextTheme.caption,
          ),
          Stack(
            children: [
              Container(
                width: 255,
                height: 9,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: 255 * porcentage,
                  height: 9,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
