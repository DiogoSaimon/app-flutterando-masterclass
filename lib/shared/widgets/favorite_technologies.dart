import 'package:flutter/material.dart';
import 'card_technologies.dart';

class FavoriteTechnologies extends StatefulWidget {
  const FavoriteTechnologies({Key? key}) : super(key: key);

  @override
  _FavoriteTechnologiesState createState() => _FavoriteTechnologiesState();
}

class _FavoriteTechnologiesState extends State<FavoriteTechnologies> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tecnologias Favoritas",
            style: Theme.of(context).primaryTextTheme.bodyText1,
          ),
          SizedBox(height: 12),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 12,
              itemBuilder: (context, index) => CardTechnologies(),
            ),
          ),
        ],
      ),
    );
  }
}
