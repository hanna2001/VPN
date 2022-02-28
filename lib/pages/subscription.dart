import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vpn/constants/constants.dart';


class Subscription extends StatefulWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          "Choose A Plan",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Upgrade Your Plan",
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.start,
                ),
              ),SizedBox(height: 5),
              Container(alignment: Alignment.topLeft,
                child: Text(
                    "Get the premium features and get the best package, unlimited acces to the app"),
              ),SizedBox(height: 5),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.only(
                      topRight: const Radius.circular(40.0),
                    ),
                    gradient: LinearGradient(
                      colors: [bgOne, bgTwo],
                      stops: [0.2, 1],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 1,
                          left: 150,
                          child: Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: 10,
                          )),
                      Positioned(
                          top: 30,
                          left: 24,
                          child: Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 25,
                          )),
                      Positioned(
                          bottom: 30,
                          left: 44,
                          child: Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: 15,
                          )),
                      Positioned(
                          bottom: 20,
                          right: 60,
                          child: Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 19,
                          )),
                      Positioned(
                          top: 10,
                          right: 11,
                          child: Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 15,
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 50, 0, 50),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Premium Pro",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 23,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                        "Get the premium features\nand get the best package",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white))
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "\$ 32",
                                      style: TextStyle(
                                          fontSize: 27,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text("/Month",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text("Features you get",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.start)),
              SizedBox(height: 150,
                child: ListView.builder(

                    scrollDirection: Axis.horizontal,padding: const EdgeInsets.all(8),
                  itemCount: titles.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 250,
                      decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(5)),


                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [Icon(icons[index],size: 50,),
                            Text(titles[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text(subtitles[index],textAlign: TextAlign.center,style:TextStyle(
                                fontSize: 12, color: Colors.black)),

                          ],
                        ),
                      ),
                    );
                  }
              ) ,

                ),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: btColor, elevation: 1),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Subscribe Now", style: TextStyle(fontSize: 20)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
