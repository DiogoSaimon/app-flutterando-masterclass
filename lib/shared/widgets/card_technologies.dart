import 'package:flutter/material.dart';

class CardTechnologies extends StatefulWidget {
  const CardTechnologies({Key? key}) : super(key: key);

  @override
  _CardTechnologiesState createState() => _CardTechnologiesState();
}

class _CardTechnologiesState extends State<CardTechnologies> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: SizedBox(
        width: 94,
        height: MediaQuery.of(context).size.height,
        child: Card(
          color: Theme.of(context).cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/simple_flutter.png",
                color: Theme.of(context).iconTheme.color,
              ),
              SizedBox(height: 8.6),
              Text(
                "Flutter",
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
