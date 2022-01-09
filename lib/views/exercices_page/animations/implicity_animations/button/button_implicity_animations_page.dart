import 'package:flutter/material.dart';

class ButtonImplicityAnimationsPage extends StatefulWidget {
  const ButtonImplicityAnimationsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ButtonImplicityAnimationsPage> createState() =>
      _ButtonImplicityAnimationsPageState();
}

class _ButtonImplicityAnimationsPageState
    extends State<ButtonImplicityAnimationsPage> {
  bool isClicked = false;
  final duration = const Duration(seconds: 1);

  String textRetangle = "Pastel";
  String textCircle = "Pìzza";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Desafio Transição dos Botôes"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GestureDetector(
          onTap: () {
            setState(() {
              isClicked = !isClicked;
            });
          },
          child: AnimatedAlign(
            alignment: isClicked ? Alignment.topCenter : Alignment.bottomRight,
            duration: duration,
            curve: Curves.linear,
            child: AnimatedContainer(
              child: isClicked
                  ? Center(
                      child: Text(
                        textRetangle,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Center(
                      child: Text(
                        textCircle,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
              duration: duration,
              height: 50,
              width: isClicked ? 100 : 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: isClicked ? null : BorderRadius.circular(24),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
