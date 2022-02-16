// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          "Welloy VPN".text.xl3.make().centered().px(6)
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: size.height*.03,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black),left: BorderSide(color: Colors.black),right:BorderSide(color: Colors.black),top: BorderSide(color: Colors.black)),
                borderRadius: BorderRadius.all(Radius.circular(50))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "Server :".text.xl2.make(),
                ],
              ),
            ).px(40),
          )
        ],
      ),
      drawer: const Drawer(),
    );
  }
}