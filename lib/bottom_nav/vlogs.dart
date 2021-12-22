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
            child: Text("𝐃𝐫 𝐒𝐞𝐢𝐧𝐧 𝐊𝐧𝐨𝐰𝐥𝐞𝐝𝐠𝐞 𝐕𝐥𝐨𝐠𝐬", style: TextStyle(fontSize: 18.0,
                letterSpacing: 1.0,
                color: Colors.green
            ),
            ),
          ),
        ),
        body: const WebView(
          initialUrl: 'https://drseinn-95b62f.ingress-bonde.easywp.com/vlog',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}