import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:projeto_app_masterclass/models/data_models.dart';
import 'package:projeto_app_masterclass/views/activities_page/activities_controller.dart';

class CardActivities extends StatefulWidget {
  final DataModels info;
  final VoidCallback onPressed;

  const CardActivities({
    Key? key,
    required this.info,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<CardActivities> createState() => _CardActivitiesState();
}

class _CardActivitiesState extends State<CardActivities> {
  final controller = HomeController();
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0, right: 14.0, bottom: 8.0),
      child: SizedBox(
        height: 220,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          color: Theme.of(context).cardColor,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 12, right: 13),
                  child: CircleAvatar(
                    child: Image.asset(
                      widget.info.iconImage!,
                      alignment: Alignment.center,
                      color: Theme.of(context).cardColor,
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                    radius: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 68),
                child: Text(
                  widget.info.title!,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 11, top: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Exercícios:",
                        style: Theme.of(context).primaryTextTheme.caption,
                      ),
                      SizedBox(width: 10),
                      Text(
                        widget.info.count.toString(),
                        style: Theme.of(context).textTheme.caption,
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.5),
                  child: Text(
                    widget.info.subtitle!,
                    style: Theme.of(context).primaryTextTheme.subtitle2,
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 17, left: 14.56),
                  child: SizedBox(
                    width: 170,
                    child: InkWell(
                      onTap: () {
                        WebView(
                          initialUrl:
                              'https://github.com/DiogoSaimon/desafio-transicao-botoes',
                        );
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/awesome_github.png",
                            color: Theme.of(context).iconTheme.color,
                          ),
                          SizedBox(width: 4.36),
                          Text(
                            "Acessar código fonte",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 14.56, bottom: 9.5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        fixedSize: Size(119, 34.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    onPressed: widget.onPressed,
                    child: Text(
                      "Ver mais",
                      style: Theme.of(context).primaryTextTheme.button,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
