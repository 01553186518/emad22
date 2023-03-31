import 'package:flutter/material.dart';
import 'package:untitled17/Data/test-prodect/test%20prodect1.dart';
import 'package:untitled17/homepage/Aeat_App/info_screen.dart';
import 'homepage/Home-bage.dart';
class MYproject extends StatelessWidget {
  const MYproject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "food_delevre",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.cyan
      ),
      routes: {
        "/":(context)=>const Homepage(),
        "CartPage":(context)=>const Info(),
        "ItemPage":(context)=>const Itempage(),
      },
    );
  }
}



