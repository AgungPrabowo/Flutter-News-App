import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewNews extends StatefulWidget {
  final String url;
  WebViewNews(this.url);
  @override
  _WebViewNews createState() => _WebViewNews();
}

class _WebViewNews extends State<WebViewNews> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(""),
        ),
        child: Container(
          padding: EdgeInsets.only(top: 80.0, left: 10.0, right: 10.0),
          child: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: widget.url,
          ),
        ),
      );
  }
}
