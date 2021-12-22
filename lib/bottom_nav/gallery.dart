import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Gallery extends StatefulWidget {

  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Center(
            child: Text("𝐑𝐞𝐬𝐮𝐥𝐭𝐬", style: TextStyle(fontSize: 18.0,
                letterSpacing: 1.0,
                color: Colors.green
            ),),
          ),
        ),
        body: const WebView(
          initialUrl: 'https://drseinn-95b62f.ingress-bonde.easywp.com/results',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}