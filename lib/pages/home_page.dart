import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        title: Text("Awesome dialog"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [
              AnimatedButton(
                text: "Ogohlantirivchi dailog",
                pressEvent: (){
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.warning,
                    animType: AnimType.topSlide,
                    showCloseIcon: true,
                    title: "Ogohlatiruvchi",
                    desc: "Qoshimcha yozuv",
                    btnCancelOnPress: (){},
                    btnOkOnPress: (){}
                  ).show();
                },
                color: Colors.orange,
              ),
              SizedBox(height: 10,),
              AnimatedButton(
                text: "Stop dailog",
                pressEvent: (){
                  AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.topSlide,
                      showCloseIcon: true,
                      title: "Xatolik",
                      desc: "Qoshimcha yozuv",
                      btnCancelOnPress: (){},
                      btnOkOnPress: (){}
                  ).show();
                },
                color: Colors.red,
              ),
              SizedBox(height: 10,),
              AnimatedButton(
                text: "Success dailog",
                pressEvent: (){
                  AwesomeDialog(
                      context: context,
                      dialogType: DialogType.success,
                      animType: AnimType.topSlide,
                      showCloseIcon: true,
                      title: "Muvafaqqiyatli",
                      desc: "Qoshimcha yozuv",
                      btnCancelOnPress: (){},
                      btnOkOnPress: (){}
                  ).show();
                },
                color: Colors.green,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

