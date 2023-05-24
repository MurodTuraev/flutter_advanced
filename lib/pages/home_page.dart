import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
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
      // appBar: AppBar(
      //   title: Text("Get Version Example"),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Stack(
            children: [
              Center(child: Text("str_txt", style: TextStyle(fontSize: 25),).tr(),),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: MaterialButton(
                      color: Colors.green,
                      onPressed: (){
                        context.setLocale(const Locale('en', 'US'));
                      },
                      child: Text("str_eng", style: TextStyle(color: Colors.white),).tr(),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Expanded(
                    child: MaterialButton(
                      color: Colors.red,
                      onPressed: (){
                        context.setLocale(const Locale('kr', 'KR'));
                      },
                      child: Text("str_kr", style: TextStyle(color: Colors.white),).tr(),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Expanded(
                    child: MaterialButton(
                      color: Colors.blue,
                      onPressed: (){
                        context.setLocale(const Locale('jp', 'JP'));
                      },
                      child: Text("str_jp", style: TextStyle(color: Colors.white),).tr(),
                    ),
                  ),

                ],
              )
            ],
          ),
        )
      ),
    );
  }
}
