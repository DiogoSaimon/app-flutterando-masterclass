import 'package:flutter/material.dart';
import 'custom_expansiontile.dart';

class ExpansionTileControlledAnimationsPage extends StatefulWidget {
  const ExpansionTileControlledAnimationsPage({Key? key}) : super(key: key);

  @override
  _ExpansionTileControlledAnimationsPageState createState() =>
      _ExpansionTileControlledAnimationsPageState();
}

class _ExpansionTileControlledAnimationsPageState
    extends State<ExpansionTileControlledAnimationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Animação Controlada - ExpansionTile",
        ),
      ),
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return CustomExpansionTile(
              title: "Custom ExpansionTile $index",
              children: const [
                FlutterLogo(
                  size: 50,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.",
                  ),
                ),
              ],
            );
          }),
    );
  }
}
