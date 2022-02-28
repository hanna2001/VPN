import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:vpn/constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
   bool  onPressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.topCenter,
              colors: [Color(0xff002e99), Color(0xff6699cc)])),
      child: Scaffold(
          appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,centerTitle: true,
            leading: IconButton(icon: Icon(Icons.menu),onPressed: (){},),
            title: Text("Welloy VPN"),
            actions: [IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.crown,color: Colors.amber,))],
          ),
          backgroundColor: Colors.transparent,
          body: Stack(alignment: Alignment.topCenter,
            children: [
              Container(height: MediaQuery.of(context).size.height*0.7,
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
padding: EdgeInsets.all(10),margin: EdgeInsets.all(16),
                        decoration:BoxDecoration(
                            borderRadius:BorderRadius.circular(25),border:
                        Border.all(color: Colors.white.withOpacity(0.3) ) ),

                        child: Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [
                        Column(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
                          FaIcon(FontAwesomeIcons.umbrella,color: Colors.white,size: 20,),
                          Text("Protect your \n privacy",textAlign:TextAlign.center ,style: TextStyle(fontSize:9,color: Colors.white),)
                        ],),
                        Column(children: [
                          FaIcon(FontAwesomeIcons.globe,color: Colors.white,size: 20),
                          Text("Accesss any \n Content",textAlign:TextAlign.center,style: TextStyle(fontSize:9,color: Colors.white),)
                        ],),
                        Column(children: [
                          FaIcon(FontAwesomeIcons.accessibleIcon,color: Colors.white,size: 20),
                          Text("Accelerate \n Network",textAlign:TextAlign.center,style: TextStyle(fontSize:9,color: Colors.white),)
                        ],)
                      ],),),
                      GestureDetector(onTap:(){
                        setState(() {
                          onPressed=true;
                        });
                      },
                        child: Container(


                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(boxShadow:  [BoxShadow(
                            color: onPressed?Colors.green.withOpacity(0.7):Colors.grey.withOpacity(0.4),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0,3)
                        )],shape: BoxShape.circle,color: bgOne),
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Icon(Icons.power_settings_new_rounded,size: 100,color: onPressed?Colors.green :Colors.white,),
                        ),


                ),
                      ),

                      onPressed?CircularProgressIndicator(
                        strokeWidth: 2,color: Colors.white,):Text("Click to Connect",style:TextStyle(color: Colors.white))
                    ],
                  ),),
            DraggableScrollableSheet(

                initialChildSize:0.2,
                minChildSize: 0.2,
                maxChildSize: 0.8
                ,builder: (BuildContext context,myScrollController){
                  return ClipRRect(borderRadius: BorderRadius.vertical(top:Radius.circular(30)),
                    child: Container(color: Colors.white,
                      child: ListView(
                        controller: myScrollController,
                        children: [
Center(child: FaIcon(FontAwesomeIcons.minus,)),
                        ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),title: Text("country name 1"),
                        trailing: Icon(Icons.wifi_rounded),),
                          ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),title: Text("country name 2"),
                            trailing: Icon(Icons.wifi_rounded),),
                          ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),title: Text("country name 3"),
                            trailing: Icon(Icons.wifi_rounded),),
                          ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),title: Text("country name 4"),
                            trailing: Icon(Icons.wifi_rounded),),
                          ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),title: Text("country name 5"),
                            trailing: Icon(Icons.wifi_rounded),),
                          ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),title: Text("country name 6"),
                            trailing: Icon(Icons.wifi_rounded),),
                          ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),title: Text("country name 7"),
                            trailing: Icon(Icons.wifi_rounded),),
                          ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),title: Text("country name 8"),
                            trailing: Icon(Icons.wifi_rounded),),
                          ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),title: Text("country name 9"),
                            trailing: Icon(Icons.wifi_rounded),),
                          ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),title: Text("country name 10"),
                            trailing: Icon(Icons.wifi_rounded),),
                          ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),title: Text("country name 11"),
                            trailing: Icon(Icons.wifi_rounded),),

                        ],
                      ),
                    ),
                  );

            })
            ],
          )



      ));


  }
}
