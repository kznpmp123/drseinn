import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Vlogs extends StatefulWidget {

  @override
  _VlogsState createState() => _VlogsState();
}

class _VlogsState extends State<Vlogs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Center(
            child: Text("Dr.Seinn Knowledge Vlogs", style: TextStyle(fontWeight: FontWeight.w700,
                fontSize: 16.0,
                color: Colors.black
            )),
          ),
        ),
        body: const WebView(
          initialUrl: 'https://hisandhermyanmar-95b62f.ingress-erytho.easywp.com/hiss-and-hers-knowledge-vlogs',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}