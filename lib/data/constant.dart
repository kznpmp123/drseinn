
import 'package:flutter/material.dart';

final String appName = "Dr.Seinn";
// production server http://13.213.196.157:8000 2021-10-08 Updated
// development server http://192.168.1.2:8000
// http://127.0.0.1:8000/
//final String backendApiServer = 'http://13.213.196.157:8000';
final String backendApiServer = 'http://3.7.94.137:8000';
final String apiVersion = backendApiServer+'';
final String loginEndpoint = apiVersion+'/api/token/';
final String courseEndpoint = apiVersion+'/courses/';
final String subscriptionEndpoint = apiVersion+'/subscriptions/';

final String appIconAsset = "assets/images/app_icon.png";
final String appIconUrl = "https://kzn.fra1.cdn.digitaloceanspaces.com/Dr_Seinn/app_icon.png";

final Color tileColor = Colors.yellow;
final Color iconColor = Colors.indigo[900];

final String fbProtocolUrl = "fb://page/101067308353231";
final String fallbackUrl = "https://www.facebook.com/DrSeinn";


final List<String> introSliderImages = [
  "assets/images/slider/1.png",
  "assets/images/slider/2.png",
  "assets/images/slider/3.png",
  "assets/images/slider/4.png"
];
