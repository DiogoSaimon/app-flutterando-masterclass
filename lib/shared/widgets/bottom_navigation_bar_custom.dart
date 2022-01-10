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
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 1),
                  child: widget.currentIndex == 0
                      ? Container(
                          width: 56,
                          height: 32.2,
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(16),
                          ),
                        )
                      : null,
                ),
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
              ],
            ),
            VerticalDivider(
              color: Theme.of(context).dividerColor,
              width: 1,
              indent: 15,
              thickness: 1,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 11.0, left: 5),
                  child: widget.currentIndex == 1
                      ? Container(
                          width: 56,
                          height: 32.2,
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(16),
                          ),
                        )
                      : null,
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
              ],
            ),
            VerticalDivider(
              color: Theme.of(context).dividerColor,
              width: 1,
              indent: 15,
              thickness: 1,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 4),
                  child: widget.currentIndex == 2
                      ? Container(
                          width: 55,
                          height: 32.2,
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(16),
                          ),
                        )
                      : null,
                ),
                GestureDetector(
                  onTap: () {
                    widget.onTap(2);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.person,
                          color: Theme.of(context).iconTheme.color, size: 30),
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
          ],
        ),
      ),
    );
  }
}
