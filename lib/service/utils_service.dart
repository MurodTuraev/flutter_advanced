import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:device_info/device_info.dart';
import 'dart:io';

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

  static Future<Map<String, String>> deviceParams() async{
    Map<String,String> params = {};
    var deviceInfo = DeviceInfoPlugin();
    if(Platform.isIOS){
      var iosDeviceInfo = await deviceInfo.iosInfo;
      params.addAll({
        'deviceID': iosDeviceInfo.identifierForVendor,
        'deviceName': iosDeviceInfo.name,
        'deviceModel': iosDeviceInfo.model
      });
    }else{
      var andDeviceInfo = await deviceInfo.androidInfo;
      params.addAll({
        'deviceID': andDeviceInfo.androidId,
        'deviceName': andDeviceInfo.brand,
        'deviceModel': andDeviceInfo.model
      });
    }
    return params;
  }

  static Future<void> makePhoneCall(String phoneNumber) async{
    final Uri launchUri = Uri(
      scheme: "tel",
      path: phoneNumber
    );
    await launchUrl(launchUri);
  }
}