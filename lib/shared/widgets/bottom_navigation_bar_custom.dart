import 'package:flutter/material.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  const BottomNavigationBarCustom({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);
  final int currentIndex;
  final void Function(int) onTap;

  @override
  _BottomNavigationBarCustomState createState() =>
      _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 19.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                widget.onTap(0);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/feather_target.png",
                    color: Theme.of(context).iconTheme.color,
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Atividades",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
            VerticalDivider(
              color: Theme.of(context).dividerColor,
              width: 1,
              indent: 15,
              thickness: 1,
            ),
            GestureDetector(
              onTap: () {
                widget.onTap(1);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/awesome_github.png",
                    color: Theme.of(context).iconTheme.color,
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Repositórios",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
            VerticalDivider(
              color: Theme.of(context).dividerColor,
              width: 1,
              indent: 15,
              thickness: 1,
            ),
            GestureDetector(
              onTap: () {
                widget.onTap(2);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.person,
                      color: Theme.of(context).iconTheme.color, size: 28),
                  SizedBox(height: 7),
                  Text(
                    "Sobre o dev",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
