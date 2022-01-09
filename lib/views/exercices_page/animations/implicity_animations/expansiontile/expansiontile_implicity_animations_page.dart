import 'package:flutter/material.dart';

import 'custom_expansiontile.dart';

class ExpansionTileImplicityAnimationsPage extends StatefulWidget {
  const ExpansionTileImplicityAnimationsPage({Key? key}) : super(key: key);

  @override
  State<ExpansionTileImplicityAnimationsPage> createState() =>
      _ExpansionTileImplicityAnimationsPageState();
}

class _ExpansionTileImplicityAnimationsPageState
    extends State<ExpansionTileImplicityAnimationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Desafio ExpansionTile"),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return CustomExpansionTileWidget(
            title: "Meu Tile $index",
            children: const [
              FlutterLogo(
                size: 40.0,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.",
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
