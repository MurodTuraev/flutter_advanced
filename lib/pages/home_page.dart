import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_advanced/service/log.dart';
import 'package:flutter_advanced/service/utils_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Version Example"),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
            Utils.deviceParams().then((value) => {
              LogService.i(value.toString())
            });
          },
          child: Text('Get Info Device'),
        ),
      ),
    );
  }
}
