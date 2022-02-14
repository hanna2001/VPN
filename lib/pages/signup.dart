// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:lottie/lottie.dart';

import 'package:vpn/constants/constants.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                bgOne,bgTwo      ],
              stops: [0.1,1],
              begin: Alignment.bottomCenter
                ,end: Alignment.topCenter
            )
          ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Stack(alignment: Alignment.center,
              children: [
                Column(children: [const SizedBox(height: 40,),
                  Image.asset("assets/rocket.png",height:190,),],),

                const Positioned(top:1,left: 150, child: Icon(Icons.circle,color: Colors.white,size: 10,),),
                const Positioned(top:30,left: 24,child: Icon(Icons.star,color: Colors.white,size: 15)),
                const Positioned(top:250,left: 20, child:  Icon(Icons.star,color: Colors.white,size: 30)),
                const Positioned(top:140,right: 60, child:  Icon(Icons.circle,color: Colors.white,size: 6,)),
                const Positioned(bottom:50,right: 23,child: Icon(Icons.circle,color: Colors.white,size: 14)),

              ],
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 25),
              child: Text("Come on, maximize your\n internet connection with \n us",style: styleOne,textAlign:TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 25),
              child: Text("We created a very cool VPN and can make your internet speed faster and safer",style: styleTwo,textAlign:TextAlign.center),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 25),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: btColor,elevation: 0,
                  textStyle: const TextStyle(fontSize: 20)),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text('Get Started',style: TextStyle(fontSize: 20),),
                  ),

                ),
              ),
            )

          ]),
        ),
        
        ),
      ),
    );
  }
}
