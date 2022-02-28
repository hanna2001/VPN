import 'package:flutter/material.dart';
import 'package:vpn/pages/connect.dart';
import 'package:vpn/pages/splash.dart';
import 'package:vpn/pages/subscription.dart';



void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Subscription(),
    );
  }
}
