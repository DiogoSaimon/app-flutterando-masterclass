import 'dart:io';
import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/widgets/app_bar_logo.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RepositoriesPage extends StatefulWidget {
  const RepositoriesPage({Key? key}) : super(key: key);

  @override
  _RepositoriesPageState createState() => _RepositoriesPageState();
}

class _RepositoriesPageState extends State<RepositoriesPage> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: AppBarLogo(
          title: "Repositórios",
        ),
      ),
      body: WebView(
        initialUrl: 'https://github.com/DiogoSaimon',
      ),
    );
  }
}
