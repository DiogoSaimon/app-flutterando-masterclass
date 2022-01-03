import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/widgets/app_bar_exercices.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SourceCodePage extends StatefulWidget {
  const SourceCodePage({Key? key}) : super(key: key);

  @override
  _SourceCodePageState createState() => _SourceCodePageState();
}

class _SourceCodePageState extends State<SourceCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBarExecices(
          onPressed: () => Navigator.pop(context),
          title: 'Código Fonte',
        ),
      ),
      body: Hero(
        tag: 'https://github.com/DiogoSaimon/desafio-transicao-botoes',
        child: WebView(
          initialUrl: 'https://github.com/DiogoSaimon/desafio-transicao-botoes',
        ),
      ),
    );
  }
}
