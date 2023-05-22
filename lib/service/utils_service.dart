import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils{
  static showToast(String msg){
    Fluttertoast.showToast(msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.grey,
    textColor: Colors.white,
    timeInSecForIosWeb: 1,
    fontSize: 16
    );
  }

  // static Future<Map<String, String>> deviceParams() async{
  //   Map<String,String> params = {};
  //   var deviceInfo = DeviceInfoPlugin();
  // }

  static Future<void> makePhoneCall(String phoneNumber) async{
    final Uri launchUri = Uri(
      scheme: "tel",
      path: phoneNumber
    );
    await launchUrl(launchUri);
  }
}