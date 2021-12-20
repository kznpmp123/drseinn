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
            child: Text("Dr.Seinn Gallery", style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w700,
                color: Colors.black
            )),
          ),
        ),
        body: const WebView(
          initialUrl: 'https://hisandhermyanmar-95b62f.ingress-erytho.easywp.com/hiss-and-hers-gallery',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}