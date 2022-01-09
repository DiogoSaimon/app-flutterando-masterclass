import 'package:flutter/cupertino.dart';

class DataModels {
  final String? iconImage;
  final String? title;
  final String? subtitle;
  final int? count;
  final List<Widget>? routes;
  final Widget? page;
  DataModels({
    this.iconImage,
    this.title,
    this.subtitle,
    this.count,
    this.routes,
    this.page,
  });
}
